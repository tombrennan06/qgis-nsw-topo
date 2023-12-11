def addArcGisLayer (url, layer, crs, params):
# PARAMETERS
# url (str): URL of the FeatureServer or MapServer
# layer (str): ArcGIS name of the layer
# crs (QgsCoordinateReferenceSystem): spatial reference for the output layer
# params - a dict which can contain any of:
#   where (str): a WHERE clause for the query filter - default is none
#   extent (dict): spatial filter - in {"xmin":<xmin>,"ymin":<ymin>,"xmax":<xmax>,
#     "ymax":<ymax>} format - default is none
#   filterCrs (str): spatial reference for the spatial filter (in WKT format) - 
#     default is none (if extent is specfied, the extent is assumed to be in the SR 
#     of the ArcGIS source layer)
#   outputFields (str or list) - comma-separated string of output fields - default is "*" (ALL)
#   outputCodeValueFields (str or list) - comma-separated string of output fields for which 
#     code/value mapping translation will be applied - default is none
#   outputFormat (str) - output format - defaults to "json" (not sure if anything else will actually work for PyQGIS)
# NOTE: no checking is carried out on the parameters passed
#
# RETURNS
# outfile - location of the output file (GeoPackage)

# TODO:
#   - check whether outputFields/outputCodeValueFields should be str or list
#   - get Type field name from alias rather than lowercase - DONE?
#   - solve issue with MultiGeometries being inserted into non multi layer (might be tricky)
#   - add ability to pass empty outputFields - currently the function fails if you pass an empty list or string. If you don't pass outputFields at all, you get all (*)
#   - fix Scenario 3 if the Type field is not selected(?) - returns NULL?
#   - investigate MaxRecordCount and see if paging is required

    from collections import defaultdict
    import urllib.request
    import json
    import subprocess
    
    arcGisParams = {
        "where": "1=1",
        "outfields":"*",
        "f":"json"
    }
    
    # Set defaults
    if 'where' in params:
        arcGisParams['where'] = params['where']
    
    if 'extent' in params:
        arcGisParams['geometry'] = params['extent']
    
    if 'filterCrs' in params:
        arcGisParams['inSR'] = {"wkt": params['filterCrs'] }
    
    if 'outputFields' in params:
        arcGisParams['outfields'] = params['outputFields']
    
    if 'outputFormat' in params:
        arcGisParams['f'] = params['outputFormat']
    
    outfile = QgsProcessingUtils.generateTempFilename('output.gpkg')
    
    # Get layers from service
    layersUrl = url + "/layers?f=pjson"
    
    # Download the layers json
    with urllib.request.urlopen(layersUrl) as u:
        data = json.loads(u.read().decode())
    
    layersArcGis = data['layers']
    
    availableLayers = dict()
    for l in layersArcGis:
        availableLayers[l['name']] = l['id']
    
    layerUrl = url + '/' + str(availableLayers[layer])
    
    # Build query string component of URL
    queryStr='?'
    for key, value in arcGisParams.items():
        queryStr += key
        queryStr += '='
        if isinstance(value,str):
             queryStr += urllib.parse.quote(value)
        if isinstance(value,list):
             queryStr += urllib.parse.quote(','.join(value))
        if isinstance(value,dict):
             queryStr += urllib.parse.quote(json.dumps(value))
        queryStr += '&'
    
    queryStr = queryStr.rstrip('&')
    
    # Extract data from ArcGIS Server
    cmd = 'ogr2ogr -f GPKG '+outfile+' "'+layerUrl+'/query'+queryStr+'" -t_srs '+crs.authid()
    #print(cmd)
    QgsMessageLog.logMessage("Extracting data for layer: "+ layer+" (URL: "+layerUrl+")", level=Qgis.Info)
    QgsMessageLog.logMessage("Command string: "+cmd, level=Qgis.Info)
    # Suppress Command Window
    #subprocess.run (cmd)
    si = subprocess.STARTUPINFO()
    si.dwFlags |= subprocess.STARTF_USESHOWWINDOW
    subprocess.run(cmd, startupinfo=si)
    
    # Replace code value fields if required.
    # There seem to be 3 different scenarios in ArcGIS with coded value domains:
    # 1. Basic - applies to all types
    # 2. Type/SubType IDs - not actually coded values, but types/subtypes operate much the same way
    # 3. Types with field-specific coded values - this is where there is a type/subtype field, and the coded
    #    values differ for each type/subtype. Unclear what the difference between types/subtypes is...
    
    # Should generally review the use of QgsVectorLayer vs QgsVectorDataProvider
    if 'outputCodeValueFields' in params:
        layerJsonUrl = url + "/" + str(availableLayers[layer]) + "?f=pjson"
        with urllib.request.urlopen(layerJsonUrl) as u:
            dataLayer = json.loads(u.read().decode())
        
        vl = QgsVectorLayer(outfile, 'temp', 'ogr')
        pr = vl.dataProvider()
        featureMapping = defaultdict(dict) # from collections
        renameFields = [] # could also be a list of dicts? Might need to store both old/new names+indexes
        
        # Fields not dependent on a Type Field
        fields = dataLayer['fields']
        aliasToName = defaultdict(dict)
        for f in fields:
            if f['name'] in params['outputCodeValueFields']:
                if f['domain'] is not None and f['domain']['type'] == 'codedValue': # domain always exists, but can be NULL
                    mapping = {}
                    for cv in f['domain']['codedValues']:
                        mapping[cv['code']] = cv['name']
                    tempFieldName = f['name'] + '_-%'
                    pr.addAttributes([QgsField(tempFieldName, QVariant.String)])
                    tempFieldIndex = pr.fieldNameIndex(tempFieldName)
                    renameFields.append(f['name'])
                    for ft in vl.getFeatures():
                        featureMapping[ft.id()][tempFieldIndex] = mapping[ft[f['name']]]
            aliasToName[f['alias']] = f['name']
        
        # Fields dependent on a Type Field
        if 'types' in dataLayer:
            typeFieldCreated = False
            typeFieldName = aliasToName[dataLayer['typeIdField']] #dataLayer['typeIdField'].lower() 
            if typeFieldName in params['outputCodeValueFields']:
                # Create new type field
                vl = QgsVectorLayer(outfile, 'temp', 'ogr') 
                pr = vl.dataProvider()
                tempTypeFieldName = typeFieldName + '_-%'
                pr.addAttributes([QgsField(tempTypeFieldName, QVariant.String)])
                tempTypeFieldIndex = pr.fieldNameIndex(tempTypeFieldName)
                renameFields.append(typeFieldName)
                typeMapping = {}
                typeFieldCreated = True
            for f in dataLayer['types']:
                if 'domains' in f:
                    for fieldName in f['domains']:
                        if f['domains'][fieldName]['type'] == 'codedValue' and fieldName in params['outputCodeValueFields']:
                            mapping = {}
                            for cv in f['domains'][fieldName]['codedValues']:
                                mapping[cv['code']] = cv['name']
                            tempFieldName = fieldName + '_-%'
                            if tempFieldName not in pr.fieldNameMap():
                                pr.addAttributes([QgsField(tempFieldName, QVariant.String)])
                                renameFields.append(fieldName)
                            tempFieldIndex = pr.fieldNameIndex(tempFieldName)
                            for ft in vl.getFeatures(QgsFeatureRequest().setFilterExpression('"'+typeFieldName+'"='+str(f['id']))):
                                featureMapping[ft.id()][tempFieldIndex] = mapping[ft[fieldName]]
                if typeFieldCreated:
                    typeMapping[f['id']] = f['name']
            if typeFieldCreated:
                for ft in vl.getFeatures():
                    featureMapping[ft.id()][tempTypeFieldIndex] = typeMapping[ft[typeFieldName]]
        
        pr.changeAttributeValues(featureMapping)
        fieldMap = pr.fieldNameMap()
        
        # Remove original fields (with code values)
        pr.deleteAttributes([value for (key,value) in fieldMap.items() if key in set(renameFields)])
        fieldMap = pr.fieldNameMap() # fieldMap has changed due to deletion
        pr.renameAttributes({v:k.replace("_-%","") for (k,v) in fieldMap.items() if k.endswith("_-%")})#=> needs to be a dict
        vl.updateFields() # may need to call this earlier, multiple times?? Or not at all?
    
    return outfile


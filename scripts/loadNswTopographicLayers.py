# update generalParams to match your file locations and layer extent name
generalParams = {
    # location of the style folder, likely called 'style'
    'styleFolder': 'E:/geodata/style/nsw_spatial/',
    # name of the extent polygon layer in QGIS which will be used as the area in which to download spatial data
    'extentLayerName': 'extent',
}

layerParams = [
{
    "layerName": "plantation",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Features_of_Interest_Category/MapServer",
    "layer": "GeneralCulturalArea",
    "where": "(classsubtype = 6 AND generalculturaltype IN (0,1,2,3,4))",
    "outputFields":["classsubtype","generalculturaltype"],
    "outputCodeValueFields": ["classsubtype","generalculturaltype"],
},
{
    "layerName": "urbanArea",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Features_of_Interest_Category/MapServer",
    "layer": "GeneralCulturalArea",
    "where": "classsubtype = 7",
    "outputFields":["classsubtype"],
    "outputCodeValueFields": ["classsubtype"],
},
{
    "layerName": "contourBase",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Elevation_and_Depth_Theme/MapServer",
    "layer": "Contour",
    "outputFields":["classsubtype","elevation","relevance","verticalaccuracy"],
    "outputCodeValueFields": ["classsubtype"],
},
{
    "layerName": "cadastre",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Land_Parcel_Property_Theme/MapServer",
    "layer": "Lot",
    "where": "classsubtype = 1",
    "outputFields":["classsubtype"],
    "outputCodeValueFields": ["classsubtype"],
},
{
    "layerName": "hydroArea",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Water_Theme/MapServer",
    "layer": "HydroArea",
    "outputFields":["hydroname","classsubtype","perenniality"],
    "outputCodeValueFields": ["classsubtype","perenniality"],
},
{
    "layerName": "landformLine",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Physiography_Category/MapServer",
    "layer": "DLSLine",
    "outputFields":["generalname","classsubtype"], 
    "outputCodeValueFields": ["classsubtype"],
},
{
    "layerName": "landformPoint",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Physiography_Category/MapServer",
    "layer": "DLSPoint",
    "outputFields":["generalname","classsubtype"], 
    "outputCodeValueFields": ["classsubtype"],
},
{
    "layerName": "fuzzyExtentWaterArea",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Water_Theme/MapServer",
    "layer": "FuzzyExtentWaterArea",
    "outputFields":["hydroname","classsubtype"],
    "outputCodeValueFields": ["classsubtype"],
},
{
    "layerName": "landformArea",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Physiography_Category/MapServer",
    "layer": "DLSArea",
    "outputFields":["generalname","classsubtype"],
    "outputCodeValueFields": ["classsubtype"],
},
{
    "layerName": "culturalArea",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Features_of_Interest_Category/MapServer",
    "layer": "GeneralCulturalArea",
    "where": "classsubtype IN (9,10)",
    "outputFields":["generalname","classsubtype","generalculturaltype"],
    "outputCodeValueFields": ["classsubtype","generalculturaltype"],
},
{
    "layerName": "hydroLine",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Water_Theme/MapServer",
    "layer": "HydroLine",
    "where": "hydrotype NOT IN (5, 6)",
    "outputFields":["hydroname","hydronametype","perenniality","relevance"],
},
{
    "layerName": "hydroPoint",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Water_Theme/MapServer",
    "layer": "HydroPoint",
    "outputFields":["hydrotype"],
    "outputCodeValueFields": ["hydrotype"],
},
{
    "layerName": "waterfall",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Water_Theme/MapServer",
    "layer": "AncillaryHydroPoint",
    "where": "ancillaryhydrotype = 6",
    "outputFields":["generalname","symbolrotation"],
},
{
    "layerName": "npwsReserve",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Administrative_Boundaries_Theme/Mapserver/",
    "layer": "NPWSReserve",
    "outputFields":["reservename","reservetype","classsubtype"],
    "outputCodeValueFields": ["reservetype"], 
},
{
    "layerName": "stateForest",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Administrative_Boundaries_Theme/Mapserver/",
    "layer": "StateForest",
    "outputFields":["stateforestname"],
},
{
    "layerName": "roadTunnel",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Transport_Theme/MapServer",
    "layer": "RoadSegment",
    "where": "operationalstatus NOT IN (3,8) AND roadontype = 3 AND classsubtype <> 8",
    "outputFields":["functionhierarchy","classsubtype","surface","lanecount"],
    "outputCodeValueFields": ["functionhierarchy","classsubtype","surface","lanecount"],
},
{
    "layerName": "railwayTunnel",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Transport_Theme/MapServer",
    "layer": "Railway",
    "where": "operationalstatus NOT IN (3,8) AND classsubtype IN (1,2,4) AND railontype = 3",
    "outputFields":["classsubtype"],
    "outputCodeValueFields": ["classsubtype"],
},
{
    "layerName": "wharf",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Transport_Theme/MapServer",
    "layer": "TransportFacilityLine",
    "outputFields":["classsubtype"],
    "outputCodeValueFields": ["classsubtype"],
},
{
    "layerName": "runway",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Transport_Theme/MapServer",
    "layer": "Runway",
    "outputFields":["runwaydefinition"],
    "outputCodeValueFields": ["runwaydefinition"],
},
{
    "layerName": "ferryRoute",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Transport_Theme/MapServer",
    "layer": "FerryRoute",
    "where": "operationalstatus NOT IN (3,8)",
    "outputFields":["classsubtype"],
    "outputCodeValueFields": ["classsubtype"],
},
{
# Is there value in this vs standard road?
    "layerName": "floodway",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Transport_Theme/MapServer",
    "layer": "RoadSegment",
    "where": "operationalstatus NOT IN (3,8) AND roadontype = 4 AND classsubtype <> 8 AND functionhierarchy IN (1,2,3,4,5,6)",
    "outputFields":["functionhierarchy","classsubtype","surface","lanecount","roadontype"],
    "outputCodeValueFields": ["functionhierarchy","classsubtype","surface","lanecount","roadontype"],
},
{
    "layerName": "road",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Transport_Theme/MapServer",
    "layer": "RoadSegment",
    "where": "operationalstatus NOT IN (3,8) AND roadontype NOT IN (2,3) AND classsubtype <> 8", # roadontype = 2,3 - Bridge/Tunnel
    "outputFields":["functionhierarchy","classsubtype","surface","lanecount","roadontype"],
    "outputCodeValueFields": ["functionhierarchy","classsubtype","surface","lanecount","roadontype"],
},
{
    "layerName": "railway",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Transport_Theme/MapServer",
    "layer": "Railway",
    "where": "operationalstatus NOT IN (3,8) AND classsubtype IN (1,2,4) AND railontype IN (1,2)",
    "outputFields":["classsubtype"],
    "outputCodeValueFields": ["classsubtype"],
},
{
    "layerName": "roadBridge",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Transport_Theme/MapServer",
    "layer": "RoadSegment",
    "where": "operationalstatus NOT IN (3,8) AND roadontype = 2 AND classsubtype <> 8",
    "outputFields":["functionhierarchy","classsubtype","surface","lanecount"],
    "outputCodeValueFields": ["functionhierarchy","classsubtype","surface","lanecount"],
},
{
    "layerName": "railwayBridge",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Transport_Theme/MapServer",
    "layer": "Railway",
    "where": "operationalstatus NOT IN (3,8) AND classsubtype IN (1,2,4) AND railontype = 2",
    "outputFields":["classsubtype"],
    "outputCodeValueFields": ["classsubtype"],
},
{
    "layerName": "trafficControlDevice",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Transport_Theme/MapServer",
    "layer": "TrafficControlDevice",
    "where": "classsubtype IN (1,2)",
    "outputFields":["classsubtype","symbolrotation"],
    "outputCodeValueFields": ["classsubtype"],
},
{
    "layerName": "railwayStation",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Transport_Theme/MapServer",
    "layer": "TransportFacilityPoint",
    "where": "classsubtype = 6",
    "outputFields":["classsubtype","generalname"],
    "outputCodeValueFields": ["classsubtype"],
},
{
    "layerName": "tankPoint",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Features_of_Interest_Category/MapServer",
    "layer": "TankPoint",
    "outputFields":["tanktype"],
    "outputCodeValueFields":["tanktype"],
},
{
    "layerName": "tankArea",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Features_of_Interest_Category/MapServer",
    "layer": "TankArea",
    "outputFields":["tanktype"],
    "outputCodeValueFields":["tanktype"],
},
{
    "layerName": "cliffPoint", # Move to geographicPoint?
    "url": "https://maps.six.nsw.gov.au/arcgis/rest/services/sixmaps/POI/MapServer",
    "layer": "Points Of Interest",
    "where": "poitype = 'Cliff'",
    "outputFields":["poiname"],
},
{
    "layerName": "spotHeight",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Elevation_and_Depth_Theme/MapServer",
    "layer": "SpotHeight",
    "outputFields":["elevation","relevance"],
},
{
    "layerName": "relativeHeight",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Elevation_and_Depth_Theme/MapServer",
    "layer": "RelativeHeight",
    "outputFields":["relativeheight","relevance"],
},
{
    "layerName": "culturalLine",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Features_of_Interest_Category/MapServer",
    "layer": "GeneralCulturalLine",
    "outputFields":["generalname","classsubtype"], # limited value in generalculturaltype
    "outputCodeValueFields": ["classsubtype"],
},
{
    "layerName": "cableway",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Transport_Theme/MapServer",
    "layer": "Cableway",
    "where": "operationalstatus IN (1,4,6)",
    "outputFields":["classsubtype"], 
    "outputCodeValueFields": ["classsubtype"],
},
{
    "layerName": "transmissionLine",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Features_of_Interest_Category/MapServer",
    "layer": "ElectricityTransmissionLine",
    "outputFields":["classsubtype"], 
    "outputCodeValueFields": ["classsubtype"],
},
{
# Building Small, Rural Yard, Open Cut Quarry, Underground Mine, Windmill, Tower, Beacon, Hut
    "layerName": "culturalPoint",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Features_of_Interest_Category/MapServer",
    "layer": "GeneralCulturalPoint",
    "where": "classsubtype IN (5,7,12) OR (classsubtype=4 AND generalculturaltype IN (8,9,11,12)) OR (classsubtype=1 AND generalculturaltype=3 AND generalname LIKE '% HUT')",
    "outputFields":["generalname","classsubtype","generalculturaltype"],
    "outputCodeValueFields": ["classsubtype","generalculturaltype"],
},
{
    "layerName": "buildingArea",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Features_of_Interest_Category/MapServer",
    "layer": "GeneralCulturalArea",
    "where": "classsubtype=5",
    "outputFields":["generalname","classsubtype"],
    "outputCodeValueFields": ["classsubtype"],
},
{
# Homestead, Hut
    "layerName": "buildingComplexPoint",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Features_of_Interest_Category/MapServer",
    "layer": "BuildingComplexPoint",
    "where": "(classsubtype=4 AND buildingcomplextype=7 AND generalname IS NOT NULL) OR (classsubtype=2 AND buildingcomplextype=0 AND generalname LIKE '% HUT')",
    "outputFields":["generalname","classsubtype","buildingcomplextype"],
    "outputCodeValueFields": ["classsubtype","buildingcomplextype"],
},
{ # Not using portal.spatial
    "layerName": "stateBorder",
    "url": "https://maps.six.nsw.gov.au/arcgis/rest/services/sixmaps/LPIMap/MapServer",
    "layer": "State_Border",
    "outputFields":["RID"],
},
{ # Not using portal.spatial
    "layerName": "restrictedArea",
    "url": "https://maps.six.nsw.gov.au/arcgis/rest/services/sixmaps/LPIMap/MapServer",
    "layer": "Building_Large",
    "where": "classsubtype=3",
    "outputFields":["classsubtype","generalculturaltype","generalname"],
    "outputCodeValueFields":["classsubtype","generalculturaltype"],
},
{ # Not using portal.spatial
    "layerName": "geographicPoint",
    "url": "https://maps.six.nsw.gov.au/arcgis/rest/services/sixmaps/POI/MapServer",
    "layer": "Points Of Interest",
    "where": "poitype IN ('Gap / Pass / Saddle','Headland','Mountain Like','Peninsula / Spit','Plateau / Tableland','Island','Rapids','Sandbar / Shoal','Lock','Swamp')",
    "outputFields":["poigroup","poitype","poiname"],
    "outputCodeValueFields": ["poigroup"],
},
{ # Not using portal.spatial - look to replace with FuzzyExtentLine
    "layerName": "geographicLine",
    "url": "https://maps.six.nsw.gov.au/arcgis/rest/services/sixmaps/LPIMap/MapServer",
    "layer": "Ridge_Beach",
    "outputFields":["generalname","fuzzylinefeaturetype","relevance"],
    "outputCodeValueFields": ["fuzzylinefeaturetype"],
},
# {
# # Replace with PlacePoint layer? placetype field is missing Coded Values
    # "layerName": "placeLabel",
    # "url": "https://maps.six.nsw.gov.au/arcgis/rest/services/sixmaps/LPIMap/MapServer",
    # "layer": "PlacePoint_LS",
    # "where": "generalname NOT LIKE '% HUT' AND generalname NOT LIKE '% SWAMP'",
    # "outputFields":["generalname","placetype","relevance"],
# #    "outputCodeValueFields": ["placetype"], 
# },
{
# placetype field is missing some Coded Values (23/11/23) - related style uses integers instead
    "layerName": "placeLabel",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Features_of_Interest_Category/MapServer/",
    "layer": "PlacePoint",
    "where": "generalname NOT LIKE '% HUT' AND generalname NOT LIKE '% SWAMP'",
    "outputFields":["generalname","placetype","relevance"],
#    "outputCodeValueFields": ["placetype"], 
},
{
    "layerName": "hydroAreaLabel",
    "url": "https://maps.six.nsw.gov.au/arcgis/rest/services/sixmaps/POI/MapServer/",
    "layer": "Points Of Interest",
    "where": "poitype IN ('Natural Waterbody','Manmade Waterbody','Bay / Inlet / Basin','Reach / River Bend')",
    "outputFields":["poitype","poiname"],
},
{
    "layerName": "hydroLineLabel",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Water_Theme/MapServer",
    "layer": "NamedWatercourse",
    "outputFields":["hydronamestring","relevance"],
},
{
# functionhierarchy field has no Coded Values (23/11/23) - related style uses integers instead
    "layerName": "roadLabel",
    "url": "https://portal.spatial.nsw.gov.au/server/rest/services/NSW_Transport_Theme/MapServer/",
    "layer": "RoadNameExtent",
    "where": "operationalstatus NOT IN (3,8) AND functionhierarchy NOT IN (7,10,11) AND (functionhierarchy NOT IN (6) OR relevance < 6) AND roadnamestring NOT LIKE '%BICENTENNIAL NATIONAL%' AND roadnamestring NOT LIKE '%AUSTRALIAN ALPS%' AND roadnameoid IS NOT NULL",
    "outputFields":["functionhierarchy","roadnamestring","relevance"],
#    "outputCodeValueFields": ["functionhierarchy"], 
},
]

layers = QgsProject.instance().mapLayersByName(generalParams['extentLayerName'])
if layers: 
    layer = layers[0]
else:
    raise Exception('Error: Extent layer not found')
extent = layer.extent()

arcGisExtent = {
    "xmin":extent.xMinimum(),
    "ymin":extent.yMinimum(),
    "xmax":extent.xMaximum(),
    "ymax":extent.yMaximum()
}
for lp in layerParams:
    arcGisParams = {
        "filterCrs": layer.crs().toWkt(),
        "extent": arcGisExtent,
    }
    if 'where' in lp:
        arcGisParams['where'] = lp['where']
    
    if 'outputFields' in lp:
        arcGisParams['outputFields'] = lp['outputFields']
    
    if 'outputCodeValueFields' in lp:
        arcGisParams['outputCodeValueFields'] = lp['outputCodeValueFields']
    
    result = addArcGisLayer (lp['url'], lp['layer'], layer.crs(), arcGisParams)
    # Consider whether to bother adding layers with 0 features
    layer = QgsVectorLayer(result, lp['layerName'], 'ogr')
    QgsProject.instance().addMapLayer(layer)
    layer.loadNamedStyle(generalParams['styleFolder']+lp['layerName']+'.qml')

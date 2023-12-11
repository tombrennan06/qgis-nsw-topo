def saveLayersProjectToGpkg (pathToGpkg, removeEmptyLayers = False, saveProjectToGpkg = False, projectName = 'myProject'):
# PARAMETERS
# path (str): full path to the GeoPackage to save to. If it does not exist it will be created
# removeEmptyLayers (boolean): if True, will remove layers with 0 features when it saves. This can remove clutter. Default is False
# saveProjectToGpkg (boolean): if True, will save the project to the same GeoPackage as the layers. The advantage of this is that the project (including all layers) can be distributed as one file, instead of two. The disadvantage is that projects within GeoPackages can't be seen on the filesystem, so can easily be lost. The alternative is to manually save the project (in a separate file). Default is False
# projectName (str): project name, if the project is saved. Default is 'myProject'
# NOTE: no checking is carried out on the parameters passed
#   Also, if you have layers with duplicate names, you will lose the data from one of them
#   Similar functionality(?) can be obtained from the Package layers tool from the Toolbox

    import os
    from osgeo import ogr
    
    if not os.path.exists(pathToGpkg):
        ds = ogr.GetDriverByName('GPKG').CreateDataSource(pathToGpkg)
    
    for id, layer in QgsProject.instance().mapLayers().items():
        if removeEmptyLayers and layer.featureCount() == 0:
            QgsProject.instance().removeMapLayers([id])
            continue
        else:
            options = QgsVectorFileWriter.SaveVectorOptions()
            options.actionOnExistingFile = QgsVectorFileWriter.CreateOrOverwriteLayer
            options.layerName = layer.name() 
            _writer = QgsVectorFileWriter.writeAsVectorFormatV3(layer, pathToGpkg, QgsCoordinateTransformContext(), options)
            # change the data source
            layer.setDataSource(pathToGpkg + f'|layername={layer.name()}', layer.name(), 'ogr')
    
    if saveProjectToGpkg:
        uri = 'geopackage:'+pathToGpkg+'?projectName='+projectName # need to encode pathToGpkg? projectName?
        QgsProject.instance().write(uri)
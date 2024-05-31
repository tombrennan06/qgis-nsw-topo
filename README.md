# qgis-nsw-topo

**qgis-nsw-topo** is designed to make basic topographic maps for NSW in QGIS, using spatial data from NSW Spatial Services. It is modelled directly on the [NSWTopo](https://github.com/mholling/nswtopo) software, but using QGIS rather than Ruby and Chrome.

NSWTopo is a Ruby program developed by Matt Hollingworth for generating detailed topographic maps for NSW and ACT. There are good instructions on installing and using the program at the link above, though it requires the installation of several pieces software, and uses a command line interface, so is not for the novice.

The **qgis-nsw-topo** repo consists of a mix of scripts, style files and Scalable Vector Graphics (SVG) graphics, and is also not software for the novice! The scripts are used to pull data from various NSW Spatial Services services and to load into QGIS. The SVG and style files are then used to style the data in an aesthetic way.

![2024-05-31 10_30_04-bm-mt_victoria — QGIS](https://github.com/tombrennan06/qgis-nsw-topo/assets/2381307/1517adcd-8adc-4d8b-a845-d764128e816e)

The repo cannot simply be downloaded and installed. Some level of familiarity is needed with running Python scripts in QGIS. The scripts have had limited testing, and also have limited error-handling embedded in them.

There are three separate parts to the repo:
* **Scripts** - these are all Python scripts 
* **Style Files** - these are standard QGIS style files, some of which have a dependency on Scalable Vector Graphics (SVG) files. Many of the styles have a garish-looking fallback (ELSE). This is so that any uncategorised features will stand out. These can be removed in future.
* **SVG Files** - these are QGIS-specific SVGs, so may have some custom parameters to allow them to be configured within QGIS

After downloading, under **Settings->Options->System** in QGIS, add the path of the SVG files to the SVG Paths box.

## Scripts

You can create an extent layer by drawing a rectangle on https://maps.ozultimate.com and saving it as a GeoJSON file. Drag the file into QGIS. My suggestion would be to reproject (_Vector general -> Reproject layer)_ to the appropriate GDA 94 / MGA Zone CRS (eg EPSG:28356), but you can alternatively set the project CRS to this later. Note that the CRS of the downloaded layers will be the same as that of the extent. If you reproject the layer, you can remove the original layer, and rename the reprojected layer to 'extent' (or something else).

Open the Python Console (Ctrl+Alt+P), and then click Show Editor on the toolbar above. Start by pasting in the _addArcGisLayer.py_ and clicking the **Run Script** button. 

Click on the **New Editor** (+) button, and paste in the _loadNswTopographicLayers.py_ script. You will need to edit the _generalParams_ data at the top to match your extent layer name, and your directory where the style files above are saved.

Once you have done this, you can click on **Run Script**. This will fetch data from the NSW Spatial Services servers. Depending on the size of the area - which you can see in https://maps.ozultimate.com - 340 sq km is A2, which should be more than enough for most purposes - the script will probably take about 5 minutes to run in the background. Urban areas will generally take longer than bush areas.

When the script finishes, you should see a finished map on the screen. If the data is loaded but there is no styling, you have probably configured the style directory incorrectly.

You can run the _saveLayersProjectToGpkg.py_ script, and then a command using it to save the layers (and optionally the project) to a GeoPackage file. If you do not save the project to the GeoPackage file, you will need to manually save it (Ctrl-S) to a QGZ file - recommended to be in the same directory as the GeoPackage for portability. For example, to save both layers and project to a GeoPackage:

    saveLayersProjectToGpkg ('E:/geodata/bm-mt_victoria.gpkg', False, True, 'bm-mt_victoria')

To save layers to a GeoPackage, while removing empty layers:

    saveLayersProjectToGpkg ('E:/geodata/bm-mt_victoria.gpkg', True)

### Manual steps
- if you want to add a Grid to the main screen, this can be found in QGIS under **View->Decorations->Grid**. If you are not in a projected CRS, then the grid will be in degrees and not metres. It is probably best to change to a projected CRS. Most of eastern NSW is in Zone 56, so use GDA94/MGA Zone 56 (EPSG:28356). The other NSW zones are EPSG:28355 and EPSG:28354.
- in order to print/export, you will need to create a layout. This can be found under **Project->New Print Layout** (Ctrl+P). There is lots of information on creating layouts online, and no instruction is provided here

## Style Files

Style files are largely modelled on the styles from NSWTopo, but are not identical.

## Notes

At this stage, the software is still fairly primitive, similar to version 1 of NSWTopo. If you want to import your own contours, there are instructions under https://maps.ozultimate.com/wiki/qgis_basic_automation that can be followed.

If you make improvements to the code or style files, feel free to open a pull request.

If you find bugs you can raise an issue - I don't promise to fix them, but probably will!


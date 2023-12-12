# qgis-nsw-topo

This repository is a rough attempt to implement the [NSWTopo](https://github.com/mholling/nswtopo) software directly in QGIS. 

NSWTopo is a Ruby program developed by Matt Hollingworth for generating detailed topographic maps for NSW and ACT. There are good instructions on installing and using the program at the link above, though it requires the installation of several pieces software, and uses a command line interface, so is not for the novice.

The **qgis-nsw-topo** repo consists of a mix of scripts, style files and Scalable Vector Graphics (SVG) graphics, and is also not software for the novice! The scripts are used to pull data from various NSW Spatial Services services and to load into QGIS. The SVG and style files are then used to style the data in an aesthetic way.

The repo cannot simply be downloaded and installed. Some level of familiarity is needed with running Python scripts in QGIS. The scripts have had limited testing, and also have limited error-handling embedded in them.

There are three separate parts to the repo:
* **Scripts** - these are all Python scripts 
* **Style Files** - these are standard QGIS style files, some of which have a dependency on Scalable Vector Graphics (SVG) files. Many of the styles have a garish-looking fallback (ELSE). This is so that any uncategorised features will stand out. These can be removed in future.
* **SVG Files** - these are QGIS-specific SVGs, so may have some custom parameters to allow them to be configured within QGIS

Under **Settings->Options->System**, add the path of the SVG files to the SVG Paths box.

## Scripts

You can create an extent layer by drawing a rectangle on https://maps.ozultimate.com and saving it as a GeoJSON file. Drag the file into QGIS. My suggestion would be to reproject (Vector general -> Reproject layer) to the appropriate GDA 94 / MGA Zone CRS (eg EPSG:28356), but you can alternatively set the project CRS to this later. Note that the CRS of the downloaded layers will be the same as that of the extent. If you reproject the layer, you can remove the original layer, and rename the reprojected layer to 'extent' (or something else).

Open the Python Console (Ctrl+Alt+P), and then click Show Editor on the toolbar above. Start by pasting in the _addArcGisLayer.py_ and clicking the Run Script button. 

Click on the New Editor (+) button, and paste in the _loadNswTopographicLayers.py_ script. You will need to edit the _generalParams_ data at the top to match your extent layer name, and your directory where the style files above are saved.

Once you have done this, you can click on Run Script. This will fetch data from the NSW Spatial Service server. Depending on the size of the area - which you can see in https://maps.ozultimate.com - 340 sq km is A2, which should be more than enough for most purposes - the script will probably take about 5 minutes to run in the background. Urban areas will generally take longer than bush areas.

When the script finishes, you should see a finished map on the screen. If the data is loaded but there is no styling, you have probably configured the style directory incorrectly.

Manual steps
- if you want to add a Grid to the main screen, this can be found under View->Decorations->Grid. If you are not in a projected CRS, then the grid will be in degrees and not metres
- in order to print/export, you will need to create a layout. This can be found under Project->New Print Layout (Ctrl+P). There is lots of information on creating layouts online, and no instruction is provided here

## Style Files

Style files are largely modelled on the styles from NSWTopo, but are not identical.

## Notes

At this stage, the software is still fairly primitive, similar to version 1 of NSWTopo. If you want to import your own contours, there are instructions under https://maps.ozultimate.com/wiki/qgis_basic_automation that can be followed.


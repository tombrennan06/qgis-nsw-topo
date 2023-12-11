<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" simplifyMaxScale="1" simplifyDrawingTol="1" symbologyReferenceScale="-1" minScale="100000000" styleCategories="Symbology|Labeling|Rendering" simplifyAlgorithm="0" simplifyLocal="1" simplifyDrawingHints="1" version="3.34.0-Prizren" maxScale="0" labelsEnabled="0">
  <renderer-v2 referencescale="-1" symbollevels="0" type="RuleRenderer" forceraster="0" enableorderby="0">
    <rules key="{741212b8-75f3-4a99-804d-513a96be622f}">
      <rule filter="&quot;classsubtype&quot;='CliffArea'" symbol="0" key="{1cbbe2be-2ab8-4854-a50d-9c9f9e7c75f8}" label="Cliff Area"/>
      <rule filter="&quot;classsubtype&quot;='Swamp-Wet'" symbol="1" key="{43a70f8b-76ae-4aea-9a9a-9d873bc9e171}" label="Swamp Wet"/>
      <rule filter="&quot;classsubtype&quot;='Mangrove'" symbol="2" key="{86d5cc3a-a4eb-474e-a4a6-18ad2caba934}" label="Mangrove"/>
      <rule filter="&quot;classsubtype&quot;='IntertidalFlat'" symbol="3" key="{3a5f4038-a6e7-4c27-b2a5-631e7637e862}" label="Intertidal"/>
      <rule filter="&quot;classsubtype&quot;='Sand'" symbol="4" key="{a1abc924-c395-48fd-9240-0b0f511c70ce}" label="Sand"/>
      <rule filter="&quot;classsubtype&quot;='Reef'" symbol="5" key="{9252f9dc-6d17-40e7-bdcf-e3ef4c67c65f}" label="Reef"/>
      <rule filter="&quot;classsubtype&quot;='Rock-Awash'" symbol="6" key="{69c1f885-c01a-488a-9090-30647fd0fb43}" label="Rock Area Water"/>
      <rule filter="&quot;classsubtype&quot;='Rock-Inland'" symbol="7" key="{6b82bc58-07db-4333-b350-c68342dd6cbe}" label="Rock Area Inland"/>
      <rule filter="&quot;classsubtype&quot;='Swamp-Dry'" symbol="8" key="{34629909-cbaf-44e9-857b-f8e29dbc093e}" label="Swamp Dry"/>
      <rule filter="&quot;classsubtype&quot;='LandSubjectToInundation'" symbol="9" key="{be697d28-ed4e-4243-8778-8ee87cb136f8}" label="Inundation"/>
      <rule filter="ELSE" symbol="10" key="{755dc082-29a5-4197-9341-ca233e202b6c}"/>
    </rules>
    <symbols>
      <symbol name="0" clip_to_extent="1" frame_rate="10" force_rhr="0" type="fill" alpha="1" is_animated="0">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" class="SimpleFill" locked="0" pass="0" id="{44dd2a81-4661-43a2-a693-abd2266ecda6}">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="200,200,200,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="1" clip_to_extent="1" frame_rate="10" force_rhr="0" type="fill" alpha="1" is_animated="0">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" class="SVGFill" locked="0" pass="0" id="{df18b3db-9c2c-48ef-a7df-df246e48405c}">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="color" type="QString" value="0,0,255,255"/>
            <Option name="outline_color" type="QString" value="35,35,35,255"/>
            <Option name="outline_width" type="QString" value="0.26"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="parameters"/>
            <Option name="pattern_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="pattern_width_unit" type="QString" value="MM"/>
            <Option name="svgFile" type="QString" value="swamp-wet.svg"/>
            <Option name="svg_outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="svg_outline_width_unit" type="QString" value="MM"/>
            <Option name="width" type="QString" value="20"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="10" clip_to_extent="1" frame_rate="10" force_rhr="0" type="fill" alpha="1" is_animated="0">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" class="SimpleFill" locked="0" pass="0" id="{8aa6eff2-d34c-445c-96a0-fbf340516c56}">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="255,42,0,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0.26"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="2" clip_to_extent="1" frame_rate="10" force_rhr="0" type="fill" alpha="1" is_animated="0">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" class="SVGFill" locked="0" pass="0" id="{df18b3db-9c2c-48ef-a7df-df246e48405c}">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="color" type="QString" value="144,238,144,51"/>
            <Option name="outline_color" type="QString" value="0,100,0,255"/>
            <Option name="outline_width" type="QString" value="0.25"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="parameters"/>
            <Option name="pattern_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="pattern_width_unit" type="QString" value="MM"/>
            <Option name="svgFile" type="QString" value="mangroves.svg"/>
            <Option name="svg_outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="svg_outline_width_unit" type="QString" value="MM"/>
            <Option name="width" type="QString" value="20"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="3" clip_to_extent="1" frame_rate="10" force_rhr="0" type="fill" alpha="1" is_animated="0">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" class="SVGFill" locked="0" pass="0" id="{df18b3db-9c2c-48ef-a7df-df246e48405c}">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="color" type="QString" value="144,238,144,255"/>
            <Option name="outline_color" type="QString" value="224,165,0,255"/>
            <Option name="outline_width" type="QString" value="0.35"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="parameters"/>
            <Option name="pattern_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="pattern_width_unit" type="QString" value="MM"/>
            <Option name="svgFile" type="QString" value="intertidal.svg"/>
            <Option name="svg_outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="svg_outline_width_unit" type="QString" value="MM"/>
            <Option name="width" type="QString" value="20"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="4" clip_to_extent="1" frame_rate="10" force_rhr="0" type="fill" alpha="1" is_animated="0">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" class="SVGFill" locked="0" pass="0" id="{df18b3db-9c2c-48ef-a7df-df246e48405c}">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="color" type="QString" value="144,238,144,255"/>
            <Option name="outline_color" type="QString" value="224,165,0,255"/>
            <Option name="outline_width" type="QString" value="0.35"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="parameters"/>
            <Option name="pattern_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="pattern_width_unit" type="QString" value="MM"/>
            <Option name="svgFile" type="QString" value="intertidal.svg"/>
            <Option name="svg_outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="svg_outline_width_unit" type="QString" value="MM"/>
            <Option name="width" type="QString" value="20"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="5" clip_to_extent="1" frame_rate="10" force_rhr="0" type="fill" alpha="1" is_animated="0">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" class="SVGFill" locked="0" pass="0" id="{df18b3db-9c2c-48ef-a7df-df246e48405c}">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="color" type="QString" value="144,238,144,255"/>
            <Option name="outline_color" type="QString" value="73,133,223,255"/>
            <Option name="outline_width" type="QString" value="0.35"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="parameters"/>
            <Option name="pattern_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="pattern_width_unit" type="QString" value="MM"/>
            <Option name="svgFile" type="QString" value="intertidal.svg"/>
            <Option name="svg_outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="svg_outline_width_unit" type="QString" value="MM"/>
            <Option name="width" type="QString" value="20"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="6" clip_to_extent="1" frame_rate="10" force_rhr="0" type="fill" alpha="1" is_animated="0">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" class="SVGFill" locked="0" pass="0" id="{df18b3db-9c2c-48ef-a7df-df246e48405c}">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="color" type="QString" value="144,238,144,255"/>
            <Option name="outline_color" type="QString" value="117,66,45,255"/>
            <Option name="outline_width" type="QString" value="0.35"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="parameters"/>
            <Option name="pattern_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="pattern_width_unit" type="QString" value="MM"/>
            <Option name="svgFile" type="QString" value="intertidal.svg"/>
            <Option name="svg_outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="svg_outline_width_unit" type="QString" value="MM"/>
            <Option name="width" type="QString" value="20"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="7" clip_to_extent="1" frame_rate="10" force_rhr="0" type="fill" alpha="1" is_animated="0">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" class="SVGFill" locked="0" pass="0" id="{df18b3db-9c2c-48ef-a7df-df246e48405c}">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="color" type="QString" value="144,238,144,255"/>
            <Option name="outline_color" type="QString" value="117,66,45,255"/>
            <Option name="outline_width" type="QString" value="0.35"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="parameters"/>
            <Option name="pattern_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="pattern_width_unit" type="QString" value="MM"/>
            <Option name="svgFile" type="QString" value="intertidal.svg"/>
            <Option name="svg_outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="svg_outline_width_unit" type="QString" value="MM"/>
            <Option name="width" type="QString" value="20"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="8" clip_to_extent="1" frame_rate="10" force_rhr="0" type="fill" alpha="1" is_animated="0">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" class="SVGFill" locked="0" pass="0" id="{df18b3db-9c2c-48ef-a7df-df246e48405c}">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="color" type="QString" value="128,81,0,255"/>
            <Option name="outline_color" type="QString" value="117,66,45,255"/>
            <Option name="outline_width" type="QString" value="0.35"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="parameters"/>
            <Option name="pattern_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="pattern_width_unit" type="QString" value="MM"/>
            <Option name="svgFile" type="QString" value="swamp-wet.svg"/>
            <Option name="svg_outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="svg_outline_width_unit" type="QString" value="MM"/>
            <Option name="width" type="QString" value="20"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="9" clip_to_extent="1" frame_rate="10" force_rhr="0" type="fill" alpha="1" is_animated="0">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" class="SVGFill" locked="0" pass="0" id="{df18b3db-9c2c-48ef-a7df-df246e48405c}">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="color" type="QString" value="73,133,223,255"/>
            <Option name="outline_color" type="QString" value="73,133,223,255"/>
            <Option name="outline_width" type="QString" value="0.35"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="parameters"/>
            <Option name="pattern_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="pattern_width_unit" type="QString" value="MM"/>
            <Option name="svgFile" type="QString" value="swamp-wet.svg"/>
            <Option name="svg_outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="svg_outline_width_unit" type="QString" value="MM"/>
            <Option name="width" type="QString" value="20"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <selection mode="Default">
    <selectionColor invalid="1"/>
    <selectionSymbol>
      <symbol name="" clip_to_extent="1" frame_rate="10" force_rhr="0" type="fill" alpha="1" is_animated="0">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" class="SimpleFill" locked="0" pass="0" id="{f65fba58-f97d-44d2-a7f9-0a0e762f51e2}">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="0,0,255,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0.26"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </selectionSymbol>
  </selection>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <layerGeometryType>2</layerGeometryType>
</qgis>

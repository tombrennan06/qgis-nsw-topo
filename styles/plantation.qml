<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyLocal="1" symbologyReferenceScale="-1" simplifyAlgorithm="0" simplifyDrawingTol="1" version="3.22.10-Białowieża" hasScaleBasedVisibilityFlag="0" maxScale="0" minScale="100000000" styleCategories="Symbology|Labeling|Rendering" simplifyDrawingHints="1" simplifyMaxScale="1" labelsEnabled="0">
  <renderer-v2 enableorderby="0" forceraster="0" type="RuleRenderer" referencescale="-1" symbollevels="0">
    <rules key="{b87a35c5-1b34-41aa-8b90-ed9f40d01a1a}">
      <rule symbol="0" label="Crop" filter="&quot;classsubtype&quot;='Plantation' AND &quot;generalculturaltype&quot; = 'Horticulture-Crop'" key="{320baa73-aa3b-4e5b-9651-d65c4b43adbf}"/>
      <rule symbol="1" label="Orchard" filter="&quot;classsubtype&quot;='Plantation' AND &quot;generalculturaltype&quot; IN ('Horticulture-Orchard','Horticulture-Vineyard')" key="{240fc816-00a3-4cab-875e-bb9117e3cc70}"/>
      <rule symbol="2" label="Plantation" filter="&quot;classsubtype&quot;='Plantation' AND &quot;generalculturaltype&quot; IN ('ForestryPlantation-Pine','ForestryPlantation-Other')&#xd;&#xa;&#xd;&#xa;" key="{320baa73-aa3b-4e5b-9651-d65c4b43adbf}"/>
      <rule symbol="3" filter="ELSE" key="{f5f4efb7-5f08-4dd6-89d1-54eb18dcc110}"/>
    </rules>
    <symbols>
      <symbol force_rhr="0" type="fill" clip_to_extent="1" name="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" class="LinePatternFill" locked="0">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="55,126,184,255" name="color"/>
            <Option type="QString" value="2" name="distance"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="distance_map_unit_scale"/>
            <Option type="QString" value="MM" name="distance_unit"/>
            <Option type="QString" value="0.26" name="line_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="line_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="line_width_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="color" v="55,126,184,255"/>
          <prop k="distance" v="2"/>
          <prop k="distance_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="distance_unit" v="MM"/>
          <prop k="line_width" v="0.26"/>
          <prop k="line_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol force_rhr="0" type="line" clip_to_extent="1" name="@0@0" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" class="SimpleLine" locked="0">
              <Option type="Map">
                <Option type="QString" value="0" name="align_dash_pattern"/>
                <Option type="QString" value="flat" name="capstyle"/>
                <Option type="QString" value="5;1" name="customdash"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
                <Option type="QString" value="MM" name="customdash_unit"/>
                <Option type="QString" value="0" name="dash_pattern_offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
                <Option type="QString" value="0" name="draw_inside_polygon"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="89,179,89,255" name="line_color"/>
                <Option type="QString" value="dash" name="line_style"/>
                <Option type="QString" value="1" name="line_width"/>
                <Option type="QString" value="MM" name="line_width_unit"/>
                <Option type="QString" value="0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="0" name="ring_filter"/>
                <Option type="QString" value="0" name="trim_distance_end"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
                <Option type="QString" value="MM" name="trim_distance_end_unit"/>
                <Option type="QString" value="0" name="trim_distance_start"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
                <Option type="QString" value="MM" name="trim_distance_start_unit"/>
                <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
                <Option type="QString" value="1" name="use_custom_dash"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
              </Option>
              <prop k="align_dash_pattern" v="0"/>
              <prop k="capstyle" v="flat"/>
              <prop k="customdash" v="5;1"/>
              <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="customdash_unit" v="MM"/>
              <prop k="dash_pattern_offset" v="0"/>
              <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="dash_pattern_offset_unit" v="MM"/>
              <prop k="draw_inside_polygon" v="0"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="line_color" v="89,179,89,255"/>
              <prop k="line_style" v="dash"/>
              <prop k="line_width" v="1"/>
              <prop k="line_width_unit" v="MM"/>
              <prop k="offset" v="0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="ring_filter" v="0"/>
              <prop k="trim_distance_end" v="0"/>
              <prop k="trim_distance_end_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="trim_distance_end_unit" v="MM"/>
              <prop k="trim_distance_start" v="0"/>
              <prop k="trim_distance_start_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="trim_distance_start_unit" v="MM"/>
              <prop k="tweak_dash_pattern_on_corners" v="0"/>
              <prop k="use_custom_dash" v="1"/>
              <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer pass="0" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="55,126,184,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="77,175,74,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.46" name="outline_width"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="no" name="style"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="55,126,184,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="77,175,74,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.46"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="no"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" type="fill" clip_to_extent="1" name="1" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" class="PointPatternFill" locked="0">
          <Option type="Map">
            <Option type="QString" value="1.2" name="displacement_x"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="displacement_x_map_unit_scale"/>
            <Option type="QString" value="MM" name="displacement_x_unit"/>
            <Option type="QString" value="0" name="displacement_y"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="displacement_y_map_unit_scale"/>
            <Option type="QString" value="MM" name="displacement_y_unit"/>
            <Option type="QString" value="2.4" name="distance_x"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="distance_x_map_unit_scale"/>
            <Option type="QString" value="MM" name="distance_x_unit"/>
            <Option type="QString" value="2.4" name="distance_y"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="distance_y_map_unit_scale"/>
            <Option type="QString" value="MM" name="distance_y_unit"/>
            <Option type="QString" value="0" name="offset_x"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_x_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_x_unit"/>
            <Option type="QString" value="0" name="offset_y"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_y_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_y_unit"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
          </Option>
          <prop k="displacement_x" v="1.2"/>
          <prop k="displacement_x_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="displacement_x_unit" v="MM"/>
          <prop k="displacement_y" v="0"/>
          <prop k="displacement_y_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="displacement_y_unit" v="MM"/>
          <prop k="distance_x" v="2.4"/>
          <prop k="distance_x_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="distance_x_unit" v="MM"/>
          <prop k="distance_y" v="2.4"/>
          <prop k="distance_y_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="distance_y_unit" v="MM"/>
          <prop k="offset_x" v="0"/>
          <prop k="offset_x_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_x_unit" v="MM"/>
          <prop k="offset_y" v="0"/>
          <prop k="offset_y_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_y_unit" v="MM"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol force_rhr="0" type="marker" clip_to_extent="1" name="@1@0" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" class="SimpleMarker" locked="0">
              <Option type="Map">
                <Option type="QString" value="0" name="angle"/>
                <Option type="QString" value="square" name="cap_style"/>
                <Option type="QString" value="89,179,89,255" name="color"/>
                <Option type="QString" value="1" name="horizontal_anchor_point"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="square" name="name"/>
                <Option type="QString" value="0,0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="0,0,0,255" name="outline_color"/>
                <Option type="QString" value="no" name="outline_style"/>
                <Option type="QString" value="0" name="outline_width"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                <Option type="QString" value="MM" name="outline_width_unit"/>
                <Option type="QString" value="area" name="scale_method"/>
                <Option type="QString" value="1.2" name="size"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                <Option type="QString" value="MM" name="size_unit"/>
                <Option type="QString" value="1" name="vertical_anchor_point"/>
              </Option>
              <prop k="angle" v="0"/>
              <prop k="cap_style" v="square"/>
              <prop k="color" v="89,179,89,255"/>
              <prop k="horizontal_anchor_point" v="1"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="name" v="square"/>
              <prop k="offset" v="0,0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="outline_color" v="0,0,0,255"/>
              <prop k="outline_style" v="no"/>
              <prop k="outline_width" v="0"/>
              <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="outline_width_unit" v="MM"/>
              <prop k="scale_method" v="area"/>
              <prop k="size" v="1.2"/>
              <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="size_unit" v="MM"/>
              <prop k="vertical_anchor_point" v="1"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer pass="0" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="0,0,0,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="77,175,74,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.36" name="outline_width"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="no" name="style"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="77,175,74,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.36"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="no"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" type="fill" clip_to_extent="1" name="2" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" class="PointPatternFill" locked="0">
          <Option type="Map">
            <Option type="QString" value="1.2" name="displacement_x"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="displacement_x_map_unit_scale"/>
            <Option type="QString" value="MM" name="displacement_x_unit"/>
            <Option type="QString" value="0" name="displacement_y"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="displacement_y_map_unit_scale"/>
            <Option type="QString" value="MM" name="displacement_y_unit"/>
            <Option type="QString" value="2.4" name="distance_x"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="distance_x_map_unit_scale"/>
            <Option type="QString" value="MM" name="distance_x_unit"/>
            <Option type="QString" value="2.4" name="distance_y"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="distance_y_map_unit_scale"/>
            <Option type="QString" value="MM" name="distance_y_unit"/>
            <Option type="QString" value="0" name="offset_x"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_x_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_x_unit"/>
            <Option type="QString" value="0" name="offset_y"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_y_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_y_unit"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
          </Option>
          <prop k="displacement_x" v="1.2"/>
          <prop k="displacement_x_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="displacement_x_unit" v="MM"/>
          <prop k="displacement_y" v="0"/>
          <prop k="displacement_y_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="displacement_y_unit" v="MM"/>
          <prop k="distance_x" v="2.4"/>
          <prop k="distance_x_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="distance_x_unit" v="MM"/>
          <prop k="distance_y" v="2.4"/>
          <prop k="distance_y_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="distance_y_unit" v="MM"/>
          <prop k="offset_x" v="0"/>
          <prop k="offset_x_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_x_unit" v="MM"/>
          <prop k="offset_y" v="0"/>
          <prop k="offset_y_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_y_unit" v="MM"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol force_rhr="0" type="marker" clip_to_extent="1" name="@2@0" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" class="SimpleMarker" locked="0">
              <Option type="Map">
                <Option type="QString" value="0" name="angle"/>
                <Option type="QString" value="square" name="cap_style"/>
                <Option type="QString" value="77,175,74,255" name="color"/>
                <Option type="QString" value="1" name="horizontal_anchor_point"/>
                <Option type="QString" value="bevel" name="joinstyle"/>
                <Option type="QString" value="circle" name="name"/>
                <Option type="QString" value="0,0" name="offset"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="77,175,74,255" name="outline_color"/>
                <Option type="QString" value="solid" name="outline_style"/>
                <Option type="QString" value="0.2" name="outline_width"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                <Option type="QString" value="MM" name="outline_width_unit"/>
                <Option type="QString" value="diameter" name="scale_method"/>
                <Option type="QString" value="1" name="size"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                <Option type="QString" value="MM" name="size_unit"/>
                <Option type="QString" value="1" name="vertical_anchor_point"/>
              </Option>
              <prop k="angle" v="0"/>
              <prop k="cap_style" v="square"/>
              <prop k="color" v="77,175,74,255"/>
              <prop k="horizontal_anchor_point" v="1"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="name" v="circle"/>
              <prop k="offset" v="0,0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="outline_color" v="77,175,74,255"/>
              <prop k="outline_style" v="solid"/>
              <prop k="outline_width" v="0.2"/>
              <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="outline_width_unit" v="MM"/>
              <prop k="scale_method" v="diameter"/>
              <prop k="size" v="1"/>
              <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="size_unit" v="MM"/>
              <prop k="vertical_anchor_point" v="1"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer pass="0" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="0,0,0,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="77,175,74,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.36" name="outline_width"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="no" name="style"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="77,175,74,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.36"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="no"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol force_rhr="0" type="fill" clip_to_extent="1" name="3" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="232,113,141,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="35,35,35,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.26" name="outline_width"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="232,113,141,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <layerGeometryType>2</layerGeometryType>
</qgis>

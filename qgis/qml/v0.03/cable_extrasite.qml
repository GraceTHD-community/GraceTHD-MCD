<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.14.16-Essen" minimumScale="-4.65661e-10" maximumScale="1e+06" simplifyDrawingHints="1" minLabelScale="0" maxLabelScale="1e+08" simplifyDrawingTol="1" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="1" simplifyLocal="1" scaleBasedLabelVisibilityFlag="0">
  <edittypes>
    <edittype widgetv2type="TextEdit" name="cb_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cb_codeext">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cb_etiquet">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="cb_nd1">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="nd_code" Layer="t_noeud20160112184638913" Value="nd_code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="cb_nd2">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="nd_code" Layer="t_noeud20160112184638913" Value="nd_code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cb_r1_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cb_r2_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cb_r3_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cb_r4_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="cb_prop">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="or_code" Layer="t_organisme_copier20160113091148372" Value="or_nom" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="cb_gest">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="or_code" Layer="t_organisme_copier20160113091148372" Value="or_nom" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="cb_user">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="or_code" Layer="t_organisme_copier20160113091148372" Value="or_nom" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="cb_proptyp">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_propriete_type20160112184742293" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="cb_statut">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_statut20160112184742380" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="cb_etat">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_etat_type20160112184742167" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="cb_dateins">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd" field_format="yyyy-MM-dd" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="cb_datemes">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd" field_format="yyyy-MM-dd" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="cb_avct">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_avancement20160112184742087" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="cb_tech">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_technologie_type20160112184742401" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="cb_typephy">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_cable_type20160112184742123" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="cb_typelog">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_infra_type_log20160112184742223" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="cb_rf_code">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;rf_type&quot;  = 'CA'" UseCompleter="0" fieldEditable="1" Key="rf_code" Layer="t_reference_copier20160113091148384" Value="rf_code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cb_capafo">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cb_fo_disp">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cb_fo_util">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cb_modulo">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cb_diam">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cb_color">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cb_lgreel">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cb_localis">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cb_comment">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="cb_creadat">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="cb_majdate">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cb_majsrc">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="cb_abddate">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cb_abdsrc">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cl_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cl_cb_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cl_long">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cl_comment">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="cl_dtclass">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_geoloc_classe20160112184742188" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cl_geolqlt">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="cl_geolmod">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_geoloc_mode20160112184742195" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cl_geolsrc">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="cl_creadat">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="cl_majdate">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cl_majsrc">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="cl_abddate">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="cl_abdsrc">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
  </edittypes>
  <renderer-v2 forceraster="0" symbollevels="0" type="singleSymbol" enableorderby="0">
    <symbols>
      <symbol alpha="1" clip_to_extent="1" type="line" name="0">
        <layer pass="0" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="255,0,0,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.7"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0,0,0,0,0,0"/>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale scalemethod="diameter"/>
  </renderer-v2>
  <labeling type="simple"/>
  <customproperties>
    <property key="labeling" value="pal"/>
    <property key="labeling/addDirectionSymbol" value="false"/>
    <property key="labeling/angleOffset" value="0"/>
    <property key="labeling/blendMode" value="0"/>
    <property key="labeling/bufferBlendMode" value="0"/>
    <property key="labeling/bufferColorA" value="255"/>
    <property key="labeling/bufferColorB" value="255"/>
    <property key="labeling/bufferColorG" value="255"/>
    <property key="labeling/bufferColorR" value="255"/>
    <property key="labeling/bufferDraw" value="false"/>
    <property key="labeling/bufferJoinStyle" value="64"/>
    <property key="labeling/bufferNoFill" value="false"/>
    <property key="labeling/bufferSize" value="1"/>
    <property key="labeling/bufferSizeInMapUnits" value="false"/>
    <property key="labeling/bufferSizeMapUnitMaxScale" value="0"/>
    <property key="labeling/bufferSizeMapUnitMinScale" value="0"/>
    <property key="labeling/bufferSizeMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/bufferTransp" value="0"/>
    <property key="labeling/centroidInside" value="false"/>
    <property key="labeling/centroidWhole" value="false"/>
    <property key="labeling/decimals" value="3"/>
    <property key="labeling/displayAll" value="false"/>
    <property key="labeling/dist" value="1"/>
    <property key="labeling/distInMapUnits" value="false"/>
    <property key="labeling/distMapUnitMaxScale" value="0"/>
    <property key="labeling/distMapUnitMinScale" value="0"/>
    <property key="labeling/distMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/drawLabels" value="true"/>
    <property key="labeling/enabled" value="true"/>
    <property key="labeling/fieldName" value="cb_capafo"/>
    <property key="labeling/fitInPolygonOnly" value="false"/>
    <property key="labeling/fontBold" value="false"/>
    <property key="labeling/fontCapitals" value="0"/>
    <property key="labeling/fontFamily" value="MS Shell Dlg 2"/>
    <property key="labeling/fontItalic" value="false"/>
    <property key="labeling/fontLetterSpacing" value="0"/>
    <property key="labeling/fontLimitPixelSize" value="false"/>
    <property key="labeling/fontMaxPixelSize" value="10000"/>
    <property key="labeling/fontMinPixelSize" value="3"/>
    <property key="labeling/fontSize" value="5.8"/>
    <property key="labeling/fontSizeInMapUnits" value="false"/>
    <property key="labeling/fontSizeMapUnitMaxScale" value="0"/>
    <property key="labeling/fontSizeMapUnitMinScale" value="0"/>
    <property key="labeling/fontSizeMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/fontStrikeout" value="false"/>
    <property key="labeling/fontUnderline" value="false"/>
    <property key="labeling/fontWeight" value="50"/>
    <property key="labeling/fontWordSpacing" value="0"/>
    <property key="labeling/formatNumbers" value="false"/>
    <property key="labeling/isExpression" value="false"/>
    <property key="labeling/labelOffsetInMapUnits" value="true"/>
    <property key="labeling/labelOffsetMapUnitMaxScale" value="0"/>
    <property key="labeling/labelOffsetMapUnitMinScale" value="0"/>
    <property key="labeling/labelOffsetMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/labelPerPart" value="false"/>
    <property key="labeling/leftDirectionSymbol" value="&lt;"/>
    <property key="labeling/limitNumLabels" value="false"/>
    <property key="labeling/maxCurvedCharAngleIn" value="20"/>
    <property key="labeling/maxCurvedCharAngleOut" value="-20"/>
    <property key="labeling/maxNumLabels" value="2000"/>
    <property key="labeling/mergeLines" value="false"/>
    <property key="labeling/minFeatureSize" value="0"/>
    <property key="labeling/multilineAlign" value="0"/>
    <property key="labeling/multilineHeight" value="1"/>
    <property key="labeling/namedStyle" value="Normal"/>
    <property key="labeling/obstacle" value="true"/>
    <property key="labeling/obstacleFactor" value="1"/>
    <property key="labeling/obstacleType" value="0"/>
    <property key="labeling/offsetType" value="0"/>
    <property key="labeling/placeDirectionSymbol" value="0"/>
    <property key="labeling/placement" value="2"/>
    <property key="labeling/placementFlags" value="10"/>
    <property key="labeling/plussign" value="false"/>
    <property key="labeling/predefinedPositionOrder" value="TR,TL,BR,BL,R,L,TSR,BSR"/>
    <property key="labeling/preserveRotation" value="true"/>
    <property key="labeling/previewBkgrdColor" value="#ffffff"/>
    <property key="labeling/priority" value="5"/>
    <property key="labeling/quadOffset" value="4"/>
    <property key="labeling/repeatDistance" value="0"/>
    <property key="labeling/repeatDistanceMapUnitMaxScale" value="0"/>
    <property key="labeling/repeatDistanceMapUnitMinScale" value="0"/>
    <property key="labeling/repeatDistanceMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/repeatDistanceUnit" value="1"/>
    <property key="labeling/reverseDirectionSymbol" value="false"/>
    <property key="labeling/rightDirectionSymbol" value=">"/>
    <property key="labeling/scaleMax" value="5000"/>
    <property key="labeling/scaleMin" value="1"/>
    <property key="labeling/scaleVisibility" value="true"/>
    <property key="labeling/shadowBlendMode" value="6"/>
    <property key="labeling/shadowColorB" value="0"/>
    <property key="labeling/shadowColorG" value="0"/>
    <property key="labeling/shadowColorR" value="0"/>
    <property key="labeling/shadowDraw" value="false"/>
    <property key="labeling/shadowOffsetAngle" value="135"/>
    <property key="labeling/shadowOffsetDist" value="1"/>
    <property key="labeling/shadowOffsetGlobal" value="true"/>
    <property key="labeling/shadowOffsetMapUnitMaxScale" value="0"/>
    <property key="labeling/shadowOffsetMapUnitMinScale" value="0"/>
    <property key="labeling/shadowOffsetMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/shadowOffsetUnits" value="1"/>
    <property key="labeling/shadowRadius" value="1.5"/>
    <property key="labeling/shadowRadiusAlphaOnly" value="false"/>
    <property key="labeling/shadowRadiusMapUnitMaxScale" value="0"/>
    <property key="labeling/shadowRadiusMapUnitMinScale" value="0"/>
    <property key="labeling/shadowRadiusMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/shadowRadiusUnits" value="1"/>
    <property key="labeling/shadowScale" value="100"/>
    <property key="labeling/shadowTransparency" value="30"/>
    <property key="labeling/shadowUnder" value="0"/>
    <property key="labeling/shapeBlendMode" value="0"/>
    <property key="labeling/shapeBorderColorA" value="255"/>
    <property key="labeling/shapeBorderColorB" value="0"/>
    <property key="labeling/shapeBorderColorG" value="0"/>
    <property key="labeling/shapeBorderColorR" value="255"/>
    <property key="labeling/shapeBorderWidth" value="0.2"/>
    <property key="labeling/shapeBorderWidthMapUnitMaxScale" value="0"/>
    <property key="labeling/shapeBorderWidthMapUnitMinScale" value="0"/>
    <property key="labeling/shapeBorderWidthMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/shapeBorderWidthUnits" value="1"/>
    <property key="labeling/shapeDraw" value="true"/>
    <property key="labeling/shapeFillColorA" value="255"/>
    <property key="labeling/shapeFillColorB" value="255"/>
    <property key="labeling/shapeFillColorG" value="255"/>
    <property key="labeling/shapeFillColorR" value="255"/>
    <property key="labeling/shapeJoinStyle" value="64"/>
    <property key="labeling/shapeOffsetMapUnitMaxScale" value="0"/>
    <property key="labeling/shapeOffsetMapUnitMinScale" value="0"/>
    <property key="labeling/shapeOffsetMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/shapeOffsetUnits" value="1"/>
    <property key="labeling/shapeOffsetX" value="0"/>
    <property key="labeling/shapeOffsetY" value="0"/>
    <property key="labeling/shapeRadiiMapUnitMaxScale" value="0"/>
    <property key="labeling/shapeRadiiMapUnitMinScale" value="0"/>
    <property key="labeling/shapeRadiiMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/shapeRadiiUnits" value="1"/>
    <property key="labeling/shapeRadiiX" value="0"/>
    <property key="labeling/shapeRadiiY" value="0"/>
    <property key="labeling/shapeRotation" value="0"/>
    <property key="labeling/shapeRotationType" value="0"/>
    <property key="labeling/shapeSVGFile" value=""/>
    <property key="labeling/shapeSizeMapUnitMaxScale" value="0"/>
    <property key="labeling/shapeSizeMapUnitMinScale" value="0"/>
    <property key="labeling/shapeSizeMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/shapeSizeType" value="0"/>
    <property key="labeling/shapeSizeUnits" value="1"/>
    <property key="labeling/shapeSizeX" value="0"/>
    <property key="labeling/shapeSizeY" value="0"/>
    <property key="labeling/shapeTransparency" value="0"/>
    <property key="labeling/shapeType" value="3"/>
    <property key="labeling/textColorA" value="255"/>
    <property key="labeling/textColorB" value="0"/>
    <property key="labeling/textColorG" value="0"/>
    <property key="labeling/textColorR" value="255"/>
    <property key="labeling/textTransp" value="0"/>
    <property key="labeling/upsidedownLabels" value="0"/>
    <property key="labeling/wrapChar" value=""/>
    <property key="labeling/xOffset" value="0"/>
    <property key="labeling/yOffset" value="0"/>
    <property key="labeling/zIndex" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerTransparency>0</layerTransparency>
  <displayfield>cb_code</displayfield>
  <label>0</label>
  <labelattributes>
    <label fieldname="" text="Étiquette"/>
    <family fieldname="" name="MS Shell Dlg 2"/>
    <size fieldname="" units="pt" value="12"/>
    <bold fieldname="" on="0"/>
    <italic fieldname="" on="0"/>
    <underline fieldname="" on="0"/>
    <strikeout fieldname="" on="0"/>
    <color fieldname="" red="0" blue="0" green="0"/>
    <x fieldname=""/>
    <y fieldname=""/>
    <offset x="0" y="0" units="pt" yfieldname="" xfieldname=""/>
    <angle fieldname="" value="0" auto="0"/>
    <alignment fieldname="" value="center"/>
    <buffercolor fieldname="" red="255" blue="255" green="255"/>
    <buffersize fieldname="" units="pt" value="1"/>
    <bufferenabled fieldname="" on=""/>
    <multilineenabled fieldname="" on=""/>
    <selectedonly on=""/>
  </labelattributes>
  <SingleCategoryDiagramRenderer diagramType="Pie">
    <DiagramCategory penColor="#000000" labelPlacementMethod="XHeight" penWidth="0" diagramOrientation="Up" minimumSize="0" barWidth="5" penAlpha="255" maxScaleDenominator="1e+08" backgroundColor="#ffffff" transparency="0" width="15" scaleDependency="Area" backgroundAlpha="255" angleOffset="1440" scaleBasedVisibility="0" enabled="0" height="15" sizeType="MM" minScaleDenominator="-4.65661e-10">
      <fontProperties description="MS Shell Dlg 2,7.8,-1,5,50,0,0,0,0,0" style=""/>
      <attribute field="" color="#000000" label=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings yPosColumn="-1" linePlacementFlags="10" placement="2" dist="0" xPosColumn="-1" priority="0" obstacle="0" zIndex="0" showAll="1"/>
  <annotationform>../../qgis28/qgs</annotationform>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <attributeactions/>
  <editform>../../qgis28/qgs</editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath>.</editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
Les formulaires QGIS peuvent avoir une fonction Python qui sera appelée à l'ouverture du formulaire.

Utilisez cette fonction pour ajouter plus de fonctionnalités à vos formulaires.

Entrez le nom de la fonction dans le champ
"Fonction d'initialisation Python"
Voici un exemple à suivre:
"""
from PyQt4.QtGui import QWidget

def my_form_open(dialog, layer, feature):
⇥geom = feature.geometry()
⇥control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>tablayout</editorlayout>
  <attributeEditorForm>
    <attributeEditorContainer name="Général">
      <attributeEditorField index="0" name="cb_code"/>
      <attributeEditorField index="1" name="cb_codeext"/>
      <attributeEditorField index="2" name="cb_etiquet"/>
      <attributeEditorField index="22" name="cb_capafo"/>
      <attributeEditorContainer name="Relations">
        <attributeEditorField index="36" name="cl_code"/>
        <attributeEditorField index="37" name="cl_cb_code"/>
        <attributeEditorField index="3" name="cb_nd1"/>
        <attributeEditorField index="4" name="cb_nd2"/>
      </attributeEditorContainer>
      <attributeEditorContainer name="Référencement">
        <attributeEditorField index="5" name="cb_r1_code"/>
        <attributeEditorField index="6" name="cb_r2_code"/>
        <attributeEditorField index="7" name="cb_r3_code"/>
        <attributeEditorField index="8" name="cb_r4_code"/>
      </attributeEditorContainer>
      <attributeEditorContainer name="Caractéristiques">
        <attributeEditorField index="19" name="cb_typephy"/>
        <attributeEditorField index="20" name="cb_typelog"/>
        <attributeEditorField index="18" name="cb_tech"/>
        <attributeEditorField index="12" name="cb_proptyp"/>
        <attributeEditorField index="9" name="cb_prop"/>
        <attributeEditorField index="10" name="cb_gest"/>
        <attributeEditorField index="11" name="cb_user"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="Modèle">
      <attributeEditorField index="0" name="cb_code"/>
      <attributeEditorField index="1" name="cb_codeext"/>
      <attributeEditorField index="2" name="cb_etiquet"/>
      <attributeEditorField index="22" name="cb_capafo"/>
      <attributeEditorContainer name="Spécifications">
        <attributeEditorField index="21" name="cb_rf_code"/>
        <attributeEditorField index="25" name="cb_modulo"/>
        <attributeEditorField index="26" name="cb_diam"/>
        <attributeEditorField index="27" name="cb_color"/>
      </attributeEditorContainer>
      <attributeEditorRelation relation="t_reference_copier20160113091148384_rf_code_vs_elem_cl_cb_copier20170728030735688_cb_rf_code" name="t_reference_copier20160113091148384_rf_code_vs_elem_cl_cb_copier20170728030735688_cb_rf_code"/>
    </attributeEditorContainer>
    <attributeEditorContainer name="Gestion">
      <attributeEditorField index="0" name="cb_code"/>
      <attributeEditorField index="1" name="cb_codeext"/>
      <attributeEditorField index="2" name="cb_etiquet"/>
      <attributeEditorField index="22" name="cb_capafo"/>
      <attributeEditorContainer name="Déploiement">
        <attributeEditorField index="13" name="cb_statut"/>
        <attributeEditorField index="15" name="cb_dateins"/>
        <attributeEditorField index="16" name="cb_datemes"/>
        <attributeEditorField index="17" name="cb_avct"/>
      </attributeEditorContainer>
      <attributeEditorContainer name="Technique">
        <attributeEditorField index="14" name="cb_etat"/>
        <attributeEditorField index="23" name="cb_fo_disp"/>
        <attributeEditorField index="24" name="cb_fo_util"/>
        <attributeEditorField index="28" name="cb_lgreel"/>
        <attributeEditorField index="29" name="cb_localis"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="Métadonnées">
      <attributeEditorField index="0" name="cb_code"/>
      <attributeEditorField index="1" name="cb_codeext"/>
      <attributeEditorField index="2" name="cb_etiquet"/>
      <attributeEditorField index="22" name="cb_capafo"/>
      <attributeEditorField index="30" name="cb_comment"/>
      <attributeEditorContainer name="Traçabilité CB">
        <attributeEditorField index="31" name="cb_creadat"/>
        <attributeEditorField index="32" name="cb_majdate"/>
        <attributeEditorField index="33" name="cb_majsrc"/>
        <attributeEditorField index="34" name="cb_abddate"/>
        <attributeEditorField index="35" name="cb_abdsrc"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="Cableline (V)">
      <attributeEditorField index="0" name="cb_code"/>
      <attributeEditorField index="1" name="cb_codeext"/>
      <attributeEditorField index="2" name="cb_etiquet"/>
      <attributeEditorField index="22" name="cb_capafo"/>
      <attributeEditorContainer name="Général CL">
        <attributeEditorField index="36" name="cl_code"/>
        <attributeEditorField index="37" name="cl_cb_code"/>
        <attributeEditorField index="38" name="cl_long"/>
        <attributeEditorField index="39" name="cl_comment"/>
      </attributeEditorContainer>
      <attributeEditorContainer name="Géolocalisation CL">
        <attributeEditorField index="40" name="cl_dtclass"/>
        <attributeEditorField index="41" name="cl_geolqlt"/>
        <attributeEditorField index="42" name="cl_geolmod"/>
        <attributeEditorField index="43" name="cl_geolsrc"/>
      </attributeEditorContainer>
      <attributeEditorContainer name="Traçabilité CL">
        <attributeEditorField index="44" name="cl_creadat"/>
        <attributeEditorField index="45" name="cl_majdate"/>
        <attributeEditorField index="46" name="cl_majsrc"/>
        <attributeEditorField index="47" name="cl_abddate"/>
        <attributeEditorField index="48" name="cl_abdsrc"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="Love (R)">
      <attributeEditorField index="0" name="cb_code"/>
      <attributeEditorField index="1" name="cb_codeext"/>
      <attributeEditorField index="2" name="cb_etiquet"/>
      <attributeEditorField index="22" name="cb_capafo"/>
      <attributeEditorRelation relation="t_love20160112184903018_lv_cb_code_vs_elem_cl_cb_copier20170728030735688_cb_code" name="t_love20160112184903018_lv_cb_code_vs_elem_cl_cb_copier20170728030735688_cb_code"/>
    </attributeEditorContainer>
    <attributeEditorContainer name="Fibres (R)">
      <attributeEditorField index="0" name="cb_code"/>
      <attributeEditorField index="1" name="cb_codeext"/>
      <attributeEditorField index="2" name="cb_etiquet"/>
      <attributeEditorField index="22" name="cb_capafo"/>
      <attributeEditorRelation relation="t_fibre20160112184903011_fo_cb_code_vs_elem_cl_cb_copier20170728030735688_cb_code" name="t_fibre20160112184903011_fo_cb_code_vs_elem_cl_cb_copier20170728030735688_cb_code"/>
    </attributeEditorContainer>
  </attributeEditorForm>
  <widgets>
    <widget name="t_fibre20160112184903011_fo_cb_code_vs_elem_cl_cb_copier20170728030735688_cb_code">
      <config/>
    </widget>
    <widget name="t_fibre20160112184903011_fo_cb_code_vs_elem_cl_cb_lv_copier20160721163010599_cb_code">
      <config/>
    </widget>
    <widget name="t_love20160112184903018_lv_cb_code_vs_elem_cl_cb_copier20170728030735688_cb_code">
      <config/>
    </widget>
    <widget name="t_reference_copier20160113091148384_rf_code_vs_elem_cl_cb_copier20170728030735688_cb_rf_code">
      <config/>
    </widget>
  </widgets>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <layerGeometryType>1</layerGeometryType>
</qgis>

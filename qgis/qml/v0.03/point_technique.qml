<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.14.16-Essen" minimumScale="0" maximumScale="200000" simplifyDrawingHints="0" minLabelScale="0" maxLabelScale="1e+08" simplifyDrawingTol="1" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="1" simplifyLocal="1" scaleBasedLabelVisibilityFlag="0">
  <edittypes>
    <edittype widgetv2type="TextEdit" name="pt_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="pt_codeext">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="pt_etiquet">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="pt_nd_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="pt_ad_code">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="ad_code" Layer="t_adresse_copier20160112235144696" Value="ad_code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="pt_gest_do">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="or_code" Layer="t_organisme_copier20160113091148372" Value="or_nom" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="pt_prop_do">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="or_code" Layer="t_organisme_copier20160113091148372" Value="or_nom" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="pt_prop">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="or_code" Layer="t_organisme_copier20160113091148372" Value="or_nom" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="pt_gest">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="or_code" Layer="t_organisme_copier20160113091148372" Value="or_nom" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="pt_user">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="or_code" Layer="t_organisme_copier20160113091148372" Value="or_nom" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="pt_proptyp">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_propriete_type20160112184742293" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="pt_statut">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_statut20160112184742380" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="pt_etat">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_etat_type20160112184742167" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="pt_dateins">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd" field_format="yyyy-MM-dd" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="pt_datemes">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd" field_format="yyyy-MM-dd" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="pt_avct">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_avancement20160112184742087" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="pt_typephy">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_ptech_type_phy20160112184742315" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="pt_typelog">
      <widgetv2config OrderByValue="1" AllowNull="0" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_ptech_type_log20160112184742307" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="pt_rf_code">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="rf_code" Layer="t_reference_copier20160113091148384" Value="rf_code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="pt_nature">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_ptech_nature20160112184742300" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="pt_secu">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="pt_occp">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_occupation_type20160112184742258" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="pt_a_dan">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="pt_a_dtetu">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd" field_format="yyyy-MM-dd" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="pt_a_struc">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="pt_a_haut">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="pt_a_passa">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="pt_a_strat">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="pt_rotatio">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="pt_detec">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="pt_comment">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="pt_creadat">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="pt_majdate">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="pt_majsrc">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="pt_abddate">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="pt_abdsrc">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="nd_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="nd_codeext">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="nd_nom">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="nd_coderat">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="nd_r1_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="nd_r2_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="nd_r3_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="nd_r4_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="nd_voie">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="nd_type">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_noeud_type20160112184742237" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="nd_type_ep">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_occupation_type20160112184742258" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="nd_comment">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="nd_dtclass">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_geoloc_classe20160112184742188" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="nd_geolqlt">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="nd_geolmod">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_geoloc_mode20160112184742195" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="nd_geolsrc">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="nd_creadat">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="nd_majdate">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="nd_majsrc">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="nd_abddate">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="nd_abdsrc">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
  </edittypes>
  <renderer-v2 attr="pt_typephy" forceraster="0" symbollevels="0" type="categorizedSymbol" enableorderby="0">
    <categories>
      <category render="true" symbol="0" value="C" label="Chambre"/>
      <category render="true" symbol="1" value="A" label="Appui"/>
      <category render="true" symbol="2" value="F" label="Ancrage façade"/>
      <category render="true" symbol="3" value="I" label="Point technique intrastite"/>
      <category render="true" symbol="4" value="Z" label="Autre"/>
      <category render="true" symbol="5" value="" label=""/>
    </categories>
    <symbols>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="0">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="0,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="rectangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="area"/>
          <prop k="size" v="2.5"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="1">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="0,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="area"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="2">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="0,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="diamond"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="area"/>
          <prop k="size" v="3"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="3">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="0,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="diamond"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="area"/>
          <prop k="size" v="3"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,0"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="0.5"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="4">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="0,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="diamond"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="area"/>
          <prop k="size" v="3"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,0,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="cross"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="1"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="5">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="0,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="rectangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="area"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,0,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="cross2"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
    </symbols>
    <source-symbol>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="0">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="0,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="rectangle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="area"/>
          <prop k="size" v="2.5"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
      </symbol>
    </source-symbol>
    <colorramp type="gradient" name="[source]">
      <prop k="color1" v="247,251,255,255"/>
      <prop k="color2" v="8,48,107,255"/>
      <prop k="discrete" v="0"/>
      <prop k="stops" v="0.13;222,235,247,255:0.26;198,219,239,255:0.39;158,202,225,255:0.52;107,174,214,255:0.65;66,146,198,255:0.78;33,113,181,255:0.9;8,81,156,255"/>
    </colorramp>
    <invertedcolorramp value="0"/>
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
    <property key="labeling/dist" value="1.5"/>
    <property key="labeling/distInMapUnits" value="false"/>
    <property key="labeling/distMapUnitMaxScale" value="0"/>
    <property key="labeling/distMapUnitMinScale" value="0"/>
    <property key="labeling/distMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/drawLabels" value="true"/>
    <property key="labeling/enabled" value="true"/>
    <property key="labeling/fieldName" value=" if(&quot;pt_nature&quot; IS NOT NULL,  &#xd;&#xa; &quot;pt_nature&quot; || '\n(' || &quot;pt_code&quot; || ')',&#xd;&#xa;'(' || &quot;pt_code&quot; || ')'&#xd;&#xa;)"/>
    <property key="labeling/fitInPolygonOnly" value="false"/>
    <property key="labeling/fontBold" value="false"/>
    <property key="labeling/fontCapitals" value="0"/>
    <property key="labeling/fontFamily" value="MS Shell Dlg 2"/>
    <property key="labeling/fontItalic" value="false"/>
    <property key="labeling/fontLetterSpacing" value="0"/>
    <property key="labeling/fontLimitPixelSize" value="false"/>
    <property key="labeling/fontMaxPixelSize" value="10000"/>
    <property key="labeling/fontMinPixelSize" value="3"/>
    <property key="labeling/fontSize" value="6.5"/>
    <property key="labeling/fontSizeInMapUnits" value="false"/>
    <property key="labeling/fontSizeMapUnitMaxScale" value="0"/>
    <property key="labeling/fontSizeMapUnitMinScale" value="0"/>
    <property key="labeling/fontSizeMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/fontStrikeout" value="false"/>
    <property key="labeling/fontUnderline" value="false"/>
    <property key="labeling/fontWeight" value="50"/>
    <property key="labeling/fontWordSpacing" value="0"/>
    <property key="labeling/formatNumbers" value="false"/>
    <property key="labeling/isExpression" value="true"/>
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
    <property key="labeling/multilineAlign" value="1"/>
    <property key="labeling/multilineHeight" value="1"/>
    <property key="labeling/namedStyle" value="Normal"/>
    <property key="labeling/obstacle" value="true"/>
    <property key="labeling/obstacleFactor" value="1"/>
    <property key="labeling/obstacleType" value="0"/>
    <property key="labeling/offsetType" value="0"/>
    <property key="labeling/placeDirectionSymbol" value="0"/>
    <property key="labeling/placement" value="0"/>
    <property key="labeling/placementFlags" value="0"/>
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
    <property key="labeling/shapeBorderColorB" value="255"/>
    <property key="labeling/shapeBorderColorG" value="255"/>
    <property key="labeling/shapeBorderColorR" value="85"/>
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
    <property key="labeling/shapeTransparency" value="20"/>
    <property key="labeling/shapeType" value="0"/>
    <property key="labeling/textColorA" value="255"/>
    <property key="labeling/textColorB" value="205"/>
    <property key="labeling/textColorG" value="205"/>
    <property key="labeling/textColorR" value="0"/>
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
  <displayfield>pt_code</displayfield>
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
    <DiagramCategory penColor="#000000" labelPlacementMethod="XHeight" penWidth="0" diagramOrientation="Up" minimumSize="0" barWidth="5" penAlpha="255" maxScaleDenominator="1e+08" backgroundColor="#ffffff" transparency="0" width="15" scaleDependency="Area" backgroundAlpha="255" angleOffset="1440" scaleBasedVisibility="0" enabled="0" height="15" sizeType="MM" minScaleDenominator="0">
      <fontProperties description="MS Shell Dlg 2,7.8,-1,5,50,0,0,0,0,0" style=""/>
      <attribute field="" color="#000000" label=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings yPosColumn="-1" linePlacementFlags="10" placement="0" dist="0" xPosColumn="-1" priority="0" obstacle="0" zIndex="0" showAll="1"/>
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
      <attributeEditorField index="0" name="pt_code"/>
      <attributeEditorField index="1" name="pt_codeext"/>
      <attributeEditorField index="2" name="pt_etiquet"/>
      <attributeEditorField index="19" name="pt_nature"/>
      <attributeEditorContainer name="Relations">
        <attributeEditorField index="36" name="nd_code"/>
        <attributeEditorField index="3" name="pt_nd_code"/>
        <attributeEditorField index="4" name="pt_ad_code"/>
        <attributeEditorField index="18" name="pt_rf_code"/>
      </attributeEditorContainer>
      <attributeEditorContainer name="Caractéristiques">
        <attributeEditorField index="16" name="pt_typephy"/>
        <attributeEditorField index="17" name="pt_typelog"/>
        <attributeEditorField index="10" name="pt_proptyp"/>
        <attributeEditorField index="7" name="pt_prop"/>
        <attributeEditorField index="8" name="pt_gest"/>
        <attributeEditorField index="9" name="pt_user"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="GC">
      <attributeEditorField index="0" name="pt_code"/>
      <attributeEditorField index="1" name="pt_codeext"/>
      <attributeEditorField index="2" name="pt_etiquet"/>
      <attributeEditorField index="19" name="pt_nature"/>
      <attributeEditorContainer name="Domanialité">
        <attributeEditorField index="5" name="pt_gest_do"/>
        <attributeEditorField index="6" name="pt_prop_do"/>
      </attributeEditorContainer>
      <attributeEditorField index="28" name="pt_rotatio"/>
      <attributeEditorContainer name="Pose souterraine">
        <attributeEditorField index="20" name="pt_secu"/>
        <attributeEditorField index="29" name="pt_detec"/>
      </attributeEditorContainer>
      <attributeEditorContainer name="Pose aérienne">
        <attributeEditorField index="22" name="pt_a_dan"/>
        <attributeEditorField index="23" name="pt_a_dtetu"/>
        <attributeEditorField index="24" name="pt_a_struc"/>
        <attributeEditorField index="25" name="pt_a_haut"/>
        <attributeEditorField index="26" name="pt_a_passa"/>
        <attributeEditorField index="27" name="pt_a_strat"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="Gestion">
      <attributeEditorField index="0" name="pt_code"/>
      <attributeEditorField index="1" name="pt_codeext"/>
      <attributeEditorField index="2" name="pt_etiquet"/>
      <attributeEditorField index="19" name="pt_nature"/>
      <attributeEditorContainer name="Déploiement">
        <attributeEditorField index="11" name="pt_statut"/>
        <attributeEditorField index="13" name="pt_dateins"/>
        <attributeEditorField index="14" name="pt_datemes"/>
        <attributeEditorField index="15" name="pt_avct"/>
      </attributeEditorContainer>
      <attributeEditorContainer name="Technique">
        <attributeEditorField index="12" name="pt_etat"/>
        <attributeEditorField index="21" name="pt_occp"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="Métadonnées">
      <attributeEditorField index="0" name="pt_code"/>
      <attributeEditorField index="1" name="pt_codeext"/>
      <attributeEditorField index="2" name="pt_etiquet"/>
      <attributeEditorField index="19" name="pt_nature"/>
      <attributeEditorField index="30" name="pt_comment"/>
      <attributeEditorContainer name="Traçabilité">
        <attributeEditorField index="31" name="pt_creadat"/>
        <attributeEditorField index="32" name="pt_majdate"/>
        <attributeEditorField index="33" name="pt_majsrc"/>
        <attributeEditorField index="34" name="pt_abddate"/>
        <attributeEditorField index="35" name="pt_abdsrc"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="Noeud (V)">
      <attributeEditorField index="0" name="pt_code"/>
      <attributeEditorField index="1" name="pt_codeext"/>
      <attributeEditorField index="2" name="pt_etiquet"/>
      <attributeEditorField index="19" name="pt_nature"/>
      <attributeEditorContainer name="Général ND">
        <attributeEditorField index="36" name="nd_code"/>
        <attributeEditorField index="37" name="nd_codeext"/>
        <attributeEditorField index="38" name="nd_nom"/>
        <attributeEditorField index="39" name="nd_coderat"/>
        <attributeEditorField index="40" name="nd_r1_code"/>
        <attributeEditorField index="41" name="nd_r2_code"/>
        <attributeEditorField index="42" name="nd_r3_code"/>
        <attributeEditorField index="43" name="nd_r4_code"/>
        <attributeEditorField index="44" name="nd_voie"/>
        <attributeEditorField index="45" name="nd_type"/>
        <attributeEditorField index="46" name="nd_type_ep"/>
      </attributeEditorContainer>
      <attributeEditorContainer name="Traçabilité ND">
        <attributeEditorField index="47" name="nd_comment"/>
        <attributeEditorField index="48" name="nd_dtclass"/>
        <attributeEditorField index="49" name="nd_geolqlt"/>
        <attributeEditorField index="50" name="nd_geolmod"/>
        <attributeEditorField index="51" name="nd_geolsrc"/>
        <attributeEditorField index="52" name="nd_creadat"/>
        <attributeEditorField index="53" name="nd_majdate"/>
        <attributeEditorField index="54" name="nd_majsrc"/>
        <attributeEditorField index="55" name="nd_abddate"/>
        <attributeEditorField index="56" name="nd_abdsrc"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="BP (R)">
      <attributeEditorField index="0" name="pt_code"/>
      <attributeEditorField index="1" name="pt_codeext"/>
      <attributeEditorField index="2" name="pt_etiquet"/>
      <attributeEditorField index="19" name="pt_nature"/>
      <attributeEditorRelation relation="t_ebp20160112184902997_bp_pt_code_vs_elem_pt_nd_copier20160113022106459_pt_code" name="t_ebp20160112184902997_bp_pt_code_vs_elem_pt_nd_copier20160113022106459_pt_code"/>
    </attributeEditorContainer>
  </attributeEditorForm>
  <widgets>
    <widget name="t_ebp20160112184902997_bp_pt_code_vs_elem_pt_nd_copier20160113022106459_pt_code">
      <config/>
    </widget>
  </widgets>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <layerGeometryType>0</layerGeometryType>
</qgis>

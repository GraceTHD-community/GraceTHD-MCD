<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.14.16-Essen" minimumScale="0" maximumScale="20000" simplifyDrawingHints="0" minLabelScale="0" maxLabelScale="1e+08" simplifyDrawingTol="1" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="1" simplifyLocal="1" scaleBasedLabelVisibilityFlag="0">
  <edittypes>
    <edittype widgetv2type="TextEdit" name="bp_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="bp_etiquet">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="bp_codeext">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="bp_pt_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="bp_lt_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="bp_sf_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="bp_prop">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="or_code" Layer="t_organisme_copier20160113091148372" Value="or_nom" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="bp_gest">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="or_code" Layer="t_organisme_copier20160113091148372" Value="or_nom" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="bp_user">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="or_code" Layer="t_organisme_copier20160113091148372" Value="or_nom" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="bp_proptyp">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_propriete_type20160112184742293" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="bp_statut">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_statut20160112184742380" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="bp_etat">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_etat_type20160112184742167" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="bp_occp">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_occupation_type20160112184742258" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="bp_datemes">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd" field_format="yyyy-MM-dd" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="bp_avct">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_avancement20160112184742087" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="bp_typephy">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_bp_type_phy20160112184742116" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="bp_typelog">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_bp_type_log20160112184742109" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="bp_rf_code">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression=" &quot;rf_type&quot;  = 'BP'" UseCompleter="0" fieldEditable="1" Key="rf_code" Layer="t_reference_copier20160113091148384" Value="rf_code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="bp_entrees">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="bp_ref_kit">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="bp_ca_nb">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="bp_nb_pas">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="bp_linecod">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="bp_oc_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="bp_racco">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_bp_racco20160112184742101" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="bp_comment">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="bp_creadat">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="bp_majdate">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="bp_majsrc">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="bp_abddate">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="bp_abdsrc">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="lt_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="lt_codeext">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="lt_etiquet">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="lt_st_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="lt_prop">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="or_code" Layer="t_organisme_copier20160113091148372" Value="or_nom" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="lt_gest">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="or_code" Layer="t_organisme_copier20160113091148372" Value="or_nom" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="lt_user">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="or_code" Layer="t_organisme_copier20160113091148372" Value="or_nom" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="lt_proptyp">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_propriete_type20160112184742293" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="lt_statut">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_statut20160112184742380" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="lt_etat">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_etat_type20160112184742167" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="lt_dateins">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd" field_format="yyyy-MM-dd" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="lt_datemes">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd" field_format="yyyy-MM-dd" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="lt_local">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="lt_elec">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="lt_clim">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="lt_occp">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="lt_idmajic">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="lt_comment">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="lt_creadat">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="lt_majdate">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="lt_majsrc">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="lt_abddate">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="lt_abdsrc">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="st_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="st_nd_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="st_codeext">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="st_nom">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="st_prop">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="or_code" Layer="t_organisme_copier20160113091148372" Value="or_nom" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="st_gest">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="or_code" Layer="t_organisme_copier20160113091148372" Value="or_nom" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="st_user">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="or_code" Layer="t_organisme_copier20160113091148372" Value="or_nom" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="st_proptyp">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_propriete_type20160112184742293" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="st_statut">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_statut20160112184742380" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="st_etat">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_etat_type20160112184742167" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="st_dateins">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd" field_format="yyyy-MM-dd" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="st_datemes">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd" field_format="yyyy-MM-dd" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="st_avct">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_avancement20160112184742087" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="st_typephy">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_site_type_phy20160112184742357" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="st_typelog">
      <widgetv2config OrderByValue="0" AllowNull="0" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_site_type_log20160112184742350" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="st_nblines">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="st_ad_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="st_comment">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="st_creadat">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="st_majdate">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="st_majsrc">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="st_abddate">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="st_abdsrc">
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
    <edittype widgetv2type="TextEdit" name="nd_type_ep">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
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
  <renderer-v2 forceraster="0" symbollevels="0" type="singleSymbol" enableorderby="0">
    <symbols>
      <symbol alpha="1" clip_to_extent="1" type="marker" name="0">
        <layer pass="0" class="SimpleMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,0,0,255"/>
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
          <prop k="size" v="3.6"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
        </layer>
        <layer pass="0" class="FontMarker" locked="0">
          <prop k="angle" v="0"/>
          <prop k="chr" v="B"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="font" v="Dingbats"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="size" v="2.7"/>
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
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
    <property key="labeling/bufferDraw" value="true"/>
    <property key="labeling/bufferJoinStyle" value="64"/>
    <property key="labeling/bufferNoFill" value="false"/>
    <property key="labeling/bufferSize" value="0.7"/>
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
    <property key="labeling/fieldName" value="bp_code"/>
    <property key="labeling/fitInPolygonOnly" value="false"/>
    <property key="labeling/fontBold" value="false"/>
    <property key="labeling/fontCapitals" value="0"/>
    <property key="labeling/fontFamily" value="MS Shell Dlg 2"/>
    <property key="labeling/fontItalic" value="false"/>
    <property key="labeling/fontLetterSpacing" value="0"/>
    <property key="labeling/fontLimitPixelSize" value="false"/>
    <property key="labeling/fontMaxPixelSize" value="10000"/>
    <property key="labeling/fontMinPixelSize" value="3"/>
    <property key="labeling/fontSize" value="6.8"/>
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
    <property key="labeling/shapeBorderColorB" value="128"/>
    <property key="labeling/shapeBorderColorG" value="128"/>
    <property key="labeling/shapeBorderColorR" value="128"/>
    <property key="labeling/shapeBorderWidth" value="0"/>
    <property key="labeling/shapeBorderWidthMapUnitMaxScale" value="0"/>
    <property key="labeling/shapeBorderWidthMapUnitMinScale" value="0"/>
    <property key="labeling/shapeBorderWidthMapUnitScale" value="0,0,0,0,0,0"/>
    <property key="labeling/shapeBorderWidthUnits" value="1"/>
    <property key="labeling/shapeDraw" value="false"/>
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
    <property key="labeling/shapeType" value="0"/>
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
  <displayfield>bp_code</displayfield>
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
      <attributeEditorField index="0" name="bp_code"/>
      <attributeEditorField index="1" name="bp_etiquet"/>
      <attributeEditorField index="2" name="bp_codeext"/>
      <attributeEditorContainer name="Relations">
        <attributeEditorField index="77" name="nd_code"/>
        <attributeEditorField index="55" name="st_nd_code"/>
        <attributeEditorField index="54" name="st_code"/>
        <attributeEditorField index="34" name="lt_st_code"/>
        <attributeEditorField index="31" name="lt_code"/>
        <attributeEditorField index="4" name="bp_lt_code"/>
        <attributeEditorField index="3" name="bp_pt_code"/>
        <attributeEditorField index="5" name="bp_sf_code"/>
      </attributeEditorContainer>
      <attributeEditorContainer name="Caractéristiques">
        <attributeEditorField index="15" name="bp_typephy"/>
        <attributeEditorField index="16" name="bp_typelog"/>
        <attributeEditorField index="9" name="bp_proptyp"/>
        <attributeEditorField index="6" name="bp_prop"/>
        <attributeEditorField index="7" name="bp_gest"/>
        <attributeEditorField index="8" name="bp_user"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="Modèle">
      <attributeEditorField index="0" name="bp_code"/>
      <attributeEditorField index="1" name="bp_etiquet"/>
      <attributeEditorField index="2" name="bp_codeext"/>
      <attributeEditorContainer name="Spécifications">
        <attributeEditorField index="17" name="bp_rf_code"/>
        <attributeEditorField index="18" name="bp_entrees"/>
        <attributeEditorField index="19" name="bp_ref_kit"/>
        <attributeEditorField index="20" name="bp_ca_nb"/>
        <attributeEditorField index="21" name="bp_nb_pas"/>
      </attributeEditorContainer>
      <attributeEditorRelation relation="t_reference_copier20160113091148384_rf_code_vs_elem_bp_pt_nd_copier20160113002313929_bp_rf_code" name="t_reference_copier20160113091148384_rf_code_vs_elem_bp_pt_nd_copier20160113002313929_bp_rf_code"/>
    </attributeEditorContainer>
    <attributeEditorContainer name="Gestion">
      <attributeEditorField index="0" name="bp_code"/>
      <attributeEditorField index="1" name="bp_etiquet"/>
      <attributeEditorField index="2" name="bp_codeext"/>
      <attributeEditorContainer name="Déploiement">
        <attributeEditorField index="10" name="bp_statut"/>
        <attributeEditorField index="13" name="bp_datemes"/>
        <attributeEditorField index="14" name="bp_avct"/>
      </attributeEditorContainer>
      <attributeEditorContainer name="Technique">
        <attributeEditorField index="22" name="bp_linecod"/>
        <attributeEditorField index="23" name="bp_oc_code"/>
        <attributeEditorField index="24" name="bp_racco"/>
        <attributeEditorField index="11" name="bp_etat"/>
        <attributeEditorField index="12" name="bp_occp"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="Métadonnées">
      <attributeEditorField index="0" name="bp_code"/>
      <attributeEditorField index="1" name="bp_etiquet"/>
      <attributeEditorField index="2" name="bp_codeext"/>
      <attributeEditorField index="25" name="bp_comment"/>
      <attributeEditorContainer name="Traçabilité">
        <attributeEditorField index="26" name="bp_creadat"/>
        <attributeEditorField index="27" name="bp_majdate"/>
        <attributeEditorField index="28" name="bp_majsrc"/>
        <attributeEditorField index="29" name="bp_abddate"/>
        <attributeEditorField index="30" name="bp_abdsrc"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="Local tech (V)">
      <attributeEditorField index="0" name="bp_code"/>
      <attributeEditorField index="1" name="bp_etiquet"/>
      <attributeEditorField index="2" name="bp_codeext"/>
      <attributeEditorContainer name="Général LT">
        <attributeEditorField index="31" name="lt_code"/>
        <attributeEditorField index="32" name="lt_codeext"/>
        <attributeEditorField index="33" name="lt_etiquet"/>
        <attributeEditorField index="34" name="lt_st_code"/>
        <attributeEditorField index="35" name="lt_prop"/>
        <attributeEditorField index="36" name="lt_gest"/>
        <attributeEditorField index="37" name="lt_user"/>
        <attributeEditorField index="38" name="lt_proptyp"/>
        <attributeEditorField index="43" name="lt_local"/>
        <attributeEditorField index="44" name="lt_elec"/>
        <attributeEditorField index="45" name="lt_clim"/>
        <attributeEditorField index="46" name="lt_occp"/>
        <attributeEditorField index="47" name="lt_idmajic"/>
      </attributeEditorContainer>
      <attributeEditorContainer name="Gestion LT">
        <attributeEditorField index="39" name="lt_statut"/>
        <attributeEditorField index="41" name="lt_dateins"/>
        <attributeEditorField index="42" name="lt_datemes"/>
        <attributeEditorField index="40" name="lt_etat"/>
      </attributeEditorContainer>
      <attributeEditorContainer name="Traçabilité LT">
        <attributeEditorField index="48" name="lt_comment"/>
        <attributeEditorField index="49" name="lt_creadat"/>
        <attributeEditorField index="50" name="lt_majdate"/>
        <attributeEditorField index="51" name="lt_majsrc"/>
        <attributeEditorField index="52" name="lt_abddate"/>
        <attributeEditorField index="53" name="lt_abdsrc"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="Site tech (V)">
      <attributeEditorField index="0" name="bp_code"/>
      <attributeEditorField index="1" name="bp_etiquet"/>
      <attributeEditorField index="2" name="bp_codeext"/>
      <attributeEditorContainer name="Général ST">
        <attributeEditorField index="54" name="st_code"/>
        <attributeEditorField index="55" name="st_nd_code"/>
        <attributeEditorField index="56" name="st_codeext"/>
        <attributeEditorField index="57" name="st_nom"/>
        <attributeEditorField index="58" name="st_prop"/>
        <attributeEditorField index="59" name="st_gest"/>
        <attributeEditorField index="60" name="st_user"/>
        <attributeEditorField index="61" name="st_proptyp"/>
        <attributeEditorField index="67" name="st_typephy"/>
        <attributeEditorField index="68" name="st_typelog"/>
        <attributeEditorField index="69" name="st_nblines"/>
        <attributeEditorField index="70" name="st_ad_code"/>
      </attributeEditorContainer>
      <attributeEditorContainer name="Gestion ST">
        <attributeEditorField index="62" name="st_statut"/>
        <attributeEditorField index="64" name="st_dateins"/>
        <attributeEditorField index="65" name="st_datemes"/>
        <attributeEditorField index="66" name="st_avct"/>
        <attributeEditorField index="63" name="st_etat"/>
      </attributeEditorContainer>
      <attributeEditorContainer name="Traçabilité ST">
        <attributeEditorField index="71" name="st_comment"/>
        <attributeEditorField index="72" name="st_creadat"/>
        <attributeEditorField index="73" name="st_majdate"/>
        <attributeEditorField index="74" name="st_majsrc"/>
        <attributeEditorField index="75" name="st_abddate"/>
        <attributeEditorField index="76" name="st_abdsrc"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="Noeud (V)">
      <attributeEditorField index="0" name="bp_code"/>
      <attributeEditorField index="1" name="bp_etiquet"/>
      <attributeEditorField index="2" name="bp_codeext"/>
      <attributeEditorContainer name="Général ND">
        <attributeEditorField index="77" name="nd_code"/>
        <attributeEditorField index="78" name="nd_codeext"/>
        <attributeEditorField index="79" name="nd_nom"/>
        <attributeEditorField index="80" name="nd_coderat"/>
        <attributeEditorField index="81" name="nd_r1_code"/>
        <attributeEditorField index="82" name="nd_r2_code"/>
        <attributeEditorField index="83" name="nd_r3_code"/>
        <attributeEditorField index="84" name="nd_r4_code"/>
        <attributeEditorField index="85" name="nd_voie"/>
        <attributeEditorField index="86" name="nd_type"/>
        <attributeEditorField index="87" name="nd_type_ep"/>
      </attributeEditorContainer>
      <attributeEditorContainer name="Traçabilité ND">
        <attributeEditorField index="88" name="nd_comment"/>
        <attributeEditorField index="89" name="nd_dtclass"/>
        <attributeEditorField index="90" name="nd_geolqlt"/>
        <attributeEditorField index="91" name="nd_geolmod"/>
        <attributeEditorField index="92" name="nd_geolsrc"/>
        <attributeEditorField index="93" name="nd_creadat"/>
        <attributeEditorField index="94" name="nd_majdate"/>
        <attributeEditorField index="95" name="nd_majsrc"/>
        <attributeEditorField index="96" name="nd_abddate"/>
        <attributeEditorField index="97" name="nd_abdsrc"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="Cassette (R)">
      <attributeEditorField index="0" name="bp_code"/>
      <attributeEditorField index="1" name="bp_etiquet"/>
      <attributeEditorField index="2" name="bp_codeext"/>
      <attributeEditorRelation relation="t_cassette20160112184902959_cs_bp_code_vs_elem_bp_pt_nd_copier20160113002313929_bp_code" name="t_cassette20160112184902959_cs_bp_code_vs_elem_bp_pt_nd_copier20160113002313929_bp_code"/>
    </attributeEditorContainer>
  </attributeEditorForm>
  <widgets>
    <widget name="t_cassette20160112184902959_cs_bp_code_vs_elem_bp_pt_nd_copier20160113002313929_bp_code">
      <config/>
    </widget>
    <widget name="t_reference_copier20160113091148384_rf_code_vs_elem_bp_pt_nd_copier20160113002313929_bp_rf_code">
      <config/>
    </widget>
  </widgets>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <layerGeometryType>0</layerGeometryType>
</qgis>

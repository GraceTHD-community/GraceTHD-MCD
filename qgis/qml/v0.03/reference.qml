<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.14.16-Essen" minimumScale="-4.65661e-10" maximumScale="1e+08" hasScaleBasedVisibilityFlag="0">
  <edittypes>
    <edittype widgetv2type="TextEdit" name="rf_code">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="rf_type">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_reference_type20160112184742336" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="rf_fabric">
      <widgetv2config OrderByValue="1" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="or_code" Layer="t_organisme_copier20160113091148372" Value="or_nom" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="rf_design">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="ValueRelation" name="rf_etat">
      <widgetv2config OrderByValue="0" AllowNull="1" FilterExpression="" UseCompleter="0" fieldEditable="1" Key="code" Layer="l_reference_etat20160112184742329" Value="code" labelOnTop="0" AllowMulti="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="rf_comment">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="rf_creadat">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="rf_majdate">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="rf_majsrc">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="DateTime" name="rf_abddate">
      <widgetv2config fieldEditable="1" calendar_popup="0" allow_null="1" display_format="yyyy-MM-dd HH:mm:ss" field_format="yyyy-MM-dd HH:mm:ss" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="rf_abdsrc">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
  </edittypes>
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
    <attributeEditorContainer name="Référence">
      <attributeEditorField index="0" name="rf_code"/>
      <attributeEditorContainer name="Caractéristiques">
        <attributeEditorField index="1" name="rf_type"/>
        <attributeEditorField index="2" name="rf_fabric"/>
        <attributeEditorField index="3" name="rf_design"/>
        <attributeEditorField index="4" name="rf_etat"/>
      </attributeEditorContainer>
      <attributeEditorContainer name="Traçabilité">
        <attributeEditorField index="5" name="rf_comment"/>
        <attributeEditorField index="6" name="rf_creadat"/>
        <attributeEditorField index="7" name="rf_majdate"/>
        <attributeEditorField index="8" name="rf_majsrc"/>
        <attributeEditorField index="9" name="rf_abddate"/>
        <attributeEditorField index="10" name="rf_abdsrc"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
  </attributeEditorForm>
  <widgets>
    <widget name="j_or_nom">
      <config>
        <option key="IsMultiline" value="false"/>
        <option key="UseHtml" value="false"/>
      </config>
    </widget>
  </widgets>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <layerGeometryType>4</layerGeometryType>
</qgis>

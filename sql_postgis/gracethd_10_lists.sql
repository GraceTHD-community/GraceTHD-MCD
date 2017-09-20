/*GraceTHD-MCD v2.0.1*/
/*Creation des tables qui vont accueillir les listes de valeurs*/
/* gracethd_10_lists.sql */
/*PostGIS*/

/* Owner : GraceTHD-Community - http://gracethd-community.github.io/ */
/* Author : stephane dot byache at aleno dot eu */
/* Rev. date : 17/07/2017 */

/* ********************************************************************
    This file is part of GraceTHD.

    GraceTHD is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    GraceTHD is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with GraceTHD.  If not, see <http://www.gnu.org/licenses/>.
*********************************************************************** */

SET search_path TO gracethd, public;

DROP TABLE IF EXISTS l_adresse_etat CASCADE;
DROP TABLE IF EXISTS l_avancement CASCADE;
DROP TABLE IF EXISTS l_baie_type CASCADE;
DROP TABLE IF EXISTS l_bp_racco CASCADE;
DROP TABLE IF EXISTS l_bp_type_log CASCADE;
DROP TABLE IF EXISTS l_bp_type_phy CASCADE;
DROP TABLE IF EXISTS l_cable_type CASCADE;
DROP TABLE IF EXISTS l_cassette_type CASCADE;
DROP TABLE IF EXISTS l_conduite_type CASCADE;
DROP TABLE IF EXISTS l_clim_type CASCADE;
DROP TABLE IF EXISTS l_doc_tab CASCADE;
DROP TABLE IF EXISTS l_doc_type CASCADE;
DROP TABLE IF EXISTS l_etat_type CASCADE;
DROP TABLE IF EXISTS l_fo_color CASCADE;
DROP TABLE IF EXISTS l_fo_type CASCADE;
DROP TABLE IF EXISTS l_geoloc_classe CASCADE;
DROP TABLE IF EXISTS l_geoloc_mode CASCADE;
DROP TABLE IF EXISTS l_immeuble_type CASCADE;
DROP TABLE IF EXISTS l_implantation_type CASCADE;
DROP TABLE IF EXISTS l_infra_nature CASCADE;
DROP TABLE IF EXISTS l_infra_type_log CASCADE;
DROP TABLE IF EXISTS l_masque_face CASCADE;
DROP TABLE IF EXISTS l_noeud_type CASCADE;
DROP TABLE IF EXISTS l_nro_etat CASCADE;
DROP TABLE IF EXISTS l_nro_type CASCADE;
DROP TABLE IF EXISTS l_occupation_type CASCADE;
DROP TABLE IF EXISTS l_passage_type CASCADE;
DROP TABLE IF EXISTS l_pose_type CASCADE;
DROP TABLE IF EXISTS l_position_fonction CASCADE;
DROP TABLE IF EXISTS l_position_type CASCADE;
DROP TABLE IF EXISTS l_propriete_type CASCADE;
DROP TABLE IF EXISTS l_ptech_nature CASCADE;
DROP TABLE IF EXISTS l_ptech_type_log CASCADE;
DROP TABLE IF EXISTS l_ptech_type_phy CASCADE;
DROP TABLE IF EXISTS l_qualite_info CASCADE;
DROP TABLE IF EXISTS l_reference_etat CASCADE;
DROP TABLE IF EXISTS l_reference_type CASCADE;
DROP TABLE IF EXISTS l_site_emission_type CASCADE;
DROP TABLE IF EXISTS l_site_type_log CASCADE;
DROP TABLE IF EXISTS l_site_type_phy CASCADE;
DROP TABLE IF EXISTS l_sro_etat CASCADE;
DROP TABLE IF EXISTS l_sro_emplacement CASCADE;
DROP TABLE IF EXISTS l_statut CASCADE;
DROP TABLE IF EXISTS l_suf_racco CASCADE;
DROP TABLE IF EXISTS l_suf_type CASCADE;
DROP TABLE IF EXISTS l_technologie_type CASCADE;
DROP TABLE IF EXISTS l_tiroir_type CASCADE;
DROP TABLE IF EXISTS l_tube CASCADE;
DROP TABLE IF EXISTS l_zone_densite CASCADE;



CREATE TABLE l_adresse_etat(code VARCHAR(2), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_adresse_etat_pk" PRIMARY KEY (code));
CREATE TABLE l_avancement(code VARCHAR(1), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_avancement_pk" PRIMARY KEY (code));
CREATE TABLE l_baie_type(code VARCHAR(10), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_baie_type_pk" PRIMARY KEY (code));
CREATE TABLE l_bp_racco(code VARCHAR(6), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_bp_racco_pk" PRIMARY KEY (code));
CREATE TABLE l_bp_type_log(code VARCHAR(3), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_bp_type_log_pk" PRIMARY KEY (code));
CREATE TABLE l_bp_type_phy(code VARCHAR(5), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_bp_type_phy_pk" PRIMARY KEY (code));
CREATE TABLE l_cable_type(code VARCHAR(1), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_cable_type_pk" PRIMARY KEY (code));
CREATE TABLE l_cassette_type(code VARCHAR(1), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_cassette_type_pk" PRIMARY KEY (code));
CREATE TABLE l_conduite_type(code VARCHAR(10), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_conduite_type_pk" PRIMARY KEY (code));
CREATE TABLE l_clim_type(code VARCHAR(6), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_clim_type_pk" PRIMARY KEY (code));
CREATE TABLE l_doc_tab(code VARCHAR(2), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_doc_tab_pk" PRIMARY KEY (code));
CREATE TABLE l_doc_type(code VARCHAR(3), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_doc_type_pk" PRIMARY KEY (code));
CREATE TABLE l_etat_type(code VARCHAR(3), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_etat_type_pk" PRIMARY KEY (code));
CREATE TABLE l_fo_color(code VARCHAR(10), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_fo_color_pk" PRIMARY KEY (code));
CREATE TABLE l_fo_type(code VARCHAR(20), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_fo_type_pk" PRIMARY KEY (code));
CREATE TABLE l_geoloc_classe(code VARCHAR(2), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_geoloc_classe_pk" PRIMARY KEY (code));
CREATE TABLE l_geoloc_mode(code VARCHAR(4), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_geoloc_mode_pk" PRIMARY KEY (code));
CREATE TABLE l_immeuble_type(code VARCHAR(1), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_immeuble_type_pk" PRIMARY KEY (code));
CREATE TABLE l_implantation_type(code VARCHAR(2), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_implantation_type_pk" PRIMARY KEY (code));
CREATE TABLE l_infra_nature(code VARCHAR(3), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_infra_nature_pk" PRIMARY KEY (code));
CREATE TABLE l_infra_type_log(code VARCHAR(2), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_infra_type_log_pk" PRIMARY KEY (code));
CREATE TABLE l_masque_face(code VARCHAR(2), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_masque_face_pk" PRIMARY KEY (code));
CREATE TABLE l_noeud_type(code VARCHAR(2), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_noeud_type_pk" PRIMARY KEY (code));
CREATE TABLE l_nro_etat(code VARCHAR(2), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_nro_etat_pk" PRIMARY KEY (code));
CREATE TABLE l_nro_type(code VARCHAR(7), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_nro_type_pk" PRIMARY KEY (code));
CREATE TABLE l_occupation_type(code VARCHAR(10), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_occupation_type_pk" PRIMARY KEY (code));
CREATE TABLE l_passage_type(code VARCHAR(10), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_passage_type_pk" PRIMARY KEY (code));
CREATE TABLE l_pose_type(code VARCHAR(20), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_pose_type_pk" PRIMARY KEY (code));
CREATE TABLE l_position_fonction(code VARCHAR(2), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_position_fonction_pk" PRIMARY KEY (code));
CREATE TABLE l_position_type(code VARCHAR(10), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_position_type_pk" PRIMARY KEY (code));
CREATE TABLE l_propriete_type(code VARCHAR(3), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_propriete_type_pk" PRIMARY KEY (code));
CREATE TABLE l_ptech_nature(code VARCHAR(20), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_ptech_nature_pk" PRIMARY KEY (code));
CREATE TABLE l_ptech_type_log(code VARCHAR(1), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_ptech_type_log_pk" PRIMARY KEY (code));
CREATE TABLE l_ptech_type_phy(code VARCHAR(1), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_ptech_type_phy_pk" PRIMARY KEY (code));
CREATE TABLE l_qualite_info(code VARCHAR(3), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_qualite_info_pk" PRIMARY KEY (code));
CREATE TABLE l_reference_etat(code VARCHAR(1), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_reference_etat_pk" PRIMARY KEY (code));
CREATE TABLE l_reference_type(code VARCHAR(2), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_reference_type_pk" PRIMARY KEY (code));
CREATE TABLE l_site_emission_type(code VARCHAR(10), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_site_emission_type_pk" PRIMARY KEY (code));
CREATE TABLE l_site_type_log(code VARCHAR(10), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_site_type_log_pk" PRIMARY KEY (code));
CREATE TABLE l_site_type_phy(code VARCHAR(3), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_site_type_phy_pk" PRIMARY KEY (code));
CREATE TABLE l_sro_etat(code VARCHAR(2), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_sro_etat_pk" PRIMARY KEY (code));
CREATE TABLE l_sro_emplacement(code VARCHAR(3), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_sro_emplacement_pk" PRIMARY KEY (code));
CREATE TABLE l_statut(code VARCHAR(3), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_statut_pk" PRIMARY KEY (code));
CREATE TABLE l_suf_racco(code VARCHAR(2), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_suf_racco_pk" PRIMARY KEY (code));
CREATE TABLE l_suf_type(code VARCHAR(1), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_suf_type_pk" PRIMARY KEY (code));
CREATE TABLE l_technologie_type(code VARCHAR(10), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_technologie_type_pk" PRIMARY KEY (code));
CREATE TABLE l_tiroir_type(code VARCHAR(10), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_tiroir_type_pk" PRIMARY KEY (code));
CREATE TABLE l_tube(code VARCHAR(5), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_tube_pk" PRIMARY KEY (code));
CREATE TABLE l_zone_densite(code VARCHAR(1), libelle VARCHAR(254), definition VARCHAR(254), CONSTRAINT "l_zone_densite_pk" PRIMARY KEY (code));


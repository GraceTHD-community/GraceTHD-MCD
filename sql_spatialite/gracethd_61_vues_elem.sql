/*GraceTHD-MCD v2.0.1*/
/*Insertion des valeurs dans les listes*/
/* gracethd_61_vues_elem.sql */
/*Spatialite*/

/* Owner : GraceTHD-Community - http://gracethd-community.github.io/ */
/* Author : stephane dot byache at aleno dot eu */
/* Rev. date : 07/09/2017 */

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

/*######################################*/
/*TODO*/
/*- vs_elem_cb_cd : un câble peut passer par plusieurs conduites. */
/*- vs_elem_sf_ad_nd : les suf avec les infos des adresses*/
/*- vs_elem_cb_cl_lv : Vérifier comment ça se passe s il y a plusieurs loves sur un câble. */
/*- Cassettes : 
	- manquera vue vs_elem_cs_ti_ba_lt_st_nd dans MCD 2.1
	- une vue qui fait l'union localisée de toutes les cassettes  (vs_elem_cs_bp_lt_st_nd, vs_elem_cs_bp_pt_nd, vs_elem_cs_ti_ba_lt_st_nd) ? Soit avec tous les attributs, même si vides, soit en oubliant les att de pt, lt, ti, ... Peut-être une vue obj et pas une vue elem ? 
*/

/*######################################*/
/*VUES ELEMENTAIRES SPATIALES*/
/*Les vues élémentaires servent à consulter les données brutes dans un SIG*/ 


/*vs_elem_sf_nd*/
DROP VIEW IF EXISTS vs_elem_sf_nd;
CREATE VIEW vs_elem_sf_nd AS
SELECT 
	nd.ROWID AS ROWID, 
	sf.sf_code AS sf_code, sf.sf_nd_code AS sf_nd_code,
    sf.sf_ad_code AS sf_ad_code, sf.sf_zp_code AS sf_zp_code,
    sf.sf_escal AS sf_escal, sf.sf_etage AS sf_etage,
    sf.sf_oper AS sf_oper, sf.sf_type AS sf_type,
    sf.sf_prop AS sf_prop, sf.sf_resid AS sf_resid,
    sf.sf_local AS sf_local, sf.sf_racco AS sf_racco,
    sf.sf_comment AS sf_comment, sf.sf_creadat AS sf_creadat,
    sf.sf_majdate AS sf_majdate, sf.sf_majsrc AS sf_majsrc,
    sf.sf_abddate AS sf_abddate, sf.sf_abdsrc AS sf_abdsrc,
    nd.nd_code AS nd_code,
    nd.nd_codeext AS nd_codeext, nd.nd_nom AS nd_nom,
    nd.nd_coderat AS nd_coderat, nd.nd_r1_code AS nd_r1_code,
    nd.nd_r2_code AS nd_r2_code, nd.nd_r3_code AS nd_r3_code,
    nd.nd_r4_code AS nd_r4_code, nd.nd_voie AS nd_voie,
    nd.nd_type AS nd_type, nd.nd_type_ep AS nd_type_ep,
    nd.nd_comment AS nd_comment, nd.nd_dtclass AS nd_dtclass,
    nd.nd_geolqlt AS nd_geolqlt, nd.nd_geolmod AS nd_geolmod,
    nd.nd_geolsrc AS nd_geolsrc, nd.nd_creadat AS nd_creadat,
    nd.nd_majdate AS nd_majdate, nd.nd_majsrc AS nd_majsrc,
    nd.nd_abddate AS nd_abddate, nd.nd_abdsrc AS nd_abdsrc,
    nd.geom AS geom
FROM t_suf AS sf, t_noeud AS nd 
WHERE sf.sf_nd_code = nd.nd_code;

INSERT INTO views_geometry_columns VALUES
('vs_elem_sf_nd', 'geom', 'rowid', 't_noeud', 'geom', 1); 

/*vs_elem_bp_sf_nd*/
DROP VIEW IF EXISTS vs_elem_bp_sf_nd;
CREATE VIEW vs_elem_bp_sf_nd AS
SELECT 
	nd.ROWID AS ROWID, 
	bp_code AS bp_code, bp_etiquet AS bp_etiquet,
    bp_codeext AS bp_codeext, bp_pt_code AS bp_pt_code,
    bp_lt_code AS bp_lt_code, bp_sf_code AS bp_sf_code,
    bp_prop AS bp_prop, bp_gest AS bp_gest, bp_user AS bp_user,
    bp_proptyp AS bp_proptyp, bp_statut AS bp_statut,
    bp_etat AS bp_etat, bp_occp AS bp_occp, bp_datemes AS bp_datemes,
    bp_avct AS bp_avct, bp_typephy AS bp_typephy,
    bp_typelog AS bp_typelog, bp_rf_code AS bp_rf_code,
    bp_entrees AS bp_entrees, bp_ref_kit AS bp_ref_kit,
    bp_ca_nb AS bp_ca_nb, bp_nb_pas AS bp_nb_pas,
    bp_linecod AS bp_linecod, bp_oc_code AS bp_oc_code,
    bp_racco AS bp_racco, bp_comment AS bp_comment,
    bp_creadat AS bp_creadat, bp_majdate AS bp_majdate,
    bp_majsrc AS bp_majsrc, bp_abddate AS bp_abddate,
    bp_abdsrc AS bp_abdsrc,
	sf.sf_code AS sf_code, sf.sf_nd_code AS sf_nd_code,
    sf.sf_ad_code AS sf_ad_code, sf.sf_zp_code AS sf_zp_code,
    sf.sf_escal AS sf_escal, sf.sf_etage AS sf_etage,
    sf.sf_oper AS sf_oper, sf.sf_type AS sf_type,
    sf.sf_prop AS sf_prop, sf.sf_resid AS sf_resid,
    sf.sf_local AS sf_local, sf.sf_racco AS sf_racco,
    sf.sf_comment AS sf_comment, sf.sf_creadat AS sf_creadat,
    sf.sf_majdate AS sf_majdate, sf.sf_majsrc AS sf_majsrc,
    sf.sf_abddate AS sf_abddate, sf.sf_abdsrc AS sf_abdsrc,
    nd.nd_code AS nd_code,
    nd.nd_codeext AS nd_codeext, nd.nd_nom AS nd_nom,
    nd.nd_coderat AS nd_coderat, nd.nd_r1_code AS nd_r1_code,
    nd.nd_r2_code AS nd_r2_code, nd.nd_r3_code AS nd_r3_code,
    nd.nd_r4_code AS nd_r4_code, nd.nd_voie AS nd_voie,
    nd.nd_type AS nd_type, nd.nd_type_ep AS nd_type_ep,
    nd.nd_comment AS nd_comment, nd.nd_dtclass AS nd_dtclass,
    nd.nd_geolqlt AS nd_geolqlt, nd.nd_geolmod AS nd_geolmod,
    nd.nd_geolsrc AS nd_geolsrc, nd.nd_creadat AS nd_creadat,
    nd.nd_majdate AS nd_majdate, nd.nd_majsrc AS nd_majsrc,
    nd.nd_abddate AS nd_abddate, nd.nd_abdsrc AS nd_abdsrc,
    nd.geom AS geom
FROM t_ebp AS bp, t_suf AS sf, t_noeud AS nd 
WHERE 
bp.bp_sf_code = sf.sf_code
AND sf.sf_nd_code = nd.nd_code;

INSERT INTO views_geometry_columns VALUES
('vs_elem_bp_sf_nd', 'geom', 'rowid', 't_noeud', 'geom', 1); 


/*vs_elem_st_nd*/
DROP VIEW IF EXISTS vs_elem_st_nd;
CREATE VIEW vs_elem_st_nd AS
SELECT nd.rowid AS rowid,
        st.st_code AS st_code, st.st_nd_code AS st_nd_code,
        st.st_codeext AS st_codeext, st.st_nom AS st_nom,
        st.st_prop AS st_prop, st.st_gest AS st_gest,
        st.st_user AS st_user, st.st_proptyp AS st_proptyp,
        st.st_statut AS st_statut, st.st_etat AS st_etat,
        st.st_dateins AS st_dateins, st_datemes AS st_datemes, 
		st.st_avct AS st_avct,
        st.st_typephy AS st_typephy, st.st_typelog AS st_typelog,
        st.st_nblines AS st_nblines, st.st_ad_code AS st_ad_code,
        st.st_comment AS st_comment, st.st_creadat AS st_creadat,
        st.st_majdate AS st_majdate, st.st_majsrc AS st_majsrc,
        st.st_abddate AS st_abddate, st_abdsrc AS st_abdsrc,
        nd.nd_code AS nd_code, nd.nd_codeext AS nd_codeext,
        nd.nd_nom AS nd_nom, nd.nd_coderat AS nd_coderat,
        nd.nd_r1_code AS nd_r1_code, nd.nd_r2_code AS nd_r2_code,
        nd.nd_r3_code AS nd_r3_code, nd.nd_r4_code AS nd_r4_code,
        nd.nd_voie AS nd_voie, nd.nd_type AS nd_type,
        nd.nd_type_ep AS nd_type_ep, nd.nd_comment AS nd_comment,
        nd.nd_dtclass AS nd_dtclass, nd.nd_geolqlt AS nd_geolqlt,
        nd.nd_geolmod AS nd_geolmod, nd.nd_geolsrc AS nd_geolsrc,
        nd.nd_creadat AS nd_creadat, nd.nd_majdate AS nd_majdate,
        nd.nd_majsrc AS nd_majsrc, nd.nd_abddate AS nd_abddate,
        nd.nd_abdsrc AS nd_abdsrc, nd.geom AS geom
FROM
   t_sitetech AS st,
   t_noeud AS nd
WHERE
   st.st_nd_code = nd.nd_code;

INSERT INTO views_geometry_columns VALUES
('vs_elem_st_nd', 'geom', 'rowid', 't_noeud', 'geom', 1); 

/*vs_elem_lt_st_nd*/
DROP VIEW IF EXISTS vs_elem_lt_st_nd;
CREATE VIEW vs_elem_lt_st_nd AS
SELECT nd.rowid AS rowid,
	lt.lt_code AS lt_code, lt.lt_codeext AS lt_codeext,
    lt.lt_etiquet AS lt_etiquet, lt.lt_st_code AS lt_st_code,
    lt.lt_prop AS lt_prop, lt.lt_gest AS lt_gest,
    lt.lt_user AS lt_user, lt.lt_proptyp AS lt_proptyp,
    lt.lt_statut AS lt_statut, lt.lt_etat AS lt_etat,
    lt.lt_dateins AS lt_dateins, lt.lt_datemes AS lt_datemes,
    lt.lt_local AS lt_local, lt.lt_elec AS lt_elec,
    lt.lt_clim AS lt_clim, lt.lt_occp AS lt_occp,
    lt.lt_idmajic AS lt_idmajic, lt.lt_comment AS lt_comment,
    lt.lt_creadat AS lt_creadat, lt.lt_majdate AS lt_majdate,
    lt.lt_majsrc AS lt_majsrc, lt.lt_abddate AS lt_abddate,
    lt.lt_abdsrc AS lt_abdsrc, 
	st.st_code AS st_code,
    st.st_nd_code AS st_nd_code, st.st_codeext AS st_codeext,
    st.st_nom AS st_nom, st.st_prop AS st_prop,
    st.st_gest AS st_gest, st.st_user AS st_user,
    st.st_proptyp AS st_proptyp, st.st_statut AS st_statut,
    st.st_etat AS st_etat, st.st_dateins AS st_dateins,
    st.st_datemes AS st_datemes, st.st_avct AS st_avct,
    st.st_typephy AS st_typephy, st.st_typelog AS st_typelog,
    st.st_nblines AS st_nblines, st.st_ad_code AS st_ad_code,
    st.st_comment AS st_comment, st.st_creadat AS st_creadat,
    st.st_majdate AS st_majdate, st.st_majsrc AS st_majsrc,
    st.st_abddate AS st_abddate, st.st_abdsrc AS st_abdsrc,
	nd.nd_code AS nd_code, nd.nd_codeext AS nd_codeext,
	nd.nd_nom AS nd_nom, nd.nd_coderat AS nd_coderat,
	nd.nd_r1_code AS nd_r1_code, nd.nd_r2_code AS nd_r2_code,
	nd.nd_r3_code AS nd_r3_code, nd.nd_r4_code AS nd_r4_code,
	nd.nd_voie AS nd_voie, nd.nd_type AS nd_type,
	nd.nd_type_ep AS nd_type_ep, nd.nd_comment AS nd_comment,
	nd.nd_dtclass AS nd_dtclass, nd.nd_geolqlt AS nd_geolqlt,
	nd.nd_geolmod AS nd_geolmod, nd.nd_geolsrc AS nd_geolsrc,
	nd.nd_creadat AS nd_creadat, nd.nd_majdate AS nd_majdate,
	nd.nd_majsrc AS nd_majsrc, nd.nd_abddate AS nd_abddate,
	nd.nd_abdsrc AS nd_abdsrc, nd.geom AS geom
FROM
   t_ltech AS lt,
   t_sitetech AS st,
   t_noeud AS nd
WHERE
   lt.lt_st_code = st.st_code
   AND st.st_nd_code = nd.nd_code 
;

INSERT INTO views_geometry_columns VALUES
('vs_elem_lt_st_nd', 'geom', 'rowid', 't_noeud', 'geom', 1); 


/*vs_elem_ba_lt_st_nd*/
DROP VIEW IF EXISTS vs_elem_ba_lt_st_nd;
CREATE VIEW vs_elem_ba_lt_st_nd AS
SELECT nd.rowid AS rowid,
	ba.ba_code AS ba_code, ba.ba_codeext AS ba_codeext,
    ba.ba_etiquet AS ba_etiquet, ba.ba_lt_code AS ba_lt_code,
    ba.ba_prop AS ba_prop, ba.ba_gest AS ba_gest,
    ba.ba_user AS ba_user, ba.ba_proptyp AS ba_proptyp,
    ba.ba_statut AS ba_statut, ba.ba_etat AS ba_etat,
    ba.ba_rf_code AS ba_rf_code, ba.ba_type AS ba_type,
    ba.ba_nb_u AS ba_nb_u, ba.ba_haut AS ba_haut,
    ba.ba_larg AS ba_larg, ba.ba_prof AS ba_prof,
    ba.ba_comment AS ba_comment, ba.ba_creadat AS ba_creadat,
    ba.ba_majdate AS ba_majdate, ba.ba_majsrc AS ba_majsrc,
    ba.ba_abddate AS ba_abddate, ba.ba_abdsrc AS ba_abdsrc,
	lt.lt_code AS lt_code, lt.lt_codeext AS lt_codeext,
    lt.lt_etiquet AS lt_etiquet, lt.lt_st_code AS lt_st_code,
    lt.lt_prop AS lt_prop, lt.lt_gest AS lt_gest,
    lt.lt_user AS lt_user, lt.lt_proptyp AS lt_proptyp,
    lt.lt_statut AS lt_statut, lt.lt_etat AS lt_etat,
    lt.lt_dateins AS lt_dateins, lt.lt_datemes AS lt_datemes,
    lt.lt_local AS lt_local, lt.lt_elec AS lt_elec,
    lt.lt_clim AS lt_clim, lt.lt_occp AS lt_occp,
    lt.lt_idmajic AS lt_idmajic, lt.lt_comment AS lt_comment,
    lt.lt_creadat AS lt_creadat, lt.lt_majdate AS lt_majdate,
    lt.lt_majsrc AS lt_majsrc, lt.lt_abddate AS lt_abddate,
    lt.lt_abdsrc AS lt_abdsrc, 
	st.st_code AS st_code,
    st.st_nd_code AS st_nd_code, st.st_codeext AS st_codeext,
    st.st_nom AS st_nom, st.st_prop AS st_prop,
    st.st_gest AS st_gest, st.st_user AS st_user,
    st.st_proptyp AS st_proptyp, st.st_statut AS st_statut,
    st.st_etat AS st_etat, st.st_dateins AS st_dateins,
    st.st_datemes AS st_datemes, st.st_avct AS st_avct,
    st.st_typephy AS st_typephy, st.st_typelog AS st_typelog,
    st.st_nblines AS st_nblines, st.st_ad_code AS st_ad_code,
    st.st_comment AS st_comment, st.st_creadat AS st_creadat,
    st.st_majdate AS st_majdate, st.st_majsrc AS st_majsrc,
    st.st_abddate AS st_abddate, st.st_abdsrc AS st_abdsrc,
	nd.nd_code AS nd_code, nd.nd_codeext AS nd_codeext,
	nd.nd_nom AS nd_nom, nd.nd_coderat AS nd_coderat,
	nd.nd_r1_code AS nd_r1_code, nd.nd_r2_code AS nd_r2_code,
	nd.nd_r3_code AS nd_r3_code, nd.nd_r4_code AS nd_r4_code,
	nd.nd_voie AS nd_voie, nd.nd_type AS nd_type,
	nd.nd_type_ep AS nd_type_ep, nd.nd_comment AS nd_comment,
	nd.nd_dtclass AS nd_dtclass, nd.nd_geolqlt AS nd_geolqlt,
	nd.nd_geolmod AS nd_geolmod, nd.nd_geolsrc AS nd_geolsrc,
	nd.nd_creadat AS nd_creadat, nd.nd_majdate AS nd_majdate,
	nd.nd_majsrc AS nd_majsrc, nd.nd_abddate AS nd_abddate,
	nd.nd_abdsrc AS nd_abdsrc, nd.geom AS geom
FROM
	t_baie AS ba,
	t_ltech AS lt,
	t_sitetech AS st,
	t_noeud AS nd
WHERE
	ba.ba_lt_code = lt.lt_code
	AND lt.lt_st_code = st.st_code
	AND st.st_nd_code = nd.nd_code 
;

INSERT INTO views_geometry_columns VALUES
('vs_elem_ba_lt_st_nd', 'geom', 'rowid', 't_noeud', 'geom', 1); 


/*vs_elem_ti_ba_lt_st_nd*/
DROP VIEW IF EXISTS vs_elem_ti_ba_lt_st_nd;
CREATE VIEW vs_elem_ti_ba_lt_st_nd AS
SELECT nd.rowid AS rowid,
	ti.ti_code AS ti_code, ti.ti_codeext AS ti_codeext,
    ti.ti_etiquet AS ti_etiquet, ti.ti_ba_code AS ti_ba_code,
    ti.ti_prop AS ti_prop, ti.ti_etat AS ti_etat,
    ti.ti_type AS ti_type, ti.ti_rf_code AS ti_rf_code,
    ti.ti_taille AS ti_taille, ti.ti_placemt AS ti_placemt,
    ti.ti_localis AS ti_localis, ti.ti_comment AS ti_comment,
    ti.ti_creadat AS ti_creadat, ti.ti_majdate AS ti_majdate,
    ti.ti_majsrc AS ti_majsrc, ti.ti_abddate AS ti_abddate,
    ti.ti_abdsrc AS ti_abdsrc, 
	ba.ba_code AS ba_code, ba.ba_codeext AS ba_codeext,
    ba.ba_etiquet AS ba_etiquet, ba.ba_lt_code AS ba_lt_code,
    ba.ba_prop AS ba_prop, ba.ba_gest AS ba_gest,
    ba.ba_user AS ba_user, ba.ba_proptyp AS ba_proptyp,
    ba.ba_statut AS ba_statut, ba.ba_etat AS ba_etat,
    ba.ba_rf_code AS ba_rf_code, ba.ba_type AS ba_type,
    ba.ba_nb_u AS ba_nb_u, ba.ba_haut AS ba_haut,
    ba.ba_larg AS ba_larg, ba.ba_prof AS ba_prof,
    ba.ba_comment AS ba_comment, ba.ba_creadat AS ba_creadat,
    ba.ba_majdate AS ba_majdate, ba.ba_majsrc AS ba_majsrc,
    ba.ba_abddate AS ba_abddate, ba.ba_abdsrc AS ba_abdsrc,
	lt.lt_code AS lt_code, lt.lt_codeext AS lt_codeext,
    lt.lt_etiquet AS lt_etiquet, lt.lt_st_code AS lt_st_code,
    lt.lt_prop AS lt_prop, lt.lt_gest AS lt_gest,
    lt.lt_user AS lt_user, lt.lt_proptyp AS lt_proptyp,
    lt.lt_statut AS lt_statut, lt.lt_etat AS lt_etat,
    lt.lt_dateins AS lt_dateins, lt.lt_datemes AS lt_datemes,
    lt.lt_local AS lt_local, lt.lt_elec AS lt_elec,
    lt.lt_clim AS lt_clim, lt.lt_occp AS lt_occp,
    lt.lt_idmajic AS lt_idmajic, lt.lt_comment AS lt_comment,
    lt.lt_creadat AS lt_creadat, lt.lt_majdate AS lt_majdate,
    lt.lt_majsrc AS lt_majsrc, lt.lt_abddate AS lt_abddate,
    lt.lt_abdsrc AS lt_abdsrc, 
	st.st_code AS st_code,
    st.st_nd_code AS st_nd_code, st.st_codeext AS st_codeext,
    st.st_nom AS st_nom, st.st_prop AS st_prop,
    st.st_gest AS st_gest, st.st_user AS st_user,
    st.st_proptyp AS st_proptyp, st.st_statut AS st_statut,
    st.st_etat AS st_etat, st.st_dateins AS st_dateins,
    st.st_datemes AS st_datemes, st.st_avct AS st_avct,
    st.st_typephy AS st_typephy, st.st_typelog AS st_typelog,
    st.st_nblines AS st_nblines, st.st_ad_code AS st_ad_code,
    st.st_comment AS st_comment, st.st_creadat AS st_creadat,
    st.st_majdate AS st_majdate, st.st_majsrc AS st_majsrc,
    st.st_abddate AS st_abddate, st.st_abdsrc AS st_abdsrc,
	nd.nd_code AS nd_code, nd.nd_codeext AS nd_codeext,
	nd.nd_nom AS nd_nom, nd.nd_coderat AS nd_coderat,
	nd.nd_r1_code AS nd_r1_code, nd.nd_r2_code AS nd_r2_code,
	nd.nd_r3_code AS nd_r3_code, nd.nd_r4_code AS nd_r4_code,
	nd.nd_voie AS nd_voie, nd.nd_type AS nd_type,
	nd.nd_type_ep AS nd_type_ep, nd.nd_comment AS nd_comment,
	nd.nd_dtclass AS nd_dtclass, nd.nd_geolqlt AS nd_geolqlt,
	nd.nd_geolmod AS nd_geolmod, nd.nd_geolsrc AS nd_geolsrc,
	nd.nd_creadat AS nd_creadat, nd.nd_majdate AS nd_majdate,
	nd.nd_majsrc AS nd_majsrc, nd.nd_abddate AS nd_abddate,
	nd.nd_abdsrc AS nd_abdsrc, nd.geom AS geom
FROM
	t_tiroir AS ti,
	t_baie AS ba,
	t_ltech AS lt,
	t_sitetech AS st,
	t_noeud AS nd
WHERE
	ti.ti_ba_code = ba.ba_code
	AND ba.ba_lt_code = lt.lt_code
	AND lt.lt_st_code = st.st_code
	AND st.st_nd_code = nd.nd_code 
;

INSERT INTO views_geometry_columns VALUES
('vs_elem_ti_ba_lt_st_nd', 'geom', 'rowid', 't_noeud', 'geom', 1); 


/*vs_elem_eq_ba_lt_st_nd*/
DROP VIEW IF EXISTS vs_elem_eq_ba_lt_st_nd;
CREATE VIEW vs_elem_eq_ba_lt_st_nd AS
SELECT nd.rowid AS rowid,
	eq.eq_code AS eq_code, eq.eq_codeext AS eq_codeext,
    eq.eq_etiquet AS eq_etiquet, eq.eq_ba_code AS eq_ba_code,
    eq.eq_prop AS eq_prop, eq.eq_rf_code AS eq_rf_code,
    eq.eq_dateins AS eq_dateins, eq.eq_datemes AS eq_datemes,
    eq.eq_comment AS eq_comment, eq.eq_creadat AS eq_creadat,
    eq.eq_majdate AS eq_majdate, eq.eq_majsrc AS eq_majsrc,
    eq.eq_abddate AS eq_abddate, eq.eq_abdsrc AS eq_abdsrc,
    ba.ba_etiquet AS ba_etiquet, ba.ba_lt_code AS ba_lt_code,
    ba.ba_prop AS ba_prop, ba.ba_gest AS ba_gest,
    ba.ba_user AS ba_user, ba.ba_proptyp AS ba_proptyp,
    ba.ba_statut AS ba_statut, ba.ba_etat AS ba_etat,
    ba.ba_rf_code AS ba_rf_code, ba.ba_type AS ba_type,
    ba.ba_nb_u AS ba_nb_u, ba.ba_haut AS ba_haut,
    ba.ba_larg AS ba_larg, ba.ba_prof AS ba_prof,
    ba.ba_comment AS ba_comment, ba.ba_creadat AS ba_creadat,
    ba.ba_majdate AS ba_majdate, ba.ba_majsrc AS ba_majsrc,
    ba.ba_abddate AS ba_abddate, ba.ba_abdsrc AS ba_abdsrc,
	lt.lt_code AS lt_code, lt.lt_codeext AS lt_codeext,
    lt.lt_etiquet AS lt_etiquet, lt.lt_st_code AS lt_st_code,
    lt.lt_prop AS lt_prop, lt.lt_gest AS lt_gest,
    lt.lt_user AS lt_user, lt.lt_proptyp AS lt_proptyp,
    lt.lt_statut AS lt_statut, lt.lt_etat AS lt_etat,
    lt.lt_dateins AS lt_dateins, lt.lt_datemes AS lt_datemes,
    lt.lt_local AS lt_local, lt.lt_elec AS lt_elec,
    lt.lt_clim AS lt_clim, lt.lt_occp AS lt_occp,
    lt.lt_idmajic AS lt_idmajic, lt.lt_comment AS lt_comment,
    lt.lt_creadat AS lt_creadat, lt.lt_majdate AS lt_majdate,
    lt.lt_majsrc AS lt_majsrc, lt.lt_abddate AS lt_abddate,
    lt.lt_abdsrc AS lt_abdsrc, 
	st.st_code AS st_code,
    st.st_nd_code AS st_nd_code, st.st_codeext AS st_codeext,
    st.st_nom AS st_nom, st.st_prop AS st_prop,
    st.st_gest AS st_gest, st.st_user AS st_user,
    st.st_proptyp AS st_proptyp, st.st_statut AS st_statut,
    st.st_etat AS st_etat, st.st_dateins AS st_dateins,
    st.st_datemes AS st_datemes, st.st_avct AS st_avct,
    st.st_typephy AS st_typephy, st.st_typelog AS st_typelog,
    st.st_nblines AS st_nblines, st.st_ad_code AS st_ad_code,
    st.st_comment AS st_comment, st.st_creadat AS st_creadat,
    st.st_majdate AS st_majdate, st.st_majsrc AS st_majsrc,
    st.st_abddate AS st_abddate, st.st_abdsrc AS st_abdsrc,
	nd.nd_code AS nd_code, nd.nd_codeext AS nd_codeext,
	nd.nd_nom AS nd_nom, nd.nd_coderat AS nd_coderat,
	nd.nd_r1_code AS nd_r1_code, nd.nd_r2_code AS nd_r2_code,
	nd.nd_r3_code AS nd_r3_code, nd.nd_r4_code AS nd_r4_code,
	nd.nd_voie AS nd_voie, nd.nd_type AS nd_type,
	nd.nd_type_ep AS nd_type_ep, nd.nd_comment AS nd_comment,
	nd.nd_dtclass AS nd_dtclass, nd.nd_geolqlt AS nd_geolqlt,
	nd.nd_geolmod AS nd_geolmod, nd.nd_geolsrc AS nd_geolsrc,
	nd.nd_creadat AS nd_creadat, nd.nd_majdate AS nd_majdate,
	nd.nd_majsrc AS nd_majsrc, nd.nd_abddate AS nd_abddate,
	nd.nd_abdsrc AS nd_abdsrc, nd.geom AS geom
FROM
	t_equipement AS eq,
	t_baie AS ba,
	t_ltech AS lt,
	t_sitetech AS st,
	t_noeud AS nd
WHERE
	eq.eq_ba_code = ba.ba_code
	AND ba.ba_lt_code = lt.lt_code
	AND lt.lt_st_code = st.st_code
	AND st.st_nd_code = nd.nd_code 
;

INSERT INTO views_geometry_columns VALUES
('vs_elem_eq_ba_lt_st_nd', 'geom', 'rowid', 't_noeud', 'geom', 1); 

/*vs_elem_bp_lt_st_nd*/
DROP VIEW IF EXISTS vs_elem_bp_lt_st_nd;
CREATE VIEW vs_elem_bp_lt_st_nd AS
SELECT nd.rowid AS rowid,
	bp_code AS bp_code, bp_etiquet AS bp_etiquet,
    bp_codeext AS bp_codeext, bp_pt_code AS bp_pt_code,
    bp_lt_code AS bp_lt_code, bp_sf_code AS bp_sf_code,
    bp_prop AS bp_prop, bp_gest AS bp_gest, bp_user AS bp_user,
    bp_proptyp AS bp_proptyp, bp_statut AS bp_statut,
    bp_etat AS bp_etat, bp_occp AS bp_occp, bp_datemes AS bp_datemes,
    bp_avct AS bp_avct, bp_typephy AS bp_typephy,
    bp_typelog AS bp_typelog, bp_rf_code AS bp_rf_code,
    bp_entrees AS bp_entrees, bp_ref_kit AS bp_ref_kit,
    bp_ca_nb AS bp_ca_nb, bp_nb_pas AS bp_nb_pas,
    bp_linecod AS bp_linecod, bp_oc_code AS bp_oc_code,
    bp_racco AS bp_racco, bp_comment AS bp_comment,
    bp_creadat AS bp_creadat, bp_majdate AS bp_majdate,
    bp_majsrc AS bp_majsrc, bp_abddate AS bp_abddate,
    bp_abdsrc AS bp_abdsrc,
	lt.lt_code AS lt_code, lt.lt_codeext AS lt_codeext,
    lt.lt_etiquet AS lt_etiquet, lt.lt_st_code AS lt_st_code,
    lt.lt_prop AS lt_prop, lt.lt_gest AS lt_gest,
    lt.lt_user AS lt_user, lt.lt_proptyp AS lt_proptyp,
    lt.lt_statut AS lt_statut, lt.lt_etat AS lt_etat,
    lt.lt_dateins AS lt_dateins, lt.lt_datemes AS lt_datemes,
    lt.lt_local AS lt_local, lt.lt_elec AS lt_elec,
    lt.lt_clim AS lt_clim, lt.lt_occp AS lt_occp,
    lt.lt_idmajic AS lt_idmajic, lt.lt_comment AS lt_comment,
    lt.lt_creadat AS lt_creadat, lt.lt_majdate AS lt_majdate,
    lt.lt_majsrc AS lt_majsrc, lt.lt_abddate AS lt_abddate,
    lt.lt_abdsrc AS lt_abdsrc, 
	st.st_code AS st_code,
    st.st_nd_code AS st_nd_code, st.st_codeext AS st_codeext,
    st.st_nom AS st_nom, st.st_prop AS st_prop,
    st.st_gest AS st_gest, st.st_user AS st_user,
    st.st_proptyp AS st_proptyp, st.st_statut AS st_statut,
    st.st_etat AS st_etat, st.st_dateins AS st_dateins,
    st.st_datemes AS st_datemes, st.st_avct AS st_avct,
    st.st_typephy AS st_typephy, st.st_typelog AS st_typelog,
    st.st_nblines AS st_nblines, st.st_ad_code AS st_ad_code,
    st.st_comment AS st_comment, st.st_creadat AS st_creadat,
    st.st_majdate AS st_majdate, st.st_majsrc AS st_majsrc,
    st.st_abddate AS st_abddate, st.st_abdsrc AS st_abdsrc,
    nd.nd_code AS nd_code, nd.nd_codeext AS nd_codeext,
    nd.nd_nom AS nd_nom, nd.nd_coderat AS nd_coderat,
    nd.nd_r1_code AS nd_r1_code, nd.nd_r2_code AS nd_r2_code,
    nd.nd_r3_code AS nd_r3_code, nd.nd_r4_code AS nd_r4_code,
	nd.nd_voie AS nd_voie, nd.nd_type AS nd_type,
	nd.nd_type_ep AS nd_type_ep, nd.nd_comment AS nd_comment,
	nd.nd_dtclass AS nd_dtclass, nd.nd_geolqlt AS nd_geolqlt,
	nd.nd_geolmod AS nd_geolmod, nd.nd_geolsrc AS nd_geolsrc,
	nd.nd_creadat AS nd_creadat, nd.nd_majdate AS nd_majdate,
	nd.nd_majsrc AS nd_majsrc, nd.nd_abddate AS nd_abddate,
	nd.nd_abdsrc AS nd_abdsrc, nd.geom AS geom
FROM
   t_ebp AS bp,
   t_ltech AS lt,
   t_sitetech AS st,   
   t_noeud AS nd
WHERE
	bp.bp_lt_code = lt.lt_code
   AND lt.lt_st_code = st.st_code
   AND st.st_nd_code = nd.nd_code 
;

INSERT INTO views_geometry_columns VALUES
('vs_elem_bp_lt_st_nd', 'geom', 'rowid', 't_noeud', 'geom', 1); 

/*vs_elem_cs_bp_lt_st_nd*/
DROP VIEW IF EXISTS vs_elem_cs_bp_lt_st_nd;
CREATE VIEW vs_elem_cs_bp_lt_st_nd AS
SELECT nd.rowid AS rowid,
	cs_code AS cs_code, cs_nb_pas AS cs_nb_pas,
    cs_bp_code AS cs_bp_code, cs_num AS cs_num,
    cs_type AS cs_type, cs_face AS cs_face, cs_rf_code AS cs_rf_code,
    cs_comment AS cs_comment, cs_creadat AS cs_creadat,
    cs_majdate AS cs_majdate, cs_majsrc AS cs_majsrc,
    cs_abddate AS cs_abddate, cs_abdsrc AS cs_abdsrc,
	bp_code AS bp_code, bp_etiquet AS bp_etiquet,
    bp_codeext AS bp_codeext, bp_pt_code AS bp_pt_code,
    bp_lt_code AS bp_lt_code, bp_sf_code AS bp_sf_code,
    bp_prop AS bp_prop, bp_gest AS bp_gest, bp_user AS bp_user,
    bp_proptyp AS bp_proptyp, bp_statut AS bp_statut,
    bp_etat AS bp_etat, bp_occp AS bp_occp, bp_datemes AS bp_datemes,
    bp_avct AS bp_avct, bp_typephy AS bp_typephy,
    bp_typelog AS bp_typelog, bp_rf_code AS bp_rf_code,
    bp_entrees AS bp_entrees, bp_ref_kit AS bp_ref_kit,
    bp_ca_nb AS bp_ca_nb, bp_nb_pas AS bp_nb_pas,
    bp_linecod AS bp_linecod, bp_oc_code AS bp_oc_code,
    bp_racco AS bp_racco, bp_comment AS bp_comment,
    bp_creadat AS bp_creadat, bp_majdate AS bp_majdate,
    bp_majsrc AS bp_majsrc, bp_abddate AS bp_abddate,
    bp_abdsrc AS bp_abdsrc,
	lt.lt_code AS lt_code, lt.lt_codeext AS lt_codeext,
    lt.lt_etiquet AS lt_etiquet, lt.lt_st_code AS lt_st_code,
    lt.lt_prop AS lt_prop, lt.lt_gest AS lt_gest,
    lt.lt_user AS lt_user, lt.lt_proptyp AS lt_proptyp,
    lt.lt_statut AS lt_statut, lt.lt_etat AS lt_etat,
    lt.lt_dateins AS lt_dateins, lt.lt_datemes AS lt_datemes,
    lt.lt_local AS lt_local, lt.lt_elec AS lt_elec,
    lt.lt_clim AS lt_clim, lt.lt_occp AS lt_occp,
    lt.lt_idmajic AS lt_idmajic, lt.lt_comment AS lt_comment,
    lt.lt_creadat AS lt_creadat, lt.lt_majdate AS lt_majdate,
    lt.lt_majsrc AS lt_majsrc, lt.lt_abddate AS lt_abddate,
    lt.lt_abdsrc AS lt_abdsrc, 
	st.st_code AS st_code,
    st.st_nd_code AS st_nd_code, st.st_codeext AS st_codeext,
    st.st_nom AS st_nom, st.st_prop AS st_prop,
    st.st_gest AS st_gest, st.st_user AS st_user,
    st.st_proptyp AS st_proptyp, st.st_statut AS st_statut,
    st.st_etat AS st_etat, st.st_dateins AS st_dateins,
    st.st_datemes AS st_datemes, st.st_avct AS st_avct,
    st.st_typephy AS st_typephy, st.st_typelog AS st_typelog,
    st.st_nblines AS st_nblines, st.st_ad_code AS st_ad_code,
    st.st_comment AS st_comment, st.st_creadat AS st_creadat,
    st.st_majdate AS st_majdate, st.st_majsrc AS st_majsrc,
    st.st_abddate AS st_abddate, st.st_abdsrc AS st_abdsrc,
    nd.nd_code AS nd_code, nd.nd_codeext AS nd_codeext,
    nd.nd_nom AS nd_nom, nd.nd_coderat AS nd_coderat,
    nd.nd_r1_code AS nd_r1_code, nd.nd_r2_code AS nd_r2_code,
    nd.nd_r3_code AS nd_r3_code, nd.nd_r4_code AS nd_r4_code,
	nd.nd_voie AS nd_voie, nd.nd_type AS nd_type,
	nd.nd_type_ep AS nd_type_ep, nd.nd_comment AS nd_comment,
	nd.nd_dtclass AS nd_dtclass, nd.nd_geolqlt AS nd_geolqlt,
	nd.nd_geolmod AS nd_geolmod, nd.nd_geolsrc AS nd_geolsrc,
	nd.nd_creadat AS nd_creadat, nd.nd_majdate AS nd_majdate,
	nd.nd_majsrc AS nd_majsrc, nd.nd_abddate AS nd_abddate,
	nd.nd_abdsrc AS nd_abdsrc, nd.geom AS geom
FROM
	t_cassette AS cs,
   t_ebp AS bp,
   t_ltech AS lt,
   t_sitetech AS st,   
   t_noeud AS nd
WHERE
	cs.cs_bp_code = bp.bp_code
	AND bp.bp_lt_code = lt_code
   AND lt.lt_st_code = st.st_code
   AND st.st_nd_code = nd.nd_code 
;

INSERT INTO views_geometry_columns VALUES
('vs_elem_cs_bp_lt_st_nd', 'geom', 'rowid', 't_noeud', 'geom', 1); 

/*vs_elem_pt_nd*/
DROP VIEW IF EXISTS vs_elem_pt_nd;
CREATE VIEW vs_elem_pt_nd AS
SELECT nd.rowid AS rowid,
	pt.pt_code AS pt_code, pt.pt_codeext AS pt_codeext,
    pt.pt_etiquet AS pt_etiquet, pt.pt_nd_code AS pt_nd_code,
    pt.pt_ad_code AS pt_ad_code, pt.pt_gest_do AS pt_gest_do,
    pt.pt_prop_do AS pt_prop_do, pt.pt_prop AS pt_prop,
    pt.pt_gest AS pt_gest, pt.pt_user AS pt_user,
    pt.pt_proptyp AS pt_proptyp, pt.pt_statut AS pt_statut,
    pt.pt_etat AS pt_etat, pt.pt_dateins AS pt_dateins,
    pt.pt_datemes AS pt_datemes, pt.pt_avct AS pt_avct,
    pt.pt_typephy AS pt_typephy, pt.pt_typelog AS pt_typelog,
    pt.pt_rf_code AS pt_rf_code, pt.pt_nature AS pt_nature,
    pt.pt_secu AS pt_secu, pt.pt_occp AS pt_occp,
    pt.pt_a_dan AS pt_a_dan, pt.pt_a_dtetu AS pt_a_dtetu,
    pt.pt_a_struc AS pt_a_struc, pt.pt_a_haut AS pt_a_haut,
    pt.pt_a_passa AS pt_a_passa, pt.pt_a_strat AS pt_a_strat,
    pt.pt_rotatio AS pt_rotatio, pt.pt_detec AS pt_detec,
    pt.pt_comment AS pt_comment, pt.pt_creadat AS pt_creadat,
    pt.pt_majdate AS pt_majdate, pt.pt_majsrc AS pt_majsrc,
    pt.pt_abddate AS pt_abddate, pt.pt_abdsrc AS pt_abdsrc,
    nd.nd_code AS nd_code, nd.nd_codeext AS nd_codeext,
    nd.nd_nom AS nd_nom, nd.nd_coderat AS nd_coderat,
    nd.nd_r1_code AS nd_r1_code, nd.nd_r2_code AS nd_r2_code,
    nd.nd_r3_code AS nd_r3_code, nd.nd_r4_code AS nd_r4_code,
	nd.nd_voie AS nd_voie, nd.nd_type AS nd_type,
	nd.nd_type_ep AS nd_type_ep, nd.nd_comment AS nd_comment,
	nd.nd_dtclass AS nd_dtclass, nd.nd_geolqlt AS nd_geolqlt,
	nd.nd_geolmod AS nd_geolmod, nd.nd_geolsrc AS nd_geolsrc,
	nd.nd_creadat AS nd_creadat, nd.nd_majdate AS nd_majdate,
	nd.nd_majsrc AS nd_majsrc, nd.nd_abddate AS nd_abddate,
	nd.nd_abdsrc AS nd_abdsrc, nd.geom AS geom
FROM
   t_ptech AS pt,
   t_noeud AS nd
WHERE
   pt.pt_nd_code = nd.nd_code;

INSERT INTO views_geometry_columns VALUES
('vs_elem_pt_nd', 'geom', 'rowid', 't_noeud', 'geom', 1); 


/*vs_elem_mq_nd*/
DROP VIEW IF EXISTS vs_elem_mq_nd;
CREATE VIEW vs_elem_mq_nd AS
SELECT nd.rowid AS rowid,
	mq.mq_id AS mq_id, mq.mq_nd_code AS mq_nd_code,
    mq.mq_face AS mq_face, mq.mq_col AS mq_col,
    mq.mq_ligne AS mq_ligne, mq.mq_cd_code AS mq_cd_code,
    mq.mq_qualinf AS mq_qualinf, mq.mq_comment AS mq_comment,
    mq.mq_creadat AS mq_creadat, mq.mq_majdate AS mq_majdate,
    mq.mq_majsrc AS mq_majsrc, mq.mq_abddate AS mq_abddate,
    mq.mq_abdsrc AS mq_abdsrc,
    nd.nd_code AS nd_code, nd.nd_codeext AS nd_codeext,
    nd.nd_nom AS nd_nom, nd.nd_coderat AS nd_coderat,
    nd.nd_r1_code AS nd_r1_code, nd.nd_r2_code AS nd_r2_code,
    nd.nd_r3_code AS nd_r3_code, nd.nd_r4_code AS nd_r4_code,
	nd.nd_voie AS nd_voie, nd.nd_type AS nd_type,
	nd.nd_type_ep AS nd_type_ep, nd.nd_comment AS nd_comment,
	nd.nd_dtclass AS nd_dtclass, nd.nd_geolqlt AS nd_geolqlt,
	nd.nd_geolmod AS nd_geolmod, nd.nd_geolsrc AS nd_geolsrc,
	nd.nd_creadat AS nd_creadat, nd.nd_majdate AS nd_majdate,
	nd.nd_majsrc AS nd_majsrc, nd.nd_abddate AS nd_abddate,
	nd.nd_abdsrc AS nd_abdsrc, nd.geom AS geom
FROM
   t_masque AS mq,
   t_noeud AS nd
WHERE
   mq.mq_nd_code = nd.nd_code;

INSERT INTO views_geometry_columns VALUES
('vs_elem_mq_nd', 'geom', 'rowid', 't_noeud', 'geom', 1); 


/*vs_elem_cl_cb*/
DROP VIEW IF EXISTS vs_elem_cl_cb;
CREATE VIEW vs_elem_cl_cb AS
SELECT cl.rowid AS rowid,
	cb.cb_code AS cb_code, cb.cb_codeext AS cb_codeext,
    cb.cb_etiquet AS cb_etiquet, cb.cb_nd1 AS cb_nd1,
    cb.cb_nd2 AS cb_nd2, cb.cb_r1_code AS cb_r1_code,
    cb.cb_r2_code AS cb_r2_code, cb.cb_r3_code AS cb_r3_code,
    cb.cb_r4_code AS cb_r4_code, cb.cb_prop AS cb_prop,
    cb.cb_gest AS cb_gest, cb.cb_user AS cb_user,
    cb.cb_proptyp AS cb_proptyp, cb.cb_statut AS cb_statut,
    cb.cb_etat AS cb_etat, cb.cb_dateins AS cb_dateins,
    cb.cb_datemes AS cb_datemes, cb.cb_avct AS cb_avct,
    cb.cb_tech AS cb_tech, cb.cb_typephy AS cb_typephy,
    cb.cb_typelog AS cb_typelog, cb.cb_rf_code AS cb_rf_code,
    cb.cb_capafo AS cb_capafo, cb.cb_fo_disp AS cb_fo_disp,
    cb.cb_fo_util AS cb_fo_util, cb.cb_modulo AS cb_modulo,
    cb.cb_diam AS cb_diam, cb.cb_color AS cb_color,
    cb.cb_lgreel AS cb_lgreel, cb.cb_localis AS cb_localis,
    cb.cb_comment AS cb_comment, cb.cb_creadat AS cb_creadat,
    cb.cb_majdate AS cb_majdate, cb.cb_majsrc AS cb_majsrc,
    cb.cb_abddate AS cb_abddate, cb.cb_abdsrc AS cb_abdsrc,
    cl.cl_code AS cl_code, cl.cl_cb_code AS cl_cb_code,
    cl.cl_long AS cl_long, cl.cl_comment AS cl_comment,
    cl.cl_dtclass AS cl_dtclass, cl.cl_geolqlt AS cl_geolqlt,
    cl.cl_geolmod AS cl_geolmod, cl.cl_geolsrc AS cl_geolsrc,
    cl.cl_creadat AS cl_creadat, cl.cl_majdate AS cl_majdate,
    cl.cl_majsrc AS cl_majsrc, cl.cl_abddate AS cl_abddate,
    cl.cl_abdsrc AS cl_abdsrc, cl.geom AS geom
FROM
   t_cable AS cb,
   t_cableline AS cl
WHERE
   cl.cl_cb_code = cb.cb_code;

INSERT INTO views_geometry_columns VALUES
('vs_elem_cl_cb', 'geom', 'rowid', 't_cableline', 'geom', 1); 


/*vs_elem_cl_cb_lv*/
DROP VIEW IF EXISTS vs_elem_cl_cb_lv;
CREATE VIEW vs_elem_cl_cb_lv AS
SELECT cl.rowid AS rowid,
    cl.cl_code AS cl_code, cl.cl_cb_code AS cl_cb_code,
    cl.cl_long AS cl_long, cl.cl_comment AS cl_comment,
    cl.cl_dtclass AS cl_dtclass, cl.cl_geolqlt AS cl_geolqlt,
    cl.cl_geolmod AS cl_geolmod, cl.cl_geolsrc AS cl_geolsrc,
    cl.cl_creadat AS cl_creadat, cl.cl_majdate AS cl_majdate,
    cl.cl_majsrc AS cl_majsrc, cl.cl_abddate AS cl_abddate,
    cl.cl_abdsrc AS cl_abdsrc, cl.geom AS geom,
	cb.cb_code AS cb_code, cb.cb_codeext AS cb_codeext,
    cb.cb_etiquet AS cb_etiquet, cb.cb_nd1 AS cb_nd1,
    cb.cb_nd2 AS cb_nd2, cb.cb_r1_code AS cb_r1_code,
    cb.cb_r2_code AS cb_r2_code, cb.cb_r3_code AS cb_r3_code,
    cb.cb_r4_code AS cb_r4_code, cb.cb_prop AS cb_prop,
    cb.cb_gest AS cb_gest, cb.cb_user AS cb_user,
    cb.cb_proptyp AS cb_proptyp, cb.cb_statut AS cb_statut,
    cb.cb_etat AS cb_etat, cb.cb_dateins AS cb_dateins,
    cb.cb_datemes AS cb_datemes, cb.cb_avct AS cb_avct,
    cb.cb_tech AS cb_tech, cb.cb_typephy AS cb_typephy,
    cb.cb_typelog AS cb_typelog, cb.cb_rf_code AS cb_rf_code,
    cb.cb_capafo AS cb_capafo, cb.cb_fo_disp AS cb_fo_disp,
    cb.cb_fo_util AS cb_fo_util, cb.cb_modulo AS cb_modulo,
    cb.cb_diam AS cb_diam, cb.cb_color AS cb_color,
    cb.cb_lgreel AS cb_lgreel, cb.cb_localis AS cb_localis,
    cb.cb_comment AS cb_comment, cb.cb_creadat AS cb_creadat,
    cb.cb_majdate AS cb_majdate, cb.cb_majsrc AS cb_majsrc,
    cb.cb_abddate AS cb_abddate, cb.cb_abdsrc AS cb_abdsrc,
	lv.lv_id AS lv_id, lv.lv_cb_code AS lv_cb_code,
    lv.lv_nd_code AS lv_nd_code, lv.lv_long AS lv_long,
    lv.lv_creadat AS lv_creadat, lv.lv_majdate AS lv_majdate,
    lv.lv_majsrc AS lv_majsrc, lv.lv_abddate AS lv_abddate,
    lv.lv_abdsrc AS lv_abdsrc
FROM
   t_cable AS cb,
   t_cableline AS cl
LEFT JOIN "t_love" AS "lv" ON ("cb"."cb_code" = "lv"."lv_cb_code")
WHERE
   cl.cl_cb_code = cb.cb_code
;

INSERT INTO views_geometry_columns VALUES
('vs_elem_cl_cb_lv', 'geom', 'rowid', 't_cableline', 'geom', 1); 


/*vs_elem_fo_cb_cl*/
DROP VIEW IF EXISTS vs_elem_fo_cb_cl;
CREATE VIEW vs_elem_fo_cb_cl AS
SELECT cl.rowid AS rowid,
	fo.fo_code AS fo_code, fo.fo_code_ext AS fo_code_ext,
    fo.fo_cb_code AS fo_cb_code, fo.fo_nincab AS fo_nincab,
    fo.fo_numtub AS fo_numtub, fo.fo_nintub AS fo_nintub,
    fo.fo_type AS fo_type, fo.fo_etat AS fo_etat,
    fo.fo_color AS fo_color, fo.fo_reper AS fo_reper,
    fo.fo_proptyp AS fo_proptyp, fo.fo_comment AS fo_comment,
    fo.fo_creadat AS fo_creadat, fo.fo_majdate AS fo_majdate,
    fo.fo_majsrc AS fo_majsrc, fo.fo_abddate AS fo_abddate,
    fo.fo_abdsrc AS fo_abdsrc, 
	cb.cb_code AS cb_code, cb.cb_codeext AS cb_codeext,
    cb.cb_etiquet AS cb_etiquet, cb.cb_nd1 AS cb_nd1,
    cb.cb_nd2 AS cb_nd2, cb.cb_r1_code AS cb_r1_code,
    cb.cb_r2_code AS cb_r2_code, cb.cb_r3_code AS cb_r3_code,
    cb.cb_r4_code AS cb_r4_code, cb.cb_prop AS cb_prop,
    cb.cb_gest AS cb_gest, cb.cb_user AS cb_user,
    cb.cb_proptyp AS cb_proptyp, cb.cb_statut AS cb_statut,
    cb.cb_etat AS cb_etat, cb.cb_dateins AS cb_dateins,
    cb.cb_datemes AS cb_datemes, cb.cb_avct AS cb_avct,
    cb.cb_tech AS cb_tech, cb.cb_typephy AS cb_typephy,
    cb.cb_typelog AS cb_typelog, cb.cb_rf_code AS cb_rf_code,
    cb.cb_capafo AS cb_capafo, cb.cb_fo_disp AS cb_fo_disp,
    cb.cb_fo_util AS cb_fo_util, cb.cb_modulo AS cb_modulo,
    cb.cb_diam AS cb_diam, cb.cb_color AS cb_color,
    cb.cb_lgreel AS cb_lgreel, cb.cb_localis AS cb_localis,
    cb.cb_comment AS cb_comment, cb.cb_creadat AS cb_creadat,
    cb.cb_majdate AS cb_majdate, cb.cb_majsrc AS cb_majsrc,
    cb.cb_abddate AS cb_abddate, cb.cb_abdsrc AS cb_abdsrc,
    cl.cl_code AS cl_code, cl.cl_cb_code AS cl_cb_code,
    cl.cl_long AS cl_long, cl.cl_comment AS cl_comment,
    cl.cl_dtclass AS cl_dtclass, cl.cl_geolqlt AS cl_geolqlt,
    cl.cl_geolmod AS cl_geolmod, cl.cl_geolsrc AS cl_geolsrc,
    cl.cl_creadat AS cl_creadat, cl.cl_majdate AS cl_majdate,
    cl.cl_majsrc AS cl_majsrc, cl.cl_abddate AS cl_abddate,
    cl.cl_abdsrc AS cl_abdsrc, cl.geom AS geom
FROM
   t_fibre AS fo,
   t_cable AS cb,
   t_cableline AS cl
WHERE
   cl.cl_cb_code = cb.cb_code
   AND fo.fo_cb_code = cb.cb_code;

INSERT INTO views_geometry_columns VALUES
('vs_elem_fo_cb_cl', 'geom', 'rowid', 't_cableline', 'geom', 1); 


/*vs_elem_rt_fo_cb_cl*/
DROP VIEW IF EXISTS vs_elem_rt_fo_cb_cl;
CREATE VIEW vs_elem_rt_fo_cb_cl AS
SELECT cl.rowid AS rowid,
	rt.rt_id AS rt_id, rt.rt_code AS rt_code,
    rt.rt_code_ext AS rt_code_ext, rt.rt_fo_code AS rt_fo_code,
    rt.rt_fo_ordr AS rt_fo_ordr, rt.rt_comment AS rt_comment,
    rt.rt_creadat AS rt_creadat, rt.rt_majdate AS rt_majdate,
    rt.rt_majsrc AS rt_majsrc, rt.rt_abddate AS rt_abddate,
    rt.rt_abdsrc AS rt_abdsrc,
	fo.fo_code AS fo_code, fo.fo_code_ext AS fo_code_ext,
    fo.fo_cb_code AS fo_cb_code, fo.fo_nincab AS fo_nincab,
    fo.fo_numtub AS fo_numtub, fo.fo_nintub AS fo_nintub,
    fo.fo_type AS fo_type, fo.fo_etat AS fo_etat,
    fo.fo_color AS fo_color, fo.fo_reper AS fo_reper,
    fo.fo_proptyp AS fo_proptyp, fo.fo_comment AS fo_comment,
    fo.fo_creadat AS fo_creadat, fo.fo_majdate AS fo_majdate,
    fo.fo_majsrc AS fo_majsrc, fo.fo_abddate AS fo_abddate,
    fo.fo_abdsrc AS fo_abdsrc, 
	cb.cb_code AS cb_code, cb.cb_codeext AS cb_codeext,
    cb.cb_etiquet AS cb_etiquet, cb.cb_nd1 AS cb_nd1,
    cb.cb_nd2 AS cb_nd2, cb.cb_r1_code AS cb_r1_code,
    cb.cb_r2_code AS cb_r2_code, cb.cb_r3_code AS cb_r3_code,
    cb.cb_r4_code AS cb_r4_code, cb.cb_prop AS cb_prop,
    cb.cb_gest AS cb_gest, cb.cb_user AS cb_user,
    cb.cb_proptyp AS cb_proptyp, cb.cb_statut AS cb_statut,
    cb.cb_etat AS cb_etat, cb.cb_dateins AS cb_dateins,
    cb.cb_datemes AS cb_datemes, cb.cb_avct AS cb_avct,
    cb.cb_tech AS cb_tech, cb.cb_typephy AS cb_typephy,
    cb.cb_typelog AS cb_typelog, cb.cb_rf_code AS cb_rf_code,
    cb.cb_capafo AS cb_capafo, cb.cb_fo_disp AS cb_fo_disp,
    cb.cb_fo_util AS cb_fo_util, cb.cb_modulo AS cb_modulo,
    cb.cb_diam AS cb_diam, cb.cb_color AS cb_color,
    cb.cb_lgreel AS cb_lgreel, cb.cb_localis AS cb_localis,
    cb.cb_comment AS cb_comment, cb.cb_creadat AS cb_creadat,
    cb.cb_majdate AS cb_majdate, cb.cb_majsrc AS cb_majsrc,
    cb.cb_abddate AS cb_abddate, cb.cb_abdsrc AS cb_abdsrc,
    cl.cl_code AS cl_code, cl.cl_cb_code AS cl_cb_code,
    cl.cl_long AS cl_long, cl.cl_comment AS cl_comment,
    cl.cl_dtclass AS cl_dtclass, cl.cl_geolqlt AS cl_geolqlt,
    cl.cl_geolmod AS cl_geolmod, cl.cl_geolsrc AS cl_geolsrc,
    cl.cl_creadat AS cl_creadat, cl.cl_majdate AS cl_majdate,
    cl.cl_majsrc AS cl_majsrc, cl.cl_abddate AS cl_abddate,
    cl.cl_abdsrc AS cl_abdsrc, cl.geom AS geom
FROM
	t_ropt AS rt,
	t_fibre AS fo,
	t_cable AS cb,
	t_cableline AS cl
WHERE
   rt.rt_fo_code = fo.fo_code
   AND fo.fo_cb_code = cb.cb_code
   AND cl.cl_cb_code = cb.cb_code;
   
INSERT INTO views_geometry_columns VALUES
('vs_elem_rt_fo_cb_cl', 'geom', 'rowid', 't_cableline', 'geom', 1); 


/*vs_elem_lv_nd*/
DROP VIEW IF EXISTS vs_elem_lv_nd;
CREATE VIEW vs_elem_lv_nd AS
SELECT nd.rowid AS rowid,
    lv.lv_id AS lv_id, lv.lv_cb_code AS lv_cb_code,
    lv.lv_nd_code AS lv_nd_code, lv.lv_long AS lv_long,
    lv.lv_creadat AS lv_creadat, lv.lv_majdate AS lv_majdate,
    lv.lv_majsrc AS lv_majsrc, lv.lv_abddate AS lv_abddate,
    lv.lv_abdsrc AS lv_abdsrc,
	nd.nd_code AS nd_code, nd.nd_codeext AS nd_codeext,
	nd.nd_nom AS nd_nom, nd.nd_coderat AS nd_coderat,
	nd.nd_r1_code AS nd_r1_code, nd.nd_r2_code AS nd_r2_code,
	nd.nd_r3_code AS nd_r3_code, nd.nd_r4_code AS nd_r4_code,
	nd.nd_voie AS nd_voie, nd.nd_type AS nd_type,
	nd.nd_type_ep AS nd_type_ep, nd.nd_comment AS nd_comment,
	nd.nd_dtclass AS nd_dtclass, nd.nd_geolqlt AS nd_geolqlt,
	nd.nd_geolmod AS nd_geolmod, nd.nd_geolsrc AS nd_geolsrc,
	nd.nd_creadat AS nd_creadat, nd.nd_majdate AS nd_majdate,
	nd.nd_majsrc AS nd_majsrc, nd.nd_abddate AS nd_abddate,
	nd.nd_abdsrc AS nd_abdsrc, nd.geom AS geom
FROM
   t_love AS lv,
   t_noeud AS nd
WHERE
   lv.lv_nd_code = nd.nd_code;

INSERT INTO views_geometry_columns VALUES
('vs_elem_lv_nd', 'geom', 'rowid', 't_noeud', 'geom', 1); 


/*vs_elem_bp_pt_nd*/
DROP VIEW IF EXISTS vs_elem_bp_pt_nd;
CREATE VIEW vs_elem_bp_pt_nd AS
SELECT nd.rowid AS rowid,
	bp_code AS bp_code, bp_etiquet AS bp_etiquet,
    bp_codeext AS bp_codeext, bp_pt_code AS bp_pt_code,
    bp_lt_code AS bp_lt_code, bp_sf_code AS bp_sf_code,
    bp_prop AS bp_prop, bp_gest AS bp_gest, bp_user AS bp_user,
    bp_proptyp AS bp_proptyp, bp_statut AS bp_statut,
    bp_etat AS bp_etat, bp_occp AS bp_occp, bp_datemes AS bp_datemes,
    bp_avct AS bp_avct, bp_typephy AS bp_typephy,
    bp_typelog AS bp_typelog, bp_rf_code AS bp_rf_code,
    bp_entrees AS bp_entrees, bp_ref_kit AS bp_ref_kit,
    bp_ca_nb AS bp_ca_nb, bp_nb_pas AS bp_nb_pas,
    bp_linecod AS bp_linecod, bp_oc_code AS bp_oc_code,
    bp_racco AS bp_racco, bp_comment AS bp_comment,
    bp_creadat AS bp_creadat, bp_majdate AS bp_majdate,
    bp_majsrc AS bp_majsrc, bp_abddate AS bp_abddate,
    bp_abdsrc AS bp_abdsrc,
	pt.pt_code AS pt_code, pt.pt_codeext AS pt_codeext,
    pt.pt_etiquet AS pt_etiquet, pt.pt_nd_code AS pt_nd_code,
    pt.pt_ad_code AS pt_ad_code, pt.pt_gest_do AS pt_gest_do,
    pt.pt_prop_do AS pt_prop_do, pt.pt_prop AS pt_prop,
    pt.pt_gest AS pt_gest, pt.pt_user AS pt_user,
    pt.pt_proptyp AS pt_proptyp, pt.pt_statut AS pt_statut,
    pt.pt_etat AS pt_etat, pt.pt_dateins AS pt_dateins,
    pt.pt_datemes AS pt_datemes, pt.pt_avct AS pt_avct,
    pt.pt_typephy AS pt_typephy, pt.pt_typelog AS pt_typelog,
    pt.pt_rf_code AS pt_rf_code, pt.pt_nature AS pt_nature,
    pt.pt_secu AS pt_secu, pt.pt_occp AS pt_occp,
    pt.pt_a_dan AS pt_a_dan, pt.pt_a_dtetu AS pt_a_dtetu,
    pt.pt_a_struc AS pt_a_struc, pt.pt_a_haut AS pt_a_haut,
    pt.pt_a_passa AS pt_a_passa, pt.pt_a_strat AS pt_a_strat,
    pt.pt_rotatio AS pt_rotatio, pt.pt_detec AS pt_detec,
    pt.pt_comment AS pt_comment, pt.pt_creadat AS pt_creadat,
    pt.pt_majdate AS pt_majdate, pt.pt_majsrc AS pt_majsrc,
    pt.pt_abddate AS pt_abddate, pt.pt_abdsrc AS pt_abdsrc,
    nd.nd_code AS nd_code, nd.nd_codeext AS nd_codeext,
    nd.nd_nom AS nd_nom, nd.nd_coderat AS nd_coderat,
    nd.nd_r1_code AS nd_r1_code, nd.nd_r2_code AS nd_r2_code,
    nd.nd_r3_code AS nd_r3_code, nd.nd_r4_code AS nd_r4_code,
	nd.nd_voie AS nd_voie, nd.nd_type AS nd_type,
	nd.nd_type_ep AS nd_type_ep, nd.nd_comment AS nd_comment,
	nd.nd_dtclass AS nd_dtclass, nd.nd_geolqlt AS nd_geolqlt,
	nd.nd_geolmod AS nd_geolmod, nd.nd_geolsrc AS nd_geolsrc,
	nd.nd_creadat AS nd_creadat, nd.nd_majdate AS nd_majdate,
	nd.nd_majsrc AS nd_majsrc, nd.nd_abddate AS nd_abddate,
	nd.nd_abdsrc AS nd_abdsrc, nd.geom AS geom
FROM
   t_ebp AS bp,
   t_ptech AS pt,
   t_noeud AS nd
WHERE
	bp.bp_pt_code = pt_code
   AND pt.pt_nd_code = nd.nd_code;

INSERT INTO views_geometry_columns VALUES
('vs_elem_bp_pt_nd', 'geom', 'rowid', 't_noeud', 'geom', 1); 


/*vs_elem_cs_bp_pt_nd*/
DROP VIEW IF EXISTS vs_elem_cs_bp_pt_nd;
CREATE VIEW vs_elem_cs_bp_pt_nd AS
SELECT nd.rowid AS rowid,
	cs_code AS cs_code, cs_nb_pas AS cs_nb_pas,
    cs_bp_code AS cs_bp_code, cs_num AS cs_num,
    cs_type AS cs_type, cs_face AS cs_face, cs_rf_code AS cs_rf_code,
    cs_comment AS cs_comment, cs_creadat AS cs_creadat,
    cs_majdate AS cs_majdate, cs_majsrc AS cs_majsrc,
    cs_abddate AS cs_abddate, cs_abdsrc AS cs_abdsrc,
	bp_code AS bp_code, bp_etiquet AS bp_etiquet,
    bp_codeext AS bp_codeext, bp_pt_code AS bp_pt_code,
    bp_lt_code AS bp_lt_code, bp_sf_code AS bp_sf_code,
    bp_prop AS bp_prop, bp_gest AS bp_gest, bp_user AS bp_user,
    bp_proptyp AS bp_proptyp, bp_statut AS bp_statut,
    bp_etat AS bp_etat, bp_occp AS bp_occp, bp_datemes AS bp_datemes,
    bp_avct AS bp_avct, bp_typephy AS bp_typephy,
    bp_typelog AS bp_typelog, bp_rf_code AS bp_rf_code,
    bp_entrees AS bp_entrees, bp_ref_kit AS bp_ref_kit,
    bp_ca_nb AS bp_ca_nb, bp_nb_pas AS bp_nb_pas,
    bp_linecod AS bp_linecod, bp_oc_code AS bp_oc_code,
    bp_racco AS bp_racco, bp_comment AS bp_comment,
    bp_creadat AS bp_creadat, bp_majdate AS bp_majdate,
    bp_majsrc AS bp_majsrc, bp_abddate AS bp_abddate,
    bp_abdsrc AS bp_abdsrc,
	pt.pt_code AS pt_code, pt.pt_codeext AS pt_codeext,
    pt.pt_etiquet AS pt_etiquet, pt.pt_nd_code AS pt_nd_code,
    pt.pt_ad_code AS pt_ad_code, pt.pt_gest_do AS pt_gest_do,
    pt.pt_prop_do AS pt_prop_do, pt.pt_prop AS pt_prop,
    pt.pt_gest AS pt_gest, pt.pt_user AS pt_user,
    pt.pt_proptyp AS pt_proptyp, pt.pt_statut AS pt_statut,
    pt.pt_etat AS pt_etat, pt.pt_dateins AS pt_dateins,
    pt.pt_datemes AS pt_datemes, pt.pt_avct AS pt_avct,
    pt.pt_typephy AS pt_typephy, pt.pt_typelog AS pt_typelog,
    pt.pt_rf_code AS pt_rf_code, pt.pt_nature AS pt_nature,
    pt.pt_secu AS pt_secu, pt.pt_occp AS pt_occp,
    pt.pt_a_dan AS pt_a_dan, pt.pt_a_dtetu AS pt_a_dtetu,
    pt.pt_a_struc AS pt_a_struc, pt.pt_a_haut AS pt_a_haut,
    pt.pt_a_passa AS pt_a_passa, pt.pt_a_strat AS pt_a_strat,
    pt.pt_rotatio AS pt_rotatio, pt.pt_detec AS pt_detec,
    pt.pt_comment AS pt_comment, pt.pt_creadat AS pt_creadat,
    pt.pt_majdate AS pt_majdate, pt.pt_majsrc AS pt_majsrc,
    pt.pt_abddate AS pt_abddate, pt.pt_abdsrc AS pt_abdsrc,
    nd.nd_code AS nd_code, nd.nd_codeext AS nd_codeext,
    nd.nd_nom AS nd_nom, nd.nd_coderat AS nd_coderat,
    nd.nd_r1_code AS nd_r1_code, nd.nd_r2_code AS nd_r2_code,
    nd.nd_r3_code AS nd_r3_code, nd.nd_r4_code AS nd_r4_code,
	nd.nd_voie AS nd_voie, nd.nd_type AS nd_type,
	nd.nd_type_ep AS nd_type_ep, nd.nd_comment AS nd_comment,
	nd.nd_dtclass AS nd_dtclass, nd.nd_geolqlt AS nd_geolqlt,
	nd.nd_geolmod AS nd_geolmod, nd.nd_geolsrc AS nd_geolsrc,
	nd.nd_creadat AS nd_creadat, nd.nd_majdate AS nd_majdate,
	nd.nd_majsrc AS nd_majsrc, nd.nd_abddate AS nd_abddate,
	nd.nd_abdsrc AS nd_abdsrc, nd.geom AS geom
FROM
	t_cassette AS cs,
   t_ebp AS bp,
   t_ptech AS pt,
   t_noeud AS nd
WHERE
	cs.cs_bp_code = bp.bp_code
   AND bp.bp_pt_code = pt_code
   AND pt.pt_nd_code = nd.nd_code;

INSERT INTO views_geometry_columns VALUES
('vs_elem_cs_bp_pt_nd', 'geom', 'rowid', 't_noeud', 'geom', 1); 


/*vs_elem_se_nd*/
DROP VIEW IF EXISTS vs_elem_se_nd;
CREATE VIEW vs_elem_se_nd AS
SELECT nd.rowid AS rowid,
	se_code AS se_code, se_nd_code AS se_nd_code,
    se_anfr AS se_anfr, se_prop AS se_prop, se_gest AS se_gest,
    se_user AS se_user, se_proptyp AS se_proptyp,
    se_statut AS se_statut, se_etat AS se_etat,
    se_occp AS se_occp, se_dateins AS se_dateins,
    se_datemes AS se_datemes, se_type AS se_type,
    se_haut AS se_haut, se_ad_code AS se_ad_code,
    se_comment AS se_comment, se_creadat AS se_creadat,
    se_majdate AS se_majdate, se_majsrc AS se_majsrc,
    se_abddate AS se_abddate, se_abdsrc AS se_abdsrc,
	nd.nd_code AS nd_code, nd.nd_codeext AS nd_codeext,
	nd.nd_nom AS nd_nom, nd.nd_coderat AS nd_coderat,
	nd.nd_r1_code AS nd_r1_code, nd.nd_r2_code AS nd_r2_code,
	nd.nd_r3_code AS nd_r3_code, nd.nd_r4_code AS nd_r4_code,
	nd.nd_voie AS nd_voie, nd.nd_type AS nd_type,
	nd.nd_type_ep AS nd_type_ep, nd.nd_comment AS nd_comment,
	nd.nd_dtclass AS nd_dtclass, nd.nd_geolqlt AS nd_geolqlt,
	nd.nd_geolmod AS nd_geolmod, nd.nd_geolsrc AS nd_geolsrc,
	nd.nd_creadat AS nd_creadat, nd.nd_majdate AS nd_majdate,
	nd.nd_majsrc AS nd_majsrc, nd.nd_abddate AS nd_abddate,
	nd.nd_abdsrc AS nd_abdsrc, nd.geom AS geom
FROM
   t_siteemission AS se,
   t_noeud AS nd
WHERE
   se.se_nd_code = nd.nd_code;

INSERT INTO views_geometry_columns VALUES
('vs_elem_se_nd', 'geom', 'rowid', 't_noeud', 'geom', 1); 


/*vs_elem_do_em*/
DROP VIEW IF EXISTS vs_elem_do_em;
CREATE VIEW vs_elem_do_em AS
SELECT em.rowid AS rowid,
	do.do_code AS do_code, do.do_ref AS do_ref,
    do.do_reftier AS do_reftier, do.do_r1_code AS do_r1_code,
    do.do_r2_code AS do_r2_code, do.do_r3_code AS do_r3_code,
    do.do_r4_code AS do_r4_code, do.do_type AS do_type,
    do.do_indice AS do_indice, do.do_date AS do_date,
    do.do_classe AS do_classe, do.do_url1 AS do_url1,
    do.do_url2 AS do_url2, do.do_comment AS do_comment,
    do.do_creadat AS do_creadat, do.do_majdate AS do_majdate,
    do.do_majsrc AS do_majsrc, do.do_abddate AS do_abddate,
    do.do_abdsrc AS do_abdsrc, 
	em.em_code AS em_code,
    em.em_do_code AS em_do_code, em.em_geolsrc AS em_geolsrc,
    em.em_creadat AS em_creadat, em.em_majdate AS em_majdate,
    em.em_majsrc AS em_majsrc, em.em_abddate AS em_abddate,
    em.em_abdsrc AS em_abdsrc, em.geom AS geom
FROM
   t_document AS do,
   t_empreinte AS em
WHERE
   em.em_do_code = do.do_code;

INSERT INTO views_geometry_columns VALUES
('vs_elem_do_em', 'geom', 'rowid', 't_empreinte', 'geom', 1); 


/*vs_elem_cd_dm_cm*/
DROP VIEW IF EXISTS vs_elem_cd_dm_cm;
CREATE VIEW vs_elem_cd_dm_cm AS
SELECT cm.rowid AS rowid,
	cd_code AS cd_code, cd_codeext AS cd_codeext,
    cd_etiquet AS cd_etiquet, cd_cd_code AS cd_cd_code,
    cd_r1_code AS cd_r1_code, cd_r2_code AS cd_r2_code,
    cd_r3_code AS cd_r3_code, cd_r4_code AS cd_r4_code,
    cd_prop AS cd_prop, cd_gest AS cd_gest, cd_user AS cd_user,
    cd_proptyp AS cd_proptyp, cd_statut AS cd_statut,
    cd_etat AS cd_etat, cd_dateaig AS cd_dateaig,
    cd_dateman AS cd_dateman, cd_datemes AS cd_datemes,
    cd_avct AS cd_avct, cd_type AS cd_type, cd_dia_int AS cd_dia_int,
    cd_dia_ext AS cd_dia_ext, cd_color AS cd_color,
    cd_long AS cd_long, cd_nbcable AS cd_nbcable,
    cd_occup AS cd_occup, cd_comment AS cd_comment,
    cd_creadat AS cd_creadat, cd_majdate AS cd_majdate,
    cd_majsrc AS cd_majsrc, cd_abddate AS cd_abddate,
    cd_abdsrc AS cd_abdsrc,
	dm.dm_cd_code AS dm_cd_code, dm.dm_cm_code AS dm_cm_code,
    dm.dm_creadat AS dm_creadat, dm.dm_majdate AS dm_majdate,
    dm.dm_majsrc AS dm_majsrc, dm.dm_abddate AS dm_abddate,
    dm.dm_abdsrc AS dm_abdsrc, cm.cm_code AS cm_code,
    cm.cm_codeext AS cm_codeext, cm.cm_ndcode1 AS cm_ndcode1,
    cm.cm_ndcode2 AS cm_ndcode2, cm.cm_cm1 AS cm_cm1,
    cm.cm_cm2 AS cm_cm2, cm.cm_r1_code AS cm_r1_code,
    cm.cm_r2_code AS cm_r2_code, cm.cm_r3_code AS cm_r3_code,
    cm.cm_r4_code AS cm_r4_code, cm.cm_voie AS cm_voie,
    cm.cm_gest_do AS cm_gest_do, cm.cm_prop_do AS cm_prop_do,
    cm.cm_statut AS cm_statut, cm.cm_etat AS cm_etat,
    cm.cm_datcons AS cm_datcons, cm.cm_datemes AS cm_datemes,
    cm.cm_avct AS cm_avct, cm.cm_typelog AS cm_typelog,
    cm.cm_typ_imp AS cm_typ_imp, cm.cm_nature AS cm_nature,
    cm.cm_compo AS cm_compo, cm.cm_cddispo AS cm_cddispo,
    cm.cm_fo_util AS cm_fo_util, cm.cm_mod_pos AS cm_mod_pos,
    cm.cm_passage AS cm_passage, cm.cm_revet AS cm_revet,
    cm.cm_remblai AS cm_remblai, cm.cm_charge AS cm_charge,
    cm.cm_larg AS cm_larg, cm.cm_fildtec AS cm_fildtec,
    cm.cm_mut_org AS cm_mut_org, cm.cm_long AS cm_long,
    cm.cm_lgreel AS cm_lgreel, cm.cm_comment AS cm_comment,
    cm.cm_dtclass AS cm_dtclass, cm.cm_geolqlt AS cm_geolqlt,
    cm.cm_geolmod AS cm_geolmod, cm.cm_geolsrc AS cm_geolsrc,
    cm.cm_creadat AS cm_creadat, cm.cm_majdate AS cm_majdate,
    cm.cm_majsrc AS cm_majsrc, cm.cm_abddate AS cm_abddate,
    cm.cm_abdsrc AS cm_abdsrc, cm.geom AS geom
FROM
   t_conduite AS cd,
   t_cond_chem AS dm,
   t_cheminement AS cm
WHERE
   cd.cd_code = dm.dm_cd_code
   AND cm.cm_code = dm_cm_code
;

INSERT INTO views_geometry_columns VALUES
('vs_elem_cd_dm_cm', 'geom', 'rowid', 't_cheminement', 'geom', 1); 


/*vs_elem_cb_nd*/
DROP VIEW IF EXISTS vs_elem_cb_nd;
CREATE VIEW vs_elem_cb_nd AS
SELECT DISTINCT
	'ND1-' || cb.cb_code || '_' || cb.cb_nd1 AS cb_nd,
	nd.ROWID AS ROWID, cb.cb_code AS cb_code,
    cb.cb_codeext AS cb_codeext, cb.cb_etiquet AS cb_etiquet,
    cb.cb_nd1 AS cb_nd1, cb.cb_nd2 AS cb_nd2,
    cb.cb_r1_code AS cb_r1_code, cb.cb_r2_code AS cb_r2_code,
    cb.cb_r3_code AS cb_r3_code, cb.cb_r4_code AS cb_r4_code,
    cb.cb_prop AS cb_prop, cb.cb_gest AS cb_gest,
    cb.cb_user AS cb_user, cb.cb_proptyp AS cb_proptyp,
    cb.cb_statut AS cb_statut, cb.cb_etat AS cb_etat,
    cb.cb_dateins AS cb_dateins, cb.cb_datemes AS cb_datemes,
    cb.cb_avct AS cb_avct, cb.cb_tech AS cb_tech,
    cb.cb_typephy AS cb_typephy, cb.cb_typelog AS cb_typelog,
    cb.cb_rf_code AS cb_rf_code, cb.cb_capafo AS cb_capafo,
    cb.cb_fo_disp AS cb_fo_disp, cb.cb_fo_util AS cb_fo_util,
    cb.cb_modulo AS cb_modulo, cb.cb_diam AS cb_diam,
    cb.cb_color AS cb_color, cb.cb_lgreel AS cb_lgreel,
    cb.cb_localis AS cb_localis, cb.cb_comment AS cb_comment,
    cb.cb_creadat AS cb_creadat, cb.cb_majdate AS cb_majdate,
    cb.cb_majsrc AS cb_majsrc, cb.cb_abddate AS cb_abddate,
    cb.cb_abdsrc AS cb_abdsrc, nd.nd_code AS nd_code,
    nd.nd_codeext AS nd_codeext, nd.nd_nom AS nd_nom,
    nd.nd_coderat AS nd_coderat, nd.nd_r1_code AS nd_r1_code,
    nd.nd_r2_code AS nd_r2_code, nd.nd_r3_code AS nd_r3_code,
    nd.nd_r4_code AS nd_r4_code, nd.nd_voie AS nd_voie,
    nd.nd_type AS nd_type, nd.nd_type_ep AS nd_type_ep,
    nd.nd_comment AS nd_comment, nd.nd_dtclass AS nd_dtclass,
    nd.nd_geolqlt AS nd_geolqlt, nd.nd_geolmod AS nd_geolmod,
    nd.nd_geolsrc AS nd_geolsrc, nd.nd_creadat AS nd_creadat,
    nd.nd_majdate AS nd_majdate, nd.nd_majsrc AS nd_majsrc,
    nd.nd_abddate AS nd_abddate, nd.nd_abdsrc AS nd_abdsrc,
    nd.geom AS geom
FROM t_cable AS cb, t_noeud AS nd
WHERE cb.cb_nd1 = nd.nd_code
UNION
SELECT DISTINCT
	'ND2-' || cb.cb_code || '_' || cb.cb_nd2 AS cb_nd,
	nd.ROWID AS ROWID, cb.cb_code AS cb_code,
    cb.cb_codeext AS cb_codeext, cb.cb_etiquet AS cb_etiquet,
    cb.cb_nd1 AS cb_nd1, cb.cb_nd2 AS cb_nd2,
    cb.cb_r1_code AS cb_r1_code, cb.cb_r2_code AS cb_r2_code,
    cb.cb_r3_code AS cb_r3_code, cb.cb_r4_code AS cb_r4_code,
    cb.cb_prop AS cb_prop, cb.cb_gest AS cb_gest,
    cb.cb_user AS cb_user, cb.cb_proptyp AS cb_proptyp,
    cb.cb_statut AS cb_statut, cb.cb_etat AS cb_etat,
    cb.cb_dateins AS cb_dateins, cb.cb_datemes AS cb_datemes,
    cb.cb_avct AS cb_avct, cb.cb_tech AS cb_tech,
    cb.cb_typephy AS cb_typephy, cb.cb_typelog AS cb_typelog,
    cb.cb_rf_code AS cb_rf_code, cb.cb_capafo AS cb_capafo,
    cb.cb_fo_disp AS cb_fo_disp, cb.cb_fo_util AS cb_fo_util,
    cb.cb_modulo AS cb_modulo, cb.cb_diam AS cb_diam,
    cb.cb_color AS cb_color, cb.cb_lgreel AS cb_lgreel,
    cb.cb_localis AS cb_localis, cb.cb_comment AS cb_comment,
    cb.cb_creadat AS cb_creadat, cb.cb_majdate AS cb_majdate,
    cb.cb_majsrc AS cb_majsrc, cb.cb_abddate AS cb_abddate,
    cb.cb_abdsrc AS cb_abdsrc, nd.nd_code AS nd_code,
    nd.nd_codeext AS nd_codeext, nd.nd_nom AS nd_nom,
    nd.nd_coderat AS nd_coderat, nd.nd_r1_code AS nd_r1_code,
    nd.nd_r2_code AS nd_r2_code, nd.nd_r3_code AS nd_r3_code,
    nd.nd_r4_code AS nd_r4_code, nd.nd_voie AS nd_voie,
    nd.nd_type AS nd_type, nd.nd_type_ep AS nd_type_ep,
    nd.nd_comment AS nd_comment, nd.nd_dtclass AS nd_dtclass,
    nd.nd_geolqlt AS nd_geolqlt, nd.nd_geolmod AS nd_geolmod,
    nd.nd_geolsrc AS nd_geolsrc, nd.nd_creadat AS nd_creadat,
    nd.nd_majdate AS nd_majdate, nd.nd_majsrc AS nd_majsrc,
    nd.nd_abddate AS nd_abddate, nd.nd_abdsrc AS nd_abdsrc,
    nd.geom AS geom
FROM t_cable AS cb, t_noeud AS nd
WHERE cb.cb_nd2 = nd.nd_code;

INSERT INTO views_geometry_columns VALUES
('vs_elem_cb_nd', 'geom', 'cb_nd', 't_noeud', 'geom', 1); 


/*vs_elem_cb_nd1*/
DROP VIEW IF EXISTS vs_elem_cb_nd1;
CREATE VIEW vs_elem_cb_nd1 AS
SELECT 
	nd.ROWID AS ROWID, cb.cb_code AS cb_code,
    cb.cb_codeext AS cb_codeext, cb.cb_etiquet AS cb_etiquet,
    cb.cb_nd1 AS cb_nd1, cb.cb_nd2 AS cb_nd2,
    cb.cb_r1_code AS cb_r1_code, cb.cb_r2_code AS cb_r2_code,
    cb.cb_r3_code AS cb_r3_code, cb.cb_r4_code AS cb_r4_code,
    cb.cb_prop AS cb_prop, cb.cb_gest AS cb_gest,
    cb.cb_user AS cb_user, cb.cb_proptyp AS cb_proptyp,
    cb.cb_statut AS cb_statut, cb.cb_etat AS cb_etat,
    cb.cb_dateins AS cb_dateins, cb.cb_datemes AS cb_datemes,
    cb.cb_avct AS cb_avct, cb.cb_tech AS cb_tech,
    cb.cb_typephy AS cb_typephy, cb.cb_typelog AS cb_typelog,
    cb.cb_rf_code AS cb_rf_code, cb.cb_capafo AS cb_capafo,
    cb.cb_fo_disp AS cb_fo_disp, cb.cb_fo_util AS cb_fo_util,
    cb.cb_modulo AS cb_modulo, cb.cb_diam AS cb_diam,
    cb.cb_color AS cb_color, cb.cb_lgreel AS cb_lgreel,
    cb.cb_localis AS cb_localis, cb.cb_comment AS cb_comment,
    cb.cb_creadat AS cb_creadat, cb.cb_majdate AS cb_majdate,
    cb.cb_majsrc AS cb_majsrc, cb.cb_abddate AS cb_abddate,
    cb.cb_abdsrc AS cb_abdsrc, nd.nd_code AS nd_code,
    nd.nd_codeext AS nd_codeext, nd.nd_nom AS nd_nom,
    nd.nd_coderat AS nd_coderat, nd.nd_r1_code AS nd_r1_code,
    nd.nd_r2_code AS nd_r2_code, nd.nd_r3_code AS nd_r3_code,
    nd.nd_r4_code AS nd_r4_code, nd.nd_voie AS nd_voie,
    nd.nd_type AS nd_type, nd.nd_type_ep AS nd_type_ep,
    nd.nd_comment AS nd_comment, nd.nd_dtclass AS nd_dtclass,
    nd.nd_geolqlt AS nd_geolqlt, nd.nd_geolmod AS nd_geolmod,
    nd.nd_geolsrc AS nd_geolsrc, nd.nd_creadat AS nd_creadat,
    nd.nd_majdate AS nd_majdate, nd.nd_majsrc AS nd_majsrc,
    nd.nd_abddate AS nd_abddate, nd.nd_abdsrc AS nd_abdsrc,
    nd.geom AS geom
FROM t_cable AS cb, t_noeud AS nd
WHERE cb.cb_nd1 = nd.nd_code;

INSERT INTO views_geometry_columns VALUES
('vs_elem_cb_nd1', 'geom', 'rowid', 't_noeud', 'geom', 1); 


/*vs_elem_cb_nd2*/
DROP VIEW IF EXISTS vs_elem_cb_nd2;
CREATE VIEW vs_elem_cb_nd2 AS
SELECT 
	nd.ROWID AS ROWID, cb.cb_code AS cb_code,
    cb.cb_codeext AS cb_codeext, cb.cb_etiquet AS cb_etiquet,
    cb.cb_nd1 AS cb_nd1, cb.cb_nd2 AS cb_nd2,
    cb.cb_r1_code AS cb_r1_code, cb.cb_r2_code AS cb_r2_code,
    cb.cb_r3_code AS cb_r3_code, cb.cb_r4_code AS cb_r4_code,
    cb.cb_prop AS cb_prop, cb.cb_gest AS cb_gest,
    cb.cb_user AS cb_user, cb.cb_proptyp AS cb_proptyp,
    cb.cb_statut AS cb_statut, cb.cb_etat AS cb_etat,
    cb.cb_dateins AS cb_dateins, cb.cb_datemes AS cb_datemes,
    cb.cb_avct AS cb_avct, cb.cb_tech AS cb_tech,
    cb.cb_typephy AS cb_typephy, cb.cb_typelog AS cb_typelog,
    cb.cb_rf_code AS cb_rf_code, cb.cb_capafo AS cb_capafo,
    cb.cb_fo_disp AS cb_fo_disp, cb.cb_fo_util AS cb_fo_util,
    cb.cb_modulo AS cb_modulo, cb.cb_diam AS cb_diam,
    cb.cb_color AS cb_color, cb.cb_lgreel AS cb_lgreel,
    cb.cb_localis AS cb_localis, cb.cb_comment AS cb_comment,
    cb.cb_creadat AS cb_creadat, cb.cb_majdate AS cb_majdate,
    cb.cb_majsrc AS cb_majsrc, cb.cb_abddate AS cb_abddate,
    cb.cb_abdsrc AS cb_abdsrc, 
	--nd.ROWID AS ROWID_1,
	nd.nd_code AS nd_code,
    nd.nd_codeext AS nd_codeext, nd.nd_nom AS nd_nom,
    nd.nd_coderat AS nd_coderat, nd.nd_r1_code AS nd_r1_code,
    nd.nd_r2_code AS nd_r2_code, nd.nd_r3_code AS nd_r3_code,
    nd.nd_r4_code AS nd_r4_code, nd.nd_voie AS nd_voie,
    nd.nd_type AS nd_type, nd.nd_type_ep AS nd_type_ep,
    nd.nd_comment AS nd_comment, nd.nd_dtclass AS nd_dtclass,
    nd.nd_geolqlt AS nd_geolqlt, nd.nd_geolmod AS nd_geolmod,
    nd.nd_geolsrc AS nd_geolsrc, nd.nd_creadat AS nd_creadat,
    nd.nd_majdate AS nd_majdate, nd.nd_majsrc AS nd_majsrc,
    nd.nd_abddate AS nd_abddate, nd.nd_abdsrc AS nd_abdsrc,
    nd.geom AS geom
FROM t_cable AS cb
JOIN t_noeud AS nd ON (cb.cb_nd2 = nd.nd_code);

INSERT INTO views_geometry_columns VALUES
('vs_elem_cb_nd2', 'geom', 'rowid', 't_noeud', 'geom', 1); 





/*######################################*/
/*VUES ELEMENTAIRES NON SPATIALES*/

/*v_elem_od_do*/  
/*BUG: QGIS ne l'affiche pas correctement.
DROP VIEW IF EXISTS v_elem_od_do;
CREATE VIEW v_elem_od_do AS
SELECT *
FROM t_docobj AS od
JOIN t_document AS do ON (do.do_code = od.od_do_code);
*/

/*v_elem_od_do*/  
/*BUG: QGIS ne l'affiche pas correctement. 
DROP VIEW IF EXISTS v_elem_od_do;
CREATE VIEW v_elem_od_do AS
SELECT *
FROM t_docobj AS od, t_document AS do 
WHERE do.do_code = od.od_do_code;
*/

/*v_elem_od_do*/  
DROP VIEW IF EXISTS v_elem_od_do;
CREATE VIEW v_elem_od_do AS
SELECT "od"."ROWID" AS "ROWID", "od"."od_id" AS "od_id",
    "od"."od_do_code" AS "od_do_code", "od"."od_tbltype" AS "od_tbltype",
    "od"."od_codeobj" AS "od_codeobj", "od"."od_creadat" AS "od_creadat",
    "od"."od_majdate" AS "od_majdate", "od"."od_majsrc" AS "od_majsrc",
    "od"."od_abddate" AS "od_abddate", "od"."od_abdsrc" AS "od_abdsrc",
    "do"."do_code" AS "do_code", "do"."do_ref" AS "do_ref",
    "do"."do_reftier" AS "do_reftier", "do"."do_r1_code" AS "do_r1_code",
    "do"."do_r2_code" AS "do_r2_code", "do"."do_r3_code" AS "do_r3_code",
    "do"."do_r4_code" AS "do_r4_code", "do"."do_type" AS "do_type",
    "do"."do_indice" AS "do_indice", "do"."do_date" AS "do_date",
    "do"."do_classe" AS "do_classe", "do"."do_url1" AS "do_url1",
    "do"."do_url2" AS "do_url2", "do"."do_comment" AS "do_comment",
    "do"."do_creadat" AS "do_creadat", "do"."do_majdate" AS "do_majdate",
    "do"."do_majsrc" AS "do_majsrc", "do"."do_abddate" AS "do_abddate",
    "do"."do_abdsrc" AS "do_abdsrc"
FROM "t_docobj" AS "od"
LEFT JOIN "t_document" AS "do" ON ("od"."od_do_code" = "do"."do_code");


/*v_elem_cc_cd*/  
DROP VIEW IF EXISTS v_elem_cc_cd;
CREATE VIEW v_elem_cc_cd AS
SELECT 
  t_cab_cond.cc_cd_code || '_' || t_cab_cond.cc_cb_code AS cc_cd,
  * 
FROM 
  t_conduite, 
  t_cab_cond
WHERE 
  t_cab_cond.cc_cd_code = t_conduite.cd_code;


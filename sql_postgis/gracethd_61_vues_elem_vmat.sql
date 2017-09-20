/*GraceTHD v2.0*/
/*Creation des vues élémentaires MATERIALIZED*/
/*PostGIS*/

/* gracethd_61_vues_elem_materialized.sql */
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


SET search_path TO gracethd, public;

/*######################################*/
/*TODO  : */


/*######################################*/
/*VUES ELEMENTAIRES SPATIALES*/
/*Les vues élémentaires servent à consulter les données brutes dans un SIG*/ 

/*mvs_elem_sf_nd*/
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_sf_nd";
CREATE MATERIALIZED VIEW "mvs_elem_sf_nd" AS
SELECT 
  * 
FROM 
  gracethd.t_suf, 
  gracethd.t_noeud
WHERE 
  t_suf.sf_nd_code = t_noeud.nd_code;

  
/*mvs_elem_bp_sf_nd*/
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_bp_sf_nd";
CREATE MATERIALIZED VIEW "mvs_elem_bp_sf_nd" AS
SELECT 
  * 
FROM 
  gracethd.t_ebp,
  gracethd.t_suf, 
  gracethd.t_noeud
WHERE 
  t_ebp.bp_sf_code = t_suf.sf_code AND
  t_suf.sf_nd_code = t_noeud.nd_code;

  
/*mvs_elem_st_nd*/
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_st_nd";
CREATE MATERIALIZED VIEW "mvs_elem_st_nd" AS
SELECT 
  * 
FROM 
  gracethd.t_sitetech, 
  gracethd.t_noeud
WHERE 
  t_sitetech.st_nd_code = t_noeud.nd_code;

  
/*mvs_elem_lt_st_nd*/
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_lt_st_nd";
CREATE MATERIALIZED VIEW "mvs_elem_lt_st_nd" AS
SELECT 
  * 
FROM 
  gracethd.t_ltech,
  gracethd.t_sitetech, 
  gracethd.t_noeud 
WHERE 
  t_sitetech.st_nd_code = t_noeud.nd_code AND
  t_ltech.lt_st_code = t_sitetech.st_code;

/*mvs_elem_bp_lt_st_nd*/ 
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_bp_lt_st_nd";
CREATE MATERIALIZED VIEW "mvs_elem_bp_lt_st_nd" AS
SELECT 
  * 
FROM 
  gracethd.t_ebp,
  gracethd.t_ltech,
  gracethd.t_sitetech, 
  gracethd.t_noeud 
WHERE 
  t_sitetech.st_nd_code = t_noeud.nd_code AND
  t_ltech.lt_st_code = t_sitetech.st_code AND
  t_ebp.bp_lt_code = t_ltech.lt_code;  

/*vs_elem_cs_bp_lt_st_nd*/ 
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_cs_bp_lt_st_nd";
CREATE MATERIALIZED VIEW "mvs_elem_cs_bp_lt_st_nd" AS
SELECT 
  * 
FROM 
  gracethd.t_cassette,
  gracethd.t_ebp,
  gracethd.t_ltech,
  gracethd.t_sitetech, 
  gracethd.t_noeud 
WHERE 
  t_sitetech.st_nd_code = t_noeud.nd_code AND
  t_ltech.lt_st_code = t_sitetech.st_code AND
  t_ebp.bp_lt_code = t_ltech.lt_code AND
  t_cassette.cs_bp_code = t_ebp.bp_code
  ; 

/*mvs_elem_ba_lt_st_nd*/
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_ba_lt_st_nd";
CREATE MATERIALIZED VIEW "mvs_elem_ba_lt_st_nd" AS
SELECT 
  * 
FROM 
  gracethd.t_baie,
  gracethd.t_ltech, 
  gracethd.t_sitetech, 
  gracethd.t_noeud
WHERE 
  t_sitetech.st_nd_code = t_noeud.nd_code AND
  t_ltech.lt_st_code = t_sitetech.st_code AND
  t_baie.ba_lt_code = t_ltech.lt_code;

/*mvs_elem_ti_ba_lt_st_nd*/
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_ti_ba_lt_st_nd";
CREATE MATERIALIZED VIEW "mvs_elem_ti_ba_lt_st_nd" AS
SELECT 
  * 
FROM 
  gracethd.t_tiroir,
  gracethd.t_baie, 
  gracethd.t_ltech, 
  gracethd.t_sitetech, 
  gracethd.t_noeud   
WHERE 
  t_sitetech.st_nd_code = t_noeud.nd_code AND
  t_ltech.lt_st_code = t_sitetech.st_code AND
  t_baie.ba_lt_code = t_ltech.lt_code AND
  t_tiroir.ti_ba_code = t_baie.ba_code;

  
/*mvs_elem_eq_ba_lt_st_nd*/
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_eq_ba_lt_st_nd";
CREATE MATERIALIZED VIEW "mvs_elem_eq_ba_lt_st_nd" AS
SELECT 
  * 
FROM 
  gracethd.t_equipement,
  gracethd.t_baie, 
  gracethd.t_ltech, 
  gracethd.t_sitetech, 
  gracethd.t_noeud 
WHERE 
  t_sitetech.st_nd_code = t_noeud.nd_code AND
  t_ltech.lt_st_code = t_sitetech.st_code AND
  t_baie.ba_lt_code = t_ltech.lt_code AND
  t_equipement.eq_ba_code = t_baie.ba_code;

   
/*mvs_elem_pt_nd*/
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_pt_nd";
CREATE MATERIALIZED VIEW "mvs_elem_pt_nd" AS
SELECT 
  * 
FROM 
  gracethd.t_ptech, 
  gracethd.t_noeud
WHERE 
  t_ptech.pt_nd_code = t_noeud.nd_code;

/*mvs_elem_mq_nd*/
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_mq_nd";
CREATE MATERIALIZED VIEW "mvs_elem_mq_nd" AS
SELECT 
  * 
FROM 
  gracethd.t_masque, 
  gracethd.t_noeud
WHERE 
  t_masque.mq_nd_code = t_noeud.nd_code;

  
/*mvs_elem_cl_cb*/ 
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_cl_cb";
CREATE MATERIALIZED VIEW "mvs_elem_cl_cb" AS
SELECT 
  * 
FROM 
  gracethd.t_cable, 
  gracethd.t_cableline
WHERE 
  t_cableline.cl_cb_code = t_cable.cb_code;


/*mvs_elem_cl_cb_lv*/ 
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_cl_cb_lv";
CREATE MATERIALIZED VIEW "mvs_elem_cl_cb_lv" AS
SELECT 
    *
FROM "t_cableline" AS "cl"
JOIN "t_cable" AS "cb" ON ("cl"."cl_cb_code" = "cb"."cb_code")
LEFT JOIN "t_love" AS "lv" ON ("cb"."cb_code" = "lv"."lv_cb_code")
--ORDER BY "cb"."cb_code"
;

  
/*mvs_elem_fo_cb_cl*/ 
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_fo_cb_cl";
CREATE MATERIALIZED VIEW "mvs_elem_fo_cb_cl" AS
SELECT 
  * 
FROM 
  gracethd.t_fibre,
  gracethd.t_cable,
  gracethd.t_cableline
WHERE 
  t_fibre.fo_cb_code = t_cable.cb_code AND
  t_cableline.cl_cb_code = t_cable.cb_code;

  
/*mvs_elem_rt_fo_cb_cl*/
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_rt_fo_cb_cl";
CREATE MATERIALIZED VIEW "mvs_elem_rt_fo_cb_cl" AS  
SELECT 
  * 
FROM 
  gracethd.t_ropt,
  gracethd.t_fibre, 
  gracethd.t_cable,
  gracethd.t_cableline 
WHERE 
  t_cable.cb_code = t_fibre.fo_cb_code AND
  t_cableline.cl_cb_code = t_cable.cb_code AND
  t_fibre.fo_code = t_ropt.rt_fo_code;

  
/*mvs_elem_lv_nd*/
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_lv_nd";
CREATE MATERIALIZED VIEW "mvs_elem_lv_nd" AS
  SELECT 
  * 
FROM 
  gracethd.t_love,
  gracethd.t_noeud 
WHERE 
  t_love.lv_nd_code = t_noeud.nd_code;

  
/*mvs_elem_bp_pt_nd*/ 
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_bp_pt_nd";
CREATE MATERIALIZED VIEW "mvs_elem_bp_pt_nd" AS
SELECT 
  * 
FROM 
  gracethd.t_ebp,
  gracethd.t_ptech, 
  gracethd.t_noeud 
WHERE 
  t_ptech.pt_nd_code = t_noeud.nd_code AND
  t_ebp.bp_pt_code = t_ptech.pt_code;

  
/*mvs_elem_cs_bp_pt_nd*/  
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_cs_bp_pt_nd";
CREATE MATERIALIZED VIEW "mvs_elem_cs_bp_pt_nd" AS
SELECT 
  * 
FROM 
  gracethd.t_cassette,
  gracethd.t_ebp, 
  gracethd.t_ptech, 
  gracethd.t_noeud 
WHERE 
  t_ptech.pt_nd_code = t_noeud.nd_code AND
  t_ebp.bp_pt_code = t_ptech.pt_code AND
  t_cassette.cs_bp_code = t_ebp.bp_code;

  
/*mvs_elem_se_nd*/  
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_se_nd";
CREATE MATERIALIZED VIEW "mvs_elem_se_nd" AS
SELECT 
  * 
FROM 
  gracethd.t_siteemission, 
  gracethd.t_noeud
WHERE 
  t_siteemission.se_nd_code = t_noeud.nd_code;
  

/*mvs_elem_do_em*/  
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_do_em";
CREATE MATERIALIZED VIEW "mvs_elem_do_em" AS
SELECT 
  * 
FROM 
  gracethd.t_document, 
  gracethd.t_empreinte
WHERE 
  t_empreinte.em_do_code = t_document.do_code;
  
  
/*mvs_elem_cd_dm_cm*/ 
DROP MATERIALIZED VIEW IF EXISTS "mvs_elem_cd_dm_cm";
CREATE MATERIALIZED VIEW "mvs_elem_cd_dm_cm" AS
SELECT 
  t_cond_chem.dm_cd_code || t_cond_chem.dm_cm_code AS dm_id,
  * 
FROM 
  gracethd.t_conduite,
  gracethd.t_cond_chem, 
  gracethd.t_cheminement 
WHERE 
  t_cheminement.cm_code = t_cond_chem.dm_cm_code AND
  t_cond_chem.dm_cd_code = t_conduite.cd_code;

  
/*mvs_elem_cb_nd*/
DROP MATERIALIZED VIEW IF EXISTS mvs_elem_cb_nd;
CREATE MATERIALIZED VIEW mvs_elem_cb_nd AS
SELECT DISTINCT
  'ND1-' || cb.cb_code || '_' || cb.cb_nd1 AS cb_nd,
  * 
FROM 
  gracethd.t_cable AS cb, 
  gracethd.t_noeud AS nd
WHERE 
  cb.cb_nd1 = nd.nd_code
UNION
SELECT DISTINCT
  'ND2-' || cb.cb_code || '_' || cb.cb_nd1 AS cb_nd,
  * 
FROM 
  gracethd.t_cable AS cb, 
  gracethd.t_noeud AS nd
WHERE 
  cb.cb_nd2 = nd.nd_code;


/*######################################*/
/*INDEXES SPATIAUX SUR LES VUES ELEMENTAIRES*/

--v_elem_cc_cd
--v_elem_od_do
CREATE INDEX mvs_elem_ba_lt_st_nd_geom_gist ON mvs_elem_ba_lt_st_nd USING GIST (geom);
CREATE INDEX mvs_elem_bp_pt_nd_geom_gist ON mvs_elem_bp_pt_nd USING GIST (geom);
CREATE INDEX mvs_elem_bp_sf_nd_geom_gist ON mvs_elem_bp_sf_nd USING GIST (geom);
CREATE INDEX mvs_elem_cb_nd_geom_gist ON mvs_elem_cb_nd USING GIST (geom);
CREATE INDEX mvs_elem_cd_dm_cm_geom_gist ON mvs_elem_cd_dm_cm USING GIST (geom);
CREATE INDEX mvs_elem_cl_cb_geom_gist ON mvs_elem_cl_cb USING GIST (geom);
CREATE INDEX mvs_elem_cl_cb_lv_geom_gist ON mvs_elem_cl_cb_lv USING GIST (geom);
CREATE INDEX mvs_elem_cs_bp_pt_nd_geom_gist ON mvs_elem_cs_bp_pt_nd USING GIST (geom);
CREATE INDEX mvs_elem_do_em_geom_gist ON mvs_elem_do_em USING GIST (geom);
CREATE INDEX mvs_elem_eq_ba_lt_st_nd_geom_gist ON mvs_elem_eq_ba_lt_st_nd USING GIST (geom);
CREATE INDEX mvs_elem_fo_cb_cl_geom_gist ON mvs_elem_fo_cb_cl USING GIST (geom);
CREATE INDEX mvs_elem_lt_st_nd_geom_gist ON mvs_elem_lt_st_nd USING GIST (geom);
CREATE INDEX mvs_elem_bp_lt_st_nd_geom_gist ON mvs_elem_bp_lt_st_nd USING GIST (geom);
CREATE INDEX mvs_elem_lv_nd_geom_gist ON mvs_elem_lv_nd USING GIST (geom);
CREATE INDEX mvs_elem_mq_nd_geom_gist ON mvs_elem_mq_nd USING GIST (geom);
CREATE INDEX mvs_elem_pt_nd_geom_gist ON mvs_elem_pt_nd USING GIST (geom);
CREATE INDEX mvs_elem_rt_fo_cb_cl_geom_gist ON mvs_elem_rt_fo_cb_cl USING GIST (geom);
CREATE INDEX mvs_elem_se_nd_geom_gist ON mvs_elem_se_nd USING GIST (geom);
CREATE INDEX mvs_elem_sf_nd_geom_gist ON mvs_elem_sf_nd USING GIST (geom);
CREATE INDEX mvs_elem_st_nd_geom_gist ON mvs_elem_st_nd USING GIST (geom);
CREATE INDEX mvs_elem_ti_ba_lt_st_nd_geom_gist ON mvs_elem_ti_ba_lt_st_nd USING GIST (geom);
  

/*######################################*/
/*VUES ELEMENTAIRES NON SPATIALES*/

/*mv_elem_od_do*/  
DROP MATERIALIZED VIEW IF EXISTS "mv_elem_od_do";
CREATE MATERIALIZED VIEW "mv_elem_od_do" AS
SELECT *
FROM gracethd.t_docobj AS "od"
LEFT JOIN gracethd.t_document AS "do" ON ("do"."do_code" = "od"."od_do_code");


/*mv_elem_cc_cd*/  
DROP MATERIALIZED VIEW IF EXISTS "mv_elem_cc_cd";
CREATE MATERIALIZED VIEW "mv_elem_cc_cd" AS
SELECT 
  t_cab_cond.cc_cd_code || '_' || t_cab_cond.cc_cb_code AS cc_cd,
  * 
FROM 
  gracethd.t_conduite, 
  gracethd.t_cab_cond
WHERE 
  t_cab_cond.cc_cd_code = t_conduite.cd_code;


  
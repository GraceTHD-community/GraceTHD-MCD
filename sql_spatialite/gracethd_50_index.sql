/*GraceTHD-MCD v2.0*/
/*Creation des index*/
/*Spatialite*/
DROP INDEX IF EXISTS ad_ban_id_idx; CREATE INDEX  ad_ban_id_idx ON t_adresse(ad_ban_id);








DROP INDEX IF EXISTS ad_x_ban_idx; CREATE INDEX  ad_x_ban_idx ON t_adresse(ad_x_ban);
DROP INDEX IF EXISTS ad_y_ban_idx; CREATE INDEX  ad_y_ban_idx ON t_adresse(ad_y_ban);


DROP INDEX IF EXISTS ad_idpar_idx; CREATE INDEX  ad_idpar_idx ON t_adresse(ad_idpar);
DROP INDEX IF EXISTS ad_x_parc_idx; CREATE INDEX  ad_x_parc_idx ON t_adresse(ad_x_parc);
DROP INDEX IF EXISTS ad_y_parc_idx; CREATE INDEX  ad_y_parc_idx ON t_adresse(ad_y_parc);



DROP INDEX IF EXISTS ad_nbprhab_idx; CREATE INDEX  ad_nbprhab_idx ON t_adresse(ad_nbprhab);
DROP INDEX IF EXISTS ad_nbprpro_idx; CREATE INDEX  ad_nbprpro_idx ON t_adresse(ad_nbprpro);

DROP INDEX IF EXISTS ad_hexacle_idx; CREATE INDEX  ad_hexacle_idx ON t_adresse(ad_hexacle);
DROP INDEX IF EXISTS ad_hexaclv_idx; CREATE INDEX  ad_hexaclv_idx ON t_adresse(ad_hexaclv);



DROP INDEX IF EXISTS ad_racc_idx; CREATE INDEX  ad_racc_idx ON t_adresse(ad_racc);


DROP INDEX IF EXISTS ad_ietat_idx; CREATE INDEX  ad_ietat_idx ON t_adresse(ad_ietat);
DROP INDEX IF EXISTS ad_itypeim_idx; CREATE INDEX  ad_itypeim_idx ON t_adresse(ad_itypeim);








DROP INDEX IF EXISTS ad_typzone_idx; CREATE INDEX  ad_typzone_idx ON t_adresse(ad_typzone);














DROP INDEX IF EXISTS or_nom_idx; CREATE INDEX  or_nom_idx ON t_organisme(or_nom);


DROP INDEX IF EXISTS or_l331_idx; CREATE INDEX  or_l331_idx ON t_organisme(or_l331);
DROP INDEX IF EXISTS or_siret_idx; CREATE INDEX  or_siret_idx ON t_organisme(or_siret);
DROP INDEX IF EXISTS or_nometab_idx; CREATE INDEX  or_nometab_idx ON t_organisme(or_nometab);
DROP INDEX IF EXISTS or_ad_code_idx; CREATE INDEX  or_ad_code_idx ON t_organisme(or_ad_code);

















DROP INDEX IF EXISTS rf_type_idx; CREATE INDEX  rf_type_idx ON t_reference(rf_type);
DROP INDEX IF EXISTS rf_fabric_idx; CREATE INDEX  rf_fabric_idx ON t_reference(rf_fabric);

DROP INDEX IF EXISTS rf_etat_idx; CREATE INDEX  rf_etat_idx ON t_reference(rf_etat);











DROP INDEX IF EXISTS nd_coderat_idx; CREATE INDEX  nd_coderat_idx ON t_noeud(nd_coderat);





DROP INDEX IF EXISTS nd_type_idx; CREATE INDEX  nd_type_idx ON t_noeud(nd_type);


DROP INDEX IF EXISTS nd_dtclass_idx; CREATE INDEX  nd_dtclass_idx ON t_noeud(nd_dtclass);












DROP INDEX IF EXISTS zn_nd_code_idx; CREATE INDEX  zn_nd_code_idx ON t_znro(zn_nd_code);
DROP INDEX IF EXISTS zn_r1_code_idx; CREATE INDEX  zn_r1_code_idx ON t_znro(zn_r1_code);
DROP INDEX IF EXISTS zn_r2_code_idx; CREATE INDEX  zn_r2_code_idx ON t_znro(zn_r2_code);
DROP INDEX IF EXISTS zn_r3_code_idx; CREATE INDEX  zn_r3_code_idx ON t_znro(zn_r3_code);
DROP INDEX IF EXISTS zn_r4_code_idx; CREATE INDEX  zn_r4_code_idx ON t_znro(zn_r4_code);
















DROP INDEX IF EXISTS zs_nd_code_idx; CREATE INDEX  zs_nd_code_idx ON t_zsro(zs_nd_code);
DROP INDEX IF EXISTS zs_zn_code_idx; CREATE INDEX  zs_zn_code_idx ON t_zsro(zs_zn_code);
DROP INDEX IF EXISTS zs_r1_code_idx; CREATE INDEX  zs_r1_code_idx ON t_zsro(zs_r1_code);
DROP INDEX IF EXISTS zs_r2_code_idx; CREATE INDEX  zs_r2_code_idx ON t_zsro(zs_r2_code);
DROP INDEX IF EXISTS zs_r3_code_idx; CREATE INDEX  zs_r3_code_idx ON t_zsro(zs_r3_code);
DROP INDEX IF EXISTS zs_r4_code_idx; CREATE INDEX  zs_r4_code_idx ON t_zsro(zs_r4_code);

























DROP INDEX IF EXISTS zp_nd_code_idx; CREATE INDEX  zp_nd_code_idx ON t_zpbo(zp_nd_code);
DROP INDEX IF EXISTS zp_zs_code_idx; CREATE INDEX  zp_zs_code_idx ON t_zpbo(zp_zs_code);
DROP INDEX IF EXISTS zp_r1_code_idx; CREATE INDEX  zp_r1_code_idx ON t_zpbo(zp_r1_code);
DROP INDEX IF EXISTS zp_r2_code_idx; CREATE INDEX  zp_r2_code_idx ON t_zpbo(zp_r2_code);
DROP INDEX IF EXISTS zp_r3_code_idx; CREATE INDEX  zp_r3_code_idx ON t_zpbo(zp_r3_code);
DROP INDEX IF EXISTS zp_r4_code_idx; CREATE INDEX  zp_r4_code_idx ON t_zpbo(zp_r4_code);












DROP INDEX IF EXISTS zd_nd_code_idx; CREATE INDEX  zd_nd_code_idx ON t_zdep(zd_nd_code);
DROP INDEX IF EXISTS zd_zs_code_idx; CREATE INDEX  zd_zs_code_idx ON t_zdep(zd_zs_code);
DROP INDEX IF EXISTS zd_r1_code_idx; CREATE INDEX  zd_r1_code_idx ON t_zdep(zd_r1_code);
DROP INDEX IF EXISTS zd_r2_code_idx; CREATE INDEX  zd_r2_code_idx ON t_zdep(zd_r2_code);
DROP INDEX IF EXISTS zd_r3_code_idx; CREATE INDEX  zd_r3_code_idx ON t_zdep(zd_r3_code);
DROP INDEX IF EXISTS zd_r4_code_idx; CREATE INDEX  zd_r4_code_idx ON t_zdep(zd_r4_code);
DROP INDEX IF EXISTS zd_prop_idx; CREATE INDEX  zd_prop_idx ON t_zdep(zd_prop);
DROP INDEX IF EXISTS zd_gest_idx; CREATE INDEX  zd_gest_idx ON t_zdep(zd_gest);
DROP INDEX IF EXISTS zd_statut_idx; CREATE INDEX  zd_statut_idx ON t_zdep(zd_statut);












DROP INDEX IF EXISTS zc_nd_code_idx; CREATE INDEX  zc_nd_code_idx ON t_zcoax(zc_nd_code);
DROP INDEX IF EXISTS zc_r1_code_idx; CREATE INDEX  zc_r1_code_idx ON t_zcoax(zc_r1_code);
DROP INDEX IF EXISTS zc_r2_code_idx; CREATE INDEX  zc_r2_code_idx ON t_zcoax(zc_r2_code);
DROP INDEX IF EXISTS zc_r3_code_idx; CREATE INDEX  zc_r3_code_idx ON t_zcoax(zc_r3_code);
DROP INDEX IF EXISTS zc_r4_code_idx; CREATE INDEX  zc_r4_code_idx ON t_zcoax(zc_r4_code);
DROP INDEX IF EXISTS zc_prop_idx; CREATE INDEX  zc_prop_idx ON t_zcoax(zc_prop);
DROP INDEX IF EXISTS zc_gest_idx; CREATE INDEX  zc_gest_idx ON t_zcoax(zc_gest);
DROP INDEX IF EXISTS zc_statut_idx; CREATE INDEX  zc_statut_idx ON t_zcoax(zc_statut);











DROP INDEX IF EXISTS st_nd_code_idx; CREATE INDEX  st_nd_code_idx ON t_sitetech(st_nd_code);


DROP INDEX IF EXISTS st_prop_idx; CREATE INDEX  st_prop_idx ON t_sitetech(st_prop);
DROP INDEX IF EXISTS st_gest_idx; CREATE INDEX  st_gest_idx ON t_sitetech(st_gest);

DROP INDEX IF EXISTS st_proptyp_idx; CREATE INDEX  st_proptyp_idx ON t_sitetech(st_proptyp);
DROP INDEX IF EXISTS st_statut_idx; CREATE INDEX  st_statut_idx ON t_sitetech(st_statut);
DROP INDEX IF EXISTS st_etat_idx; CREATE INDEX  st_etat_idx ON t_sitetech(st_etat);


DROP INDEX IF EXISTS st_avct_idx; CREATE INDEX  st_avct_idx ON t_sitetech(st_avct);














DROP INDEX IF EXISTS lt_etiquet_idx; CREATE INDEX  lt_etiquet_idx ON t_ltech(lt_etiquet);
DROP INDEX IF EXISTS lt_st_code_idx; CREATE INDEX  lt_st_code_idx ON t_ltech(lt_st_code);
DROP INDEX IF EXISTS lt_prop_idx; CREATE INDEX  lt_prop_idx ON t_ltech(lt_prop);
DROP INDEX IF EXISTS lt_gest_idx; CREATE INDEX  lt_gest_idx ON t_ltech(lt_gest);

DROP INDEX IF EXISTS lt_proptyp_idx; CREATE INDEX  lt_proptyp_idx ON t_ltech(lt_proptyp);
DROP INDEX IF EXISTS lt_statut_idx; CREATE INDEX  lt_statut_idx ON t_ltech(lt_statut);
DROP INDEX IF EXISTS lt_etat_idx; CREATE INDEX  lt_etat_idx ON t_ltech(lt_etat);




DROP INDEX IF EXISTS lt_clim_idx; CREATE INDEX  lt_clim_idx ON t_ltech(lt_clim);












DROP INDEX IF EXISTS ba_etiquet_idx; CREATE INDEX  ba_etiquet_idx ON t_baie(ba_etiquet);
DROP INDEX IF EXISTS ba_lt_code_idx; CREATE INDEX  ba_lt_code_idx ON t_baie(ba_lt_code);
DROP INDEX IF EXISTS ba_prop_idx; CREATE INDEX  ba_prop_idx ON t_baie(ba_prop);
DROP INDEX IF EXISTS ba_gest_idx; CREATE INDEX  ba_gest_idx ON t_baie(ba_gest);

DROP INDEX IF EXISTS ba_proptyp_idx; CREATE INDEX  ba_proptyp_idx ON t_baie(ba_proptyp);
DROP INDEX IF EXISTS ba_statut_idx; CREATE INDEX  ba_statut_idx ON t_baie(ba_statut);
DROP INDEX IF EXISTS ba_etat_idx; CREATE INDEX  ba_etat_idx ON t_baie(ba_etat);
DROP INDEX IF EXISTS ba_rf_code_idx; CREATE INDEX  ba_rf_code_idx ON t_baie(ba_rf_code);
DROP INDEX IF EXISTS ba_type_idx; CREATE INDEX  ba_type_idx ON t_baie(ba_type);















DROP INDEX IF EXISTS ti_ba_code_idx; CREATE INDEX  ti_ba_code_idx ON t_tiroir(ti_ba_code);
DROP INDEX IF EXISTS ti_prop_idx; CREATE INDEX  ti_prop_idx ON t_tiroir(ti_prop);
DROP INDEX IF EXISTS ti_etat_idx; CREATE INDEX  ti_etat_idx ON t_tiroir(ti_etat);
DROP INDEX IF EXISTS ti_type_idx; CREATE INDEX  ti_type_idx ON t_tiroir(ti_type);
DROP INDEX IF EXISTS ti_rf_code_idx; CREATE INDEX  ti_rf_code_idx ON t_tiroir(ti_rf_code);














DROP INDEX IF EXISTS eq_ba_code_idx; CREATE INDEX  eq_ba_code_idx ON t_equipement(eq_ba_code);
DROP INDEX IF EXISTS eq_prop_idx; CREATE INDEX  eq_prop_idx ON t_equipement(eq_prop);












DROP INDEX IF EXISTS sf_nd_code_idx; CREATE INDEX  sf_nd_code_idx ON t_suf(sf_nd_code);
DROP INDEX IF EXISTS sf_ad_code_idx; CREATE INDEX  sf_ad_code_idx ON t_suf(sf_ad_code);




DROP INDEX IF EXISTS sf_type_idx; CREATE INDEX  sf_type_idx ON t_suf(sf_type);

















DROP INDEX IF EXISTS pt_nd_code_idx; CREATE INDEX  pt_nd_code_idx ON t_ptech(pt_nd_code);
DROP INDEX IF EXISTS pt_ad_code_idx; CREATE INDEX  pt_ad_code_idx ON t_ptech(pt_ad_code);
DROP INDEX IF EXISTS pt_gest_do_idx; CREATE INDEX  pt_gest_do_idx ON t_ptech(pt_gest_do);
DROP INDEX IF EXISTS pt_prop_do_idx; CREATE INDEX  pt_prop_do_idx ON t_ptech(pt_prop_do);
DROP INDEX IF EXISTS pt_prop_idx; CREATE INDEX  pt_prop_idx ON t_ptech(pt_prop);
DROP INDEX IF EXISTS pt_gest_idx; CREATE INDEX  pt_gest_idx ON t_ptech(pt_gest);

DROP INDEX IF EXISTS pt_proptyp_idx; CREATE INDEX  pt_proptyp_idx ON t_ptech(pt_proptyp);
DROP INDEX IF EXISTS pt_statut_idx; CREATE INDEX  pt_statut_idx ON t_ptech(pt_statut);
DROP INDEX IF EXISTS pt_etat_idx; CREATE INDEX  pt_etat_idx ON t_ptech(pt_etat);


DROP INDEX IF EXISTS pt_avct_idx; CREATE INDEX  pt_avct_idx ON t_ptech(pt_avct);
DROP INDEX IF EXISTS pt_typephy_idx; CREATE INDEX  pt_typephy_idx ON t_ptech(pt_typephy);
DROP INDEX IF EXISTS pt_typelog_idx; CREATE INDEX  pt_typelog_idx ON t_ptech(pt_typelog);
DROP INDEX IF EXISTS pt_rf_code_idx; CREATE INDEX  pt_rf_code_idx ON t_ptech(pt_rf_code);
DROP INDEX IF EXISTS pt_nature_idx; CREATE INDEX  pt_nature_idx ON t_ptech(pt_nature);





















DROP INDEX IF EXISTS bp_pt_code_idx; CREATE INDEX  bp_pt_code_idx ON t_ebp(bp_pt_code);
DROP INDEX IF EXISTS bp_lt_code_idx; CREATE INDEX  bp_lt_code_idx ON t_ebp(bp_lt_code);
DROP INDEX IF EXISTS bp_sf_code_idx; CREATE INDEX  bp_sf_code_idx ON t_ebp(bp_sf_code);
DROP INDEX IF EXISTS bp_prop_idx; CREATE INDEX  bp_prop_idx ON t_ebp(bp_prop);
DROP INDEX IF EXISTS bp_gest_idx; CREATE INDEX  bp_gest_idx ON t_ebp(bp_gest);

DROP INDEX IF EXISTS bp_proptyp_idx; CREATE INDEX  bp_proptyp_idx ON t_ebp(bp_proptyp);
DROP INDEX IF EXISTS bp_statut_idx; CREATE INDEX  bp_statut_idx ON t_ebp(bp_statut);
DROP INDEX IF EXISTS bp_etat_idx; CREATE INDEX  bp_etat_idx ON t_ebp(bp_etat);


DROP INDEX IF EXISTS bp_avct_idx; CREATE INDEX  bp_avct_idx ON t_ebp(bp_avct);


DROP INDEX IF EXISTS bp_rf_code_idx; CREATE INDEX  bp_rf_code_idx ON t_ebp(bp_rf_code);

















DROP INDEX IF EXISTS cs_bp_code_idx; CREATE INDEX  cs_bp_code_idx ON t_cassette(cs_bp_code);

DROP INDEX IF EXISTS cs_type_idx; CREATE INDEX  cs_type_idx ON t_cassette(cs_type);

DROP INDEX IF EXISTS cs_rf_code_idx; CREATE INDEX  cs_rf_code_idx ON t_cassette(cs_rf_code);










DROP INDEX IF EXISTS cm_ndcode1_idx; CREATE INDEX  cm_ndcode1_idx ON t_cheminement(cm_ndcode1);
DROP INDEX IF EXISTS cm_ndcode2_idx; CREATE INDEX  cm_ndcode2_idx ON t_cheminement(cm_ndcode2);
DROP INDEX IF EXISTS cm_cm1_idx; CREATE INDEX  cm_cm1_idx ON t_cheminement(cm_cm1);
DROP INDEX IF EXISTS cm_cm2_idx; CREATE INDEX  cm_cm2_idx ON t_cheminement(cm_cm2);





DROP INDEX IF EXISTS cm_gest_do_idx; CREATE INDEX  cm_gest_do_idx ON t_cheminement(cm_gest_do);
DROP INDEX IF EXISTS cm_prop_do_idx; CREATE INDEX  cm_prop_do_idx ON t_cheminement(cm_prop_do);
DROP INDEX IF EXISTS cm_statut_idx; CREATE INDEX  cm_statut_idx ON t_cheminement(cm_statut);
DROP INDEX IF EXISTS cm_etat_idx; CREATE INDEX  cm_etat_idx ON t_cheminement(cm_etat);


DROP INDEX IF EXISTS cm_avct_idx; CREATE INDEX  cm_avct_idx ON t_cheminement(cm_avct);
DROP INDEX IF EXISTS cm_typelog_idx; CREATE INDEX  cm_typelog_idx ON t_cheminement(cm_typelog);
DROP INDEX IF EXISTS cm_typ_imp_idx; CREATE INDEX  cm_typ_imp_idx ON t_cheminement(cm_typ_imp);






























DROP INDEX IF EXISTS cd_cd_code_idx; CREATE INDEX  cd_cd_code_idx ON t_conduite(cd_cd_code);




DROP INDEX IF EXISTS cd_prop_idx; CREATE INDEX  cd_prop_idx ON t_conduite(cd_prop);
DROP INDEX IF EXISTS cd_gest_idx; CREATE INDEX  cd_gest_idx ON t_conduite(cd_gest);

DROP INDEX IF EXISTS cd_proptyp_idx; CREATE INDEX  cd_proptyp_idx ON t_conduite(cd_proptyp);
DROP INDEX IF EXISTS cd_statut_idx; CREATE INDEX  cd_statut_idx ON t_conduite(cd_statut);
DROP INDEX IF EXISTS cd_etat_idx; CREATE INDEX  cd_etat_idx ON t_conduite(cd_etat);



DROP INDEX IF EXISTS cd_avct_idx; CREATE INDEX  cd_avct_idx ON t_conduite(cd_avct);

























DROP INDEX IF EXISTS mq_alveole_idx; CREATE UNIQUE INDEX mq_alveole_idx ON t_masque (mq_nd_code, mq_face, mq_col, mq_ligne);
















DROP INDEX IF EXISTS cb_nd1_idx; CREATE INDEX  cb_nd1_idx ON t_cable(cb_nd1);
DROP INDEX IF EXISTS cb_nd2_idx; CREATE INDEX  cb_nd2_idx ON t_cable(cb_nd2);




DROP INDEX IF EXISTS cb_prop_idx; CREATE INDEX  cb_prop_idx ON t_cable(cb_prop);
DROP INDEX IF EXISTS cb_gest_idx; CREATE INDEX  cb_gest_idx ON t_cable(cb_gest);

DROP INDEX IF EXISTS cb_proptyp_idx; CREATE INDEX  cb_proptyp_idx ON t_cable(cb_proptyp);
DROP INDEX IF EXISTS cb_statut_idx; CREATE INDEX  cb_statut_idx ON t_cable(cb_statut);
DROP INDEX IF EXISTS cb_etat_idx; CREATE INDEX  cb_etat_idx ON t_cable(cb_etat);


DROP INDEX IF EXISTS cb_avct_idx; CREATE INDEX  cb_avct_idx ON t_cable(cb_avct);

DROP INDEX IF EXISTS cb_typephy_idx; CREATE INDEX  cb_typephy_idx ON t_cable(cb_typephy);
DROP INDEX IF EXISTS cb_typelog_idx; CREATE INDEX  cb_typelog_idx ON t_cable(cb_typelog);










































DROP INDEX IF EXISTS lv_unique_idx; CREATE UNIQUE INDEX lv_unique_idx ON t_love (lv_cb_code, lv_nd_code);











DROP INDEX IF EXISTS fo_cb_code_idx; CREATE INDEX  fo_cb_code_idx ON t_fibre(fo_cb_code);



DROP INDEX IF EXISTS fo_type_idx; CREATE INDEX  fo_type_idx ON t_fibre(fo_type);
DROP INDEX IF EXISTS fo_etat_idx; CREATE INDEX  fo_etat_idx ON t_fibre(fo_etat);


DROP INDEX IF EXISTS fo_proptyp_idx; CREATE INDEX  fo_proptyp_idx ON t_fibre(fo_proptyp);









DROP INDEX IF EXISTS ps_numero_idx; CREATE INDEX  ps_numero_idx ON t_position(ps_numero);
DROP INDEX IF EXISTS ps_1_idx; CREATE INDEX  ps_1_idx ON t_position(ps_1);
DROP INDEX IF EXISTS ps_2_idx; CREATE INDEX  ps_2_idx ON t_position(ps_2);
DROP INDEX IF EXISTS ps_cs_code_idx; CREATE INDEX  ps_cs_code_idx ON t_position(ps_cs_code);
DROP INDEX IF EXISTS ps_ti_code_idx; CREATE INDEX  ps_ti_code_idx ON t_position(ps_ti_code);
DROP INDEX IF EXISTS ps_type_idx; CREATE INDEX  ps_type_idx ON t_position(ps_type);
DROP INDEX IF EXISTS ps_fonct_idx; CREATE INDEX  ps_fonct_idx ON t_position(ps_fonct);
DROP INDEX IF EXISTS ps_etat_idx; CREATE INDEX  ps_etat_idx ON t_position(ps_etat);










DROP INDEX IF EXISTS rt_code_idx; CREATE INDEX  rt_code_idx ON t_ropt(rt_code);

DROP INDEX IF EXISTS rt_fo_code_idx; CREATE INDEX  rt_fo_code_idx ON t_ropt(rt_fo_code);










DROP INDEX IF EXISTS se_nd_code_idx; CREATE INDEX  se_nd_code_idx ON t_siteemission(se_nd_code);
DROP INDEX IF EXISTS se_anfr_idx; CREATE INDEX  se_anfr_idx ON t_siteemission(se_anfr);
DROP INDEX IF EXISTS se_prop_idx; CREATE INDEX  se_prop_idx ON t_siteemission(se_prop);
DROP INDEX IF EXISTS se_gest_idx; CREATE INDEX  se_gest_idx ON t_siteemission(se_gest);

DROP INDEX IF EXISTS se_proptyp_idx; CREATE INDEX  se_proptyp_idx ON t_siteemission(se_proptyp);
DROP INDEX IF EXISTS se_statut_idx; CREATE INDEX  se_statut_idx ON t_siteemission(se_statut);
DROP INDEX IF EXISTS se_etat_idx; CREATE INDEX  se_etat_idx ON t_siteemission(se_etat);



DROP INDEX IF EXISTS se_type_idx; CREATE INDEX  se_type_idx ON t_siteemission(se_type);

DROP INDEX IF EXISTS se_ad_code_idx; CREATE INDEX  se_ad_code_idx ON t_siteemission(se_ad_code);









DROP INDEX IF EXISTS do_ref_idx; CREATE INDEX  do_ref_idx ON t_document(do_ref);

DROP INDEX IF EXISTS do_r1_code_idx; CREATE INDEX  do_r1_code_idx ON t_document(do_r1_code);
DROP INDEX IF EXISTS do_r2_code_idx; CREATE INDEX  do_r2_code_idx ON t_document(do_r2_code);
DROP INDEX IF EXISTS do_r3_code_idx; CREATE INDEX  do_r3_code_idx ON t_document(do_r3_code);
DROP INDEX IF EXISTS do_r4_code_idx; CREATE INDEX  do_r4_code_idx ON t_document(do_r4_code);
DROP INDEX IF EXISTS do_type_idx; CREATE INDEX  do_type_idx ON t_document(do_type);

DROP INDEX IF EXISTS do_date_idx; CREATE INDEX  do_date_idx ON t_document(do_date);

DROP INDEX IF EXISTS do_url1_idx; CREATE INDEX  do_url1_idx ON t_document(do_url1);
DROP INDEX IF EXISTS do_url2_idx; CREATE INDEX  do_url2_idx ON t_document(do_url2);









DROP INDEX IF EXISTS od_do_code_idx; CREATE INDEX  od_do_code_idx ON t_docobj(od_do_code);










DROP INDEX IF EXISTS em_do_code_idx; CREATE INDEX  em_do_code_idx ON t_empreinte(em_do_code);

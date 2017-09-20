/*GraceTHD-MCD v2.0.1*/
/*specifique au SGBD*/
/* gracethd_80_triggers.sql */
/*PostGIS*/

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

/* ************************************************************ */
/* 				Vues élémentaires éditables 					*/
/* ************************************************************ */

/*vs_elem_cl_cb*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_cl_cb ON vs_elem_cl_cb CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_cl_cb() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_cl_cb()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_cable VALUES(
			NEW.cb_code,
			NEW.cb_codeext,
			NEW.cb_etiquet,
			NEW.cb_nd1,
			NEW.cb_nd2,
			NEW.cb_r1_code,
			NEW.cb_r2_code,
			NEW.cb_r3_code,
			NEW.cb_r4_code,
			NEW.cb_prop,
			NEW.cb_gest,
			NEW.cb_user,
			NEW.cb_proptyp,
			NEW.cb_statut,
			NEW.cb_etat,
			NEW.cb_dateins,
			NEW.cb_datemes,
			NEW.cb_avct,
			NEW.cb_tech,
			NEW.cb_typephy,
			NEW.cb_typelog,
			NEW.cb_rf_code,
			NEW.cb_capafo,
			NEW.cb_fo_disp,
			NEW.cb_fo_util,
			NEW.cb_modulo,
			NEW.cb_diam,
			NEW.cb_color,
			NEW.cb_lgreel,
			NEW.cb_localis,
			NEW.cb_comment,
			NEW.cb_creadat,
			NEW.cb_majdate,
			NEW.cb_majsrc,
			NEW.cb_abddate,
			NEW.cb_abdsrc
			);
        INSERT INTO  t_cableline VALUES(
			NEW.cl_code,
			NEW.cl_cb_code,
			NEW.cl_long,
			NEW.cl_comment,
			NEW.cl_dtclass,
			NEW.cl_geolqlt,
			NEW.cl_geolmod,
			NEW.cl_geolsrc,
			NEW.cl_creadat,
			NEW.cl_majdate,
			NEW.cl_majsrc,
			NEW.cl_abddate,
			NEW.cl_abdsrc,
			NEW.geom
			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_cable SET 
			cb_code=NEW.cb_code,
			cb_codeext=NEW.cb_codeext,
			cb_etiquet=NEW.cb_etiquet,
			cb_nd1=NEW.cb_nd1,
			cb_nd2=NEW.cb_nd2,
			cb_r1_code=NEW.cb_r1_code,
			cb_r2_code=NEW.cb_r2_code,
			cb_r3_code=NEW.cb_r3_code,
			cb_r4_code=NEW.cb_r4_code,
			cb_prop=NEW.cb_prop,
			cb_gest=NEW.cb_gest,
			cb_user=NEW.cb_user,
			cb_proptyp=NEW.cb_proptyp,
			cb_statut=NEW.cb_statut,
			cb_etat=NEW.cb_etat,
			cb_dateins=NEW.cb_dateins,
			cb_datemes=NEW.cb_datemes,
			cb_avct=NEW.cb_avct,
			cb_tech=NEW.cb_tech,
			cb_typephy=NEW.cb_typephy,
			cb_typelog=NEW.cb_typelog,
			cb_rf_code=NEW.cb_rf_code,
			cb_capafo=NEW.cb_capafo,
			cb_fo_disp=NEW.cb_fo_disp,
			cb_fo_util=NEW.cb_fo_util,
			cb_modulo=NEW.cb_modulo,
			cb_diam=NEW.cb_diam,
			cb_color=NEW.cb_color,
			cb_lgreel=NEW.cb_lgreel,
			cb_localis=NEW.cb_localis,
			cb_comment=NEW.cb_comment,
			cb_creadat=NEW.cb_creadat,
			cb_majdate=NEW.cb_majdate,
			cb_majsrc=NEW.cb_majsrc,
			cb_abddate=NEW.cb_abddate,
			cb_abdsrc=NEW.cb_abdsrc
		WHERE cb_code=OLD.cb_code
		;
		UPDATE t_cableline SET 
			cl_code=NEW.cl_code, 
			cl_cb_code=NEW.cl_cb_code, 
			--cl_cb_code=NEW.cb_code,
			cl_long=NEW.cl_long,
			cl_comment=NEW.cl_comment,
			cl_dtclass=NEW.cl_dtclass,
			cl_geolqlt=NEW.cl_geolqlt,
			cl_geolmod=NEW.cl_geolmod,
			cl_geolsrc=NEW.cl_geolsrc,
			cl_creadat=NEW.cl_creadat,
			cl_majdate=NEW.cl_majdate,
			cl_majsrc=NEW.cl_majsrc,
			cl_abddate=NEW.cl_abddate,
			cl_abdsrc=NEW.cl_abdsrc,
			geom=NEW.geom
		WHERE cl_code=OLD.cl_code	
		;
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		/*INVERSER ?*/
		DELETE FROM t_cableline WHERE cl_code=OLD.cl_code;
		DELETE FROM t_cable WHERE cb_code=OLD.cb_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_cl_cb
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_cl_cb FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_cl_cb();

/*vs_elem_cl_cb_lv*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_cl_cb_lv ON vs_elem_cl_cb_lv CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_cl_cb_lv() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_cl_cb_lv()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_cable VALUES(
			NEW.cb_code,
			NEW.cb_codeext,
			NEW.cb_etiquet,
			NEW.cb_nd1,
			NEW.cb_nd2,
			NEW.cb_r1_code,
			NEW.cb_r2_code,
			NEW.cb_r3_code,
			NEW.cb_r4_code,
			NEW.cb_prop,
			NEW.cb_gest,
			NEW.cb_user,
			NEW.cb_proptyp,
			NEW.cb_statut,
			NEW.cb_etat,
			NEW.cb_dateins,
			NEW.cb_datemes,
			NEW.cb_avct,
			NEW.cb_tech,
			NEW.cb_typephy,
			NEW.cb_typelog,
			NEW.cb_rf_code,
			NEW.cb_capafo,
			NEW.cb_fo_disp,
			NEW.cb_fo_util,
			NEW.cb_modulo,
			NEW.cb_diam,
			NEW.cb_color,
			NEW.cb_lgreel,
			NEW.cb_localis,
			NEW.cb_comment,
			NEW.cb_creadat,
			NEW.cb_majdate,
			NEW.cb_majsrc,
			NEW.cb_abddate,
			NEW.cb_abdsrc
			);
        INSERT INTO  t_cableline VALUES(
			NEW.cl_code,
			NEW.cl_cb_code,
			NEW.cl_long,
			NEW.cl_comment,
			NEW.cl_dtclass,
			NEW.cl_geolqlt,
			NEW.cl_geolmod,
			NEW.cl_geolsrc,
			NEW.cl_creadat,
			NEW.cl_majdate,
			NEW.cl_majsrc,
			NEW.cl_abddate,
			NEW.cl_abdsrc,
			NEW.geom
			);
        INSERT INTO t_love VALUES(
			NEW.lv_id,
			NEW.lv_cb_code,
			NEW.lv_nd_code,
			NEW.lv_long,
			NEW.lv_creadat,
			NEW.lv_majdate,
			NEW.lv_majsrc,
			NEW.lv_abddate,
			NEW.lv_abdsrc
			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_cable SET 
			cb_code=NEW.cb_code,
			cb_codeext=NEW.cb_codeext,
			cb_etiquet=NEW.cb_etiquet,
			cb_nd1=NEW.cb_nd1,
			cb_nd2=NEW.cb_nd2,
			cb_r1_code=NEW.cb_r1_code,
			cb_r2_code=NEW.cb_r2_code,
			cb_r3_code=NEW.cb_r3_code,
			cb_r4_code=NEW.cb_r4_code,
			cb_prop=NEW.cb_prop,
			cb_gest=NEW.cb_gest,
			cb_user=NEW.cb_user,
			cb_proptyp=NEW.cb_proptyp,
			cb_statut=NEW.cb_statut,
			cb_etat=NEW.cb_etat,
			cb_dateins=NEW.cb_dateins,
			cb_datemes=NEW.cb_datemes,
			cb_avct=NEW.cb_avct,
			cb_tech=NEW.cb_tech,
			cb_typephy=NEW.cb_typephy,
			cb_typelog=NEW.cb_typelog,
			cb_rf_code=NEW.cb_rf_code,
			cb_capafo=NEW.cb_capafo,
			cb_fo_disp=NEW.cb_fo_disp,
			cb_fo_util=NEW.cb_fo_util,
			cb_modulo=NEW.cb_modulo,
			cb_diam=NEW.cb_diam,
			cb_color=NEW.cb_color,
			cb_lgreel=NEW.cb_lgreel,
			cb_localis=NEW.cb_localis,
			cb_comment=NEW.cb_comment,
			cb_creadat=NEW.cb_creadat,
			cb_majdate=NEW.cb_majdate,
			cb_majsrc=NEW.cb_majsrc,
			cb_abddate=NEW.cb_abddate,
			cb_abdsrc=NEW.cb_abdsrc
		WHERE cb_code=OLD.cb_code
		;
		UPDATE t_cableline SET 
			cl_code=NEW.cl_code, 
			cl_cb_code=NEW.cl_cb_code, 
			--cl_cb_code=NEW.cb_code,
			cl_long=NEW.cl_long,
			cl_comment=NEW.cl_comment,
			cl_dtclass=NEW.cl_dtclass,
			cl_geolqlt=NEW.cl_geolqlt,
			cl_geolmod=NEW.cl_geolmod,
			cl_geolsrc=NEW.cl_geolsrc,
			cl_creadat=NEW.cl_creadat,
			cl_majdate=NEW.cl_majdate,
			cl_majsrc=NEW.cl_majsrc,
			cl_abddate=NEW.cl_abddate,
			cl_abdsrc=NEW.cl_abdsrc,
			geom=NEW.geom
		WHERE cl_code=OLD.cl_code	
		;
		UPDATE t_love SET 
			lv_id=NEW.lv_id,
			lv_cb_code=NEW.lv_cb_code,
			lv_nd_code=NEW.lv_nd_code,
			lv_long=NEW.lv_long,
			lv_creadat=NEW.lv_creadat,
			lv_majdate=NEW.lv_majdate,
			lv_majsrc=NEW.lv_majsrc,
			lv_abddate=NEW.lv_abddate,
			lv_abdsrc=NEW.lv_abdsrc
		WHERE lv_id=OLD.lv_id	
		;
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		DELETE FROM t_love WHERE lv_id=OLD.lv_id;
		DELETE FROM t_cableline WHERE cl_code=OLD.cl_code;
		DELETE FROM t_cable WHERE cb_code=OLD.cb_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_cl_cb_lv
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_cl_cb_lv FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_cl_cb_lv();

/*vs_elem_fo_cb_cl*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_fo_cb_cl ON vs_elem_fo_cb_cl CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_fo_cb_cl() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_fo_cb_cl()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_cable VALUES(
			NEW.cb_code,
			NEW.cb_codeext,
			NEW.cb_etiquet,
			NEW.cb_nd1,
			NEW.cb_nd2,
			NEW.cb_r1_code,
			NEW.cb_r2_code,
			NEW.cb_r3_code,
			NEW.cb_r4_code,
			NEW.cb_prop,
			NEW.cb_gest,
			NEW.cb_user,
			NEW.cb_proptyp,
			NEW.cb_statut,
			NEW.cb_etat,
			NEW.cb_dateins,
			NEW.cb_datemes,
			NEW.cb_avct,
			NEW.cb_tech,
			NEW.cb_typephy,
			NEW.cb_typelog,
			NEW.cb_rf_code,
			NEW.cb_capafo,
			NEW.cb_fo_disp,
			NEW.cb_fo_util,
			NEW.cb_modulo,
			NEW.cb_diam,
			NEW.cb_color,
			NEW.cb_lgreel,
			NEW.cb_localis,
			NEW.cb_comment,
			NEW.cb_creadat,
			NEW.cb_majdate,
			NEW.cb_majsrc,
			NEW.cb_abddate,
			NEW.cb_abdsrc
			);
        INSERT INTO  t_cableline VALUES(
			NEW.cl_code,
			NEW.cl_cb_code,
			NEW.cl_long,
			NEW.cl_comment,
			NEW.cl_dtclass,
			NEW.cl_geolqlt,
			NEW.cl_geolmod,
			NEW.cl_geolsrc,
			NEW.cl_creadat,
			NEW.cl_majdate,
			NEW.cl_majsrc,
			NEW.cl_abddate,
			NEW.cl_abdsrc,
			NEW.geom
			);
        INSERT INTO t_fibre VALUES(
			NEW.fo_code,
			NEW.fo_code_ext,
			NEW.fo_cb_code,
			NEW.fo_nincab,
			NEW.fo_numtub,
			NEW.fo_nintub,
			NEW.fo_type,
			NEW.fo_etat,
			NEW.fo_color,
			NEW.fo_reper,
			NEW.fo_proptyp,
			NEW.fo_comment,
			NEW.fo_creadat,
			NEW.fo_majdate,
			NEW.fo_majsrc,
			NEW.fo_abddate,
			NEW.fo_abdsrc
			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_cable SET 
			cb_code=NEW.cb_code,
			cb_codeext=NEW.cb_codeext,
			cb_etiquet=NEW.cb_etiquet,
			cb_nd1=NEW.cb_nd1,
			cb_nd2=NEW.cb_nd2,
			cb_r1_code=NEW.cb_r1_code,
			cb_r2_code=NEW.cb_r2_code,
			cb_r3_code=NEW.cb_r3_code,
			cb_r4_code=NEW.cb_r4_code,
			cb_prop=NEW.cb_prop,
			cb_gest=NEW.cb_gest,
			cb_user=NEW.cb_user,
			cb_proptyp=NEW.cb_proptyp,
			cb_statut=NEW.cb_statut,
			cb_etat=NEW.cb_etat,
			cb_dateins=NEW.cb_dateins,
			cb_datemes=NEW.cb_datemes,
			cb_avct=NEW.cb_avct,
			cb_tech=NEW.cb_tech,
			cb_typephy=NEW.cb_typephy,
			cb_typelog=NEW.cb_typelog,
			cb_rf_code=NEW.cb_rf_code,
			cb_capafo=NEW.cb_capafo,
			cb_fo_disp=NEW.cb_fo_disp,
			cb_fo_util=NEW.cb_fo_util,
			cb_modulo=NEW.cb_modulo,
			cb_diam=NEW.cb_diam,
			cb_color=NEW.cb_color,
			cb_lgreel=NEW.cb_lgreel,
			cb_localis=NEW.cb_localis,
			cb_comment=NEW.cb_comment,
			cb_creadat=NEW.cb_creadat,
			cb_majdate=NEW.cb_majdate,
			cb_majsrc=NEW.cb_majsrc,
			cb_abddate=NEW.cb_abddate,
			cb_abdsrc=NEW.cb_abdsrc
		WHERE cb_code=OLD.cb_code
		;
		UPDATE t_cableline SET 
			cl_code=NEW.cl_code, 
			cl_cb_code=NEW.cl_cb_code, 
			--cl_cb_code=NEW.cb_code,
			cl_long=NEW.cl_long,
			cl_comment=NEW.cl_comment,
			cl_dtclass=NEW.cl_dtclass,
			cl_geolqlt=NEW.cl_geolqlt,
			cl_geolmod=NEW.cl_geolmod,
			cl_geolsrc=NEW.cl_geolsrc,
			cl_creadat=NEW.cl_creadat,
			cl_majdate=NEW.cl_majdate,
			cl_majsrc=NEW.cl_majsrc,
			cl_abddate=NEW.cl_abddate,
			cl_abdsrc=NEW.cl_abdsrc,
			geom=NEW.geom
		WHERE cl_code=OLD.cl_code	
		;
		UPDATE t_fibre SET 
			fo_code=NEW.fo_code,
			fo_code_ext=NEW.fo_code_ext,
			fo_cb_code=NEW.fo_cb_code,
			fo_nincab=NEW.fo_nincab,
			fo_numtub=NEW.fo_numtub,
			fo_nintub=NEW.fo_nintub,
			fo_type=NEW.fo_type,
			fo_etat=NEW.fo_etat,
			fo_color=NEW.fo_color,
			fo_reper=NEW.fo_reper,
			fo_proptyp=NEW.fo_proptyp,
			fo_comment=NEW.fo_comment,
			fo_creadat=NEW.fo_creadat,
			fo_majdate=NEW.fo_majdate,
			fo_majsrc=NEW.fo_majsrc,
			fo_abddate=NEW.fo_abddate,
			fo_abdsrc=NEW.fo_abdsrc
		WHERE fo_code=OLD.fo_code	
		;
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		DELETE FROM t_fibre WHERE fo_code=OLD.fo_code;
		DELETE FROM t_cableline WHERE cl_code=OLD.cl_code;
		DELETE FROM t_cable WHERE cb_code=OLD.cb_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_fo_cb_cl
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_fo_cb_cl FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_fo_cb_cl();

/*vs_elem_rt_fo_cb_cl*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_rt_fo_cb_cl ON vs_elem_rt_fo_cb_cl CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_rt_fo_cb_cl() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_rt_fo_cb_cl()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_cable VALUES(
			NEW.cb_code,
			NEW.cb_codeext,
			NEW.cb_etiquet,
			NEW.cb_nd1,
			NEW.cb_nd2,
			NEW.cb_r1_code,
			NEW.cb_r2_code,
			NEW.cb_r3_code,
			NEW.cb_r4_code,
			NEW.cb_prop,
			NEW.cb_gest,
			NEW.cb_user,
			NEW.cb_proptyp,
			NEW.cb_statut,
			NEW.cb_etat,
			NEW.cb_dateins,
			NEW.cb_datemes,
			NEW.cb_avct,
			NEW.cb_tech,
			NEW.cb_typephy,
			NEW.cb_typelog,
			NEW.cb_rf_code,
			NEW.cb_capafo,
			NEW.cb_fo_disp,
			NEW.cb_fo_util,
			NEW.cb_modulo,
			NEW.cb_diam,
			NEW.cb_color,
			NEW.cb_lgreel,
			NEW.cb_localis,
			NEW.cb_comment,
			NEW.cb_creadat,
			NEW.cb_majdate,
			NEW.cb_majsrc,
			NEW.cb_abddate,
			NEW.cb_abdsrc
			);
        INSERT INTO  t_cableline VALUES(
			NEW.cl_code,
			NEW.cl_cb_code,
			NEW.cl_long,
			NEW.cl_comment,
			NEW.cl_dtclass,
			NEW.cl_geolqlt,
			NEW.cl_geolmod,
			NEW.cl_geolsrc,
			NEW.cl_creadat,
			NEW.cl_majdate,
			NEW.cl_majsrc,
			NEW.cl_abddate,
			NEW.cl_abdsrc,
			NEW.geom
			);
        INSERT INTO t_fibre VALUES(
			NEW.fo_code,
			NEW.fo_code_ext,
			NEW.fo_cb_code,
			NEW.fo_nincab,
			NEW.fo_numtub,
			NEW.fo_nintub,
			NEW.fo_type,
			NEW.fo_etat,
			NEW.fo_color,
			NEW.fo_reper,
			NEW.fo_proptyp,
			NEW.fo_comment,
			NEW.fo_creadat,
			NEW.fo_majdate,
			NEW.fo_majsrc,
			NEW.fo_abddate,
			NEW.fo_abdsrc
			);
		INSERT INTO t_ropt VALUES(
			NEW.rt_id,
			NEW.rt_code,
			NEW.rt_code_ext,
			NEW.rt_fo_code,
			NEW.rt_fo_ordr,
			NEW.rt_comment,
			NEW.rt_creadat,
			NEW.rt_majdate,
			NEW.rt_majsrc,
			NEW.rt_abddate,
			NEW.rt_abdsrc			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_cable SET 
			cb_code=NEW.cb_code,
			cb_codeext=NEW.cb_codeext,
			cb_etiquet=NEW.cb_etiquet,
			cb_nd1=NEW.cb_nd1,
			cb_nd2=NEW.cb_nd2,
			cb_r1_code=NEW.cb_r1_code,
			cb_r2_code=NEW.cb_r2_code,
			cb_r3_code=NEW.cb_r3_code,
			cb_r4_code=NEW.cb_r4_code,
			cb_prop=NEW.cb_prop,
			cb_gest=NEW.cb_gest,
			cb_user=NEW.cb_user,
			cb_proptyp=NEW.cb_proptyp,
			cb_statut=NEW.cb_statut,
			cb_etat=NEW.cb_etat,
			cb_dateins=NEW.cb_dateins,
			cb_datemes=NEW.cb_datemes,
			cb_avct=NEW.cb_avct,
			cb_tech=NEW.cb_tech,
			cb_typephy=NEW.cb_typephy,
			cb_typelog=NEW.cb_typelog,
			cb_rf_code=NEW.cb_rf_code,
			cb_capafo=NEW.cb_capafo,
			cb_fo_disp=NEW.cb_fo_disp,
			cb_fo_util=NEW.cb_fo_util,
			cb_modulo=NEW.cb_modulo,
			cb_diam=NEW.cb_diam,
			cb_color=NEW.cb_color,
			cb_lgreel=NEW.cb_lgreel,
			cb_localis=NEW.cb_localis,
			cb_comment=NEW.cb_comment,
			cb_creadat=NEW.cb_creadat,
			cb_majdate=NEW.cb_majdate,
			cb_majsrc=NEW.cb_majsrc,
			cb_abddate=NEW.cb_abddate,
			cb_abdsrc=NEW.cb_abdsrc
		WHERE cb_code=OLD.cb_code
		;
		UPDATE t_cableline SET 
			cl_code=NEW.cl_code, 
			cl_cb_code=NEW.cl_cb_code, 
			--cl_cb_code=NEW.cb_code,
			cl_long=NEW.cl_long,
			cl_comment=NEW.cl_comment,
			cl_dtclass=NEW.cl_dtclass,
			cl_geolqlt=NEW.cl_geolqlt,
			cl_geolmod=NEW.cl_geolmod,
			cl_geolsrc=NEW.cl_geolsrc,
			cl_creadat=NEW.cl_creadat,
			cl_majdate=NEW.cl_majdate,
			cl_majsrc=NEW.cl_majsrc,
			cl_abddate=NEW.cl_abddate,
			cl_abdsrc=NEW.cl_abdsrc,
			geom=NEW.geom
		WHERE cl_code=OLD.cl_code	
		;
		UPDATE t_fibre SET 
			fo_code=NEW.fo_code,
			fo_code_ext=NEW.fo_code_ext,
			fo_cb_code=NEW.fo_cb_code,
			fo_nincab=NEW.fo_nincab,
			fo_numtub=NEW.fo_numtub,
			fo_nintub=NEW.fo_nintub,
			fo_type=NEW.fo_type,
			fo_etat=NEW.fo_etat,
			fo_color=NEW.fo_color,
			fo_reper=NEW.fo_reper,
			fo_proptyp=NEW.fo_proptyp,
			fo_comment=NEW.fo_comment,
			fo_creadat=NEW.fo_creadat,
			fo_majdate=NEW.fo_majdate,
			fo_majsrc=NEW.fo_majsrc,
			fo_abddate=NEW.fo_abddate,
			fo_abdsrc=NEW.fo_abdsrc
		WHERE fo_code=OLD.fo_code	
		;
		UPDATE t_ropt SET 
			rt_id=NEW.rt_id,
			rt_code=NEW.rt_code,
			rt_code_ext=NEW.rt_code_ext,
			rt_fo_code=NEW.rt_fo_code,
			rt_fo_ordr=NEW.rt_fo_ordr,
			rt_comment=NEW.rt_comment,
			rt_creadat=NEW.rt_creadat,
			rt_majdate=NEW.rt_majdate,
			rt_majsrc=NEW.rt_majsrc,
			rt_abddate=NEW.rt_abddate,
			rt_abdsrc=NEW.rt_abdsrc
		WHERE rt_id=OLD.rt_id	
		;		
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		DELETE FROM t_ropt WHERE rt_id=OLD.rt_id;
		DELETE FROM t_fibre WHERE fo_code=OLD.fo_code;
		DELETE FROM t_cableline WHERE cl_code=OLD.cl_code;
		DELETE FROM t_cable WHERE cb_code=OLD.cb_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_rt_fo_cb_cl
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_rt_fo_cb_cl FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_rt_fo_cb_cl();
	  
	  
/*vs_elem_st_nd*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_st_nd ON vs_elem_st_nd CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_st_nd() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_st_nd()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_noeud VALUES(
			NEW.nd_code,
			NEW.nd_codeext,
			NEW.nd_nom,
			NEW.nd_coderat,
			NEW.nd_r1_code,
			NEW.nd_r2_code,
			NEW.nd_r3_code,
			NEW.nd_r4_code,
			NEW.nd_voie,
			NEW.nd_type,
			NEW.nd_type_ep,
			NEW.nd_comment,
			NEW.nd_dtclass,
			NEW.nd_geolqlt,
			NEW.nd_geolmod,
			NEW.nd_geolsrc,
			NEW.nd_creadat,
			NEW.nd_majdate,
			NEW.nd_majsrc,
			NEW.nd_abddate,
			NEW.nd_abdsrc,
			NEW.geom
			);
        INSERT INTO  t_sitetech VALUES(
			NEW.st_code,
			NEW.st_nd_code,
			NEW.st_codeext,
			NEW.st_nom,
			NEW.st_prop,
			NEW.st_gest,
			NEW.st_user,
			NEW.st_proptyp,
			NEW.st_statut,
			NEW.st_etat,
			NEW.st_dateins,
			NEW.st_datemes,
			NEW.st_avct,
			NEW.st_typephy,
			NEW.st_typelog,
			NEW.st_nblines,
			NEW.st_ad_code,
			NEW.st_comment,
			NEW.st_creadat,
			NEW.st_majdate,
			NEW.st_majsrc,
			NEW.st_abddate,
			NEW.st_abdsrc
			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_noeud SET 
			nd_code=NEW.nd_code,
			nd_codeext=NEW.nd_codeext,
			nd_nom=NEW.nd_nom,
			nd_coderat=NEW.nd_coderat,
			nd_r1_code=NEW.nd_r1_code,
			nd_r2_code=NEW.nd_r2_code,
			nd_r3_code=NEW.nd_r3_code,
			nd_r4_code=NEW.nd_r4_code,
			nd_voie=NEW.nd_voie,
			nd_type=NEW.nd_type,
			nd_type_ep=NEW.nd_type_ep,
			nd_comment=NEW.nd_comment,
			nd_dtclass=NEW.nd_dtclass,
			nd_geolqlt=NEW.nd_geolqlt,
			nd_geolmod=NEW.nd_geolmod,
			nd_geolsrc=NEW.nd_geolsrc,
			nd_creadat=NEW.nd_creadat,
			nd_majdate=NEW.nd_majdate,
			nd_majsrc=NEW.nd_majsrc,
			nd_abddate=NEW.nd_abddate,
			nd_abdsrc=NEW.nd_abdsrc,
			geom=NEW.geom			
		WHERE nd_code=OLD.nd_code
		;
		UPDATE t_sitetech SET 
			st_code=NEW.st_code,
			st_nd_code=NEW.st_nd_code,
			st_codeext=NEW.st_codeext,
			st_nom=NEW.st_nom,
			st_prop=NEW.st_prop,
			st_gest=NEW.st_gest,
			st_user=NEW.st_user,
			st_proptyp=NEW.st_proptyp,
			st_statut=NEW.st_statut,
			st_etat=NEW.st_etat,
			st_dateins=NEW.st_dateins,
			st_datemes=NEW.st_datemes,
			st_avct=NEW.st_avct,
			st_typephy=NEW.st_typephy,
			st_typelog=NEW.st_typelog,
			st_nblines=NEW.st_nblines,
			st_ad_code=NEW.st_ad_code,
			st_comment=NEW.st_comment,
			st_creadat=NEW.st_creadat,
			st_majdate=NEW.st_majdate,
			st_majsrc=NEW.st_majsrc,
			st_abddate=NEW.st_abddate,
			st_abdsrc=NEW.st_abdsrc
		WHERE st_code=OLD.st_code
		;
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		/*INVERSER ?*/
		DELETE FROM t_sitetech WHERE st_code=OLD.st_code;
		DELETE FROM t_noeud WHERE nd_code=OLD.nd_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_st_nd
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_st_nd FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_st_nd();

	  
/*vs_elem_lt_st_nd*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_lt_st_nd ON vs_elem_lt_st_nd CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_lt_st_nd() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_lt_st_nd()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_noeud VALUES(
			NEW.nd_code,
			NEW.nd_codeext,
			NEW.nd_nom,
			NEW.nd_coderat,
			NEW.nd_r1_code,
			NEW.nd_r2_code,
			NEW.nd_r3_code,
			NEW.nd_r4_code,
			NEW.nd_voie,
			NEW.nd_type,
			NEW.nd_type_ep,
			NEW.nd_comment,
			NEW.nd_dtclass,
			NEW.nd_geolqlt,
			NEW.nd_geolmod,
			NEW.nd_geolsrc,
			NEW.nd_creadat,
			NEW.nd_majdate,
			NEW.nd_majsrc,
			NEW.nd_abddate,
			NEW.nd_abdsrc,
			NEW.geom
			);
        INSERT INTO  t_sitetech VALUES(
			NEW.st_code,
			NEW.st_nd_code,
			NEW.st_codeext,
			NEW.st_nom,
			NEW.st_prop,
			NEW.st_gest,
			NEW.st_user,
			NEW.st_proptyp,
			NEW.st_statut,
			NEW.st_etat,
			NEW.st_dateins,
			NEW.st_datemes,
			NEW.st_avct,
			NEW.st_typephy,
			NEW.st_typelog,
			NEW.st_nblines,
			NEW.st_ad_code,
			NEW.st_comment,
			NEW.st_creadat,
			NEW.st_majdate,
			NEW.st_majsrc,
			NEW.st_abddate,
			NEW.st_abdsrc
			);
        INSERT INTO  t_ltech VALUES(
			NEW.lt_code,
			NEW.lt_codeext,
			NEW.lt_etiquet,
			NEW.lt_st_code,
			NEW.lt_prop,
			NEW.lt_gest,
			NEW.lt_user,
			NEW.lt_proptyp,
			NEW.lt_statut,
			NEW.lt_etat,
			NEW.lt_dateins,
			NEW.lt_datemes,
			NEW.lt_local,
			NEW.lt_elec,
			NEW.lt_clim,
			NEW.lt_occp,
			NEW.lt_idmajic,
			NEW.lt_comment,
			NEW.lt_creadat,
			NEW.lt_majdate,
			NEW.lt_majsrc,
			NEW.lt_abddate,
			NEW.lt_abdsrc
			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_noeud SET 
			nd_code=NEW.nd_code,
			nd_codeext=NEW.nd_codeext,
			nd_nom=NEW.nd_nom,
			nd_coderat=NEW.nd_coderat,
			nd_r1_code=NEW.nd_r1_code,
			nd_r2_code=NEW.nd_r2_code,
			nd_r3_code=NEW.nd_r3_code,
			nd_r4_code=NEW.nd_r4_code,
			nd_voie=NEW.nd_voie,
			nd_type=NEW.nd_type,
			nd_type_ep=NEW.nd_type_ep,
			nd_comment=NEW.nd_comment,
			nd_dtclass=NEW.nd_dtclass,
			nd_geolqlt=NEW.nd_geolqlt,
			nd_geolmod=NEW.nd_geolmod,
			nd_geolsrc=NEW.nd_geolsrc,
			nd_creadat=NEW.nd_creadat,
			nd_majdate=NEW.nd_majdate,
			nd_majsrc=NEW.nd_majsrc,
			nd_abddate=NEW.nd_abddate,
			nd_abdsrc=NEW.nd_abdsrc,
			geom=NEW.geom			
		WHERE nd_code=OLD.nd_code
		;
		UPDATE t_sitetech SET 
			st_code=NEW.st_code,
			st_nd_code=NEW.st_nd_code,
			st_codeext=NEW.st_codeext,
			st_nom=NEW.st_nom,
			st_prop=NEW.st_prop,
			st_gest=NEW.st_gest,
			st_user=NEW.st_user,
			st_proptyp=NEW.st_proptyp,
			st_statut=NEW.st_statut,
			st_etat=NEW.st_etat,
			st_dateins=NEW.st_dateins,
			st_datemes=NEW.st_datemes,
			st_avct=NEW.st_avct,
			st_typephy=NEW.st_typephy,
			st_typelog=NEW.st_typelog,
			st_nblines=NEW.st_nblines,
			st_ad_code=NEW.st_ad_code,
			st_comment=NEW.st_comment,
			st_creadat=NEW.st_creadat,
			st_majdate=NEW.st_majdate,
			st_majsrc=NEW.st_majsrc,
			st_abddate=NEW.st_abddate,
			st_abdsrc=NEW.st_abdsrc
		WHERE st_code=OLD.st_code
		;
		UPDATE t_ltech SET 
			lt_code=NEW.lt_code,
			lt_codeext=NEW.lt_codeext,
			lt_etiquet=NEW.lt_etiquet,
			lt_st_code=NEW.lt_st_code,
			lt_prop=NEW.lt_prop,
			lt_gest=NEW.lt_gest,
			lt_user=NEW.lt_user,
			lt_proptyp=NEW.lt_proptyp,
			lt_statut=NEW.lt_statut,
			lt_etat=NEW.lt_etat,
			lt_dateins=NEW.lt_dateins,
			lt_datemes=NEW.lt_datemes,
			lt_local=NEW.lt_local,
			lt_elec=NEW.lt_elec,
			lt_clim=NEW.lt_clim,
			lt_occp=NEW.lt_occp,
			lt_idmajic=NEW.lt_idmajic,
			lt_comment=NEW.lt_comment,
			lt_creadat=NEW.lt_creadat,
			lt_majdate=NEW.lt_majdate,
			lt_majsrc=NEW.lt_majsrc,
			lt_abddate=NEW.lt_abddate,
			lt_abdsrc=NEW.lt_abdsrc
		WHERE lt_code=OLD.lt_code
		;
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		/*INVERSER ?*/
		DELETE FROM t_ltech WHERE lt_code=OLD.lt_code;
		DELETE FROM t_sitetech WHERE st_code=OLD.st_code;
		DELETE FROM t_noeud WHERE nd_code=OLD.nd_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_lt_st_nd
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_lt_st_nd FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_lt_st_nd();

/*vs_elem_bp_lt_st_nd*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_bp_lt_st_nd ON vs_elem_bp_lt_st_nd CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_bp_lt_st_nd() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_bp_lt_st_nd()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_noeud VALUES(
			NEW.nd_code,
			NEW.nd_codeext,
			NEW.nd_nom,
			NEW.nd_coderat,
			NEW.nd_r1_code,
			NEW.nd_r2_code,
			NEW.nd_r3_code,
			NEW.nd_r4_code,
			NEW.nd_voie,
			NEW.nd_type,
			NEW.nd_type_ep,
			NEW.nd_comment,
			NEW.nd_dtclass,
			NEW.nd_geolqlt,
			NEW.nd_geolmod,
			NEW.nd_geolsrc,
			NEW.nd_creadat,
			NEW.nd_majdate,
			NEW.nd_majsrc,
			NEW.nd_abddate,
			NEW.nd_abdsrc,
			NEW.geom
			);
        INSERT INTO  t_sitetech VALUES(
			NEW.st_code,
			NEW.st_nd_code,
			NEW.st_codeext,
			NEW.st_nom,
			NEW.st_prop,
			NEW.st_gest,
			NEW.st_user,
			NEW.st_proptyp,
			NEW.st_statut,
			NEW.st_etat,
			NEW.st_dateins,
			NEW.st_datemes,
			NEW.st_avct,
			NEW.st_typephy,
			NEW.st_typelog,
			NEW.st_nblines,
			NEW.st_ad_code,
			NEW.st_comment,
			NEW.st_creadat,
			NEW.st_majdate,
			NEW.st_majsrc,
			NEW.st_abddate,
			NEW.st_abdsrc
			);
        INSERT INTO  t_ltech VALUES(
			NEW.lt_code,
			NEW.lt_codeext,
			NEW.lt_etiquet,
			NEW.lt_st_code,
			NEW.lt_prop,
			NEW.lt_gest,
			NEW.lt_user,
			NEW.lt_proptyp,
			NEW.lt_statut,
			NEW.lt_etat,
			NEW.lt_dateins,
			NEW.lt_datemes,
			NEW.lt_local,
			NEW.lt_elec,
			NEW.lt_clim,
			NEW.lt_occp,
			NEW.lt_idmajic,
			NEW.lt_comment,
			NEW.lt_creadat,
			NEW.lt_majdate,
			NEW.lt_majsrc,
			NEW.lt_abddate,
			NEW.lt_abdsrc
			);
	    INSERT INTO  t_ebp VALUES(			
			NEW.bp_code,
			NEW.bp_etiquet,
			NEW.bp_codeext,
			NEW.bp_pt_code,
			NEW.bp_lt_code,
			NEW.bp_sf_code,
			NEW.bp_prop,
			NEW.bp_gest,
			NEW.bp_user,
			NEW.bp_proptyp,
			NEW.bp_statut,
			NEW.bp_etat,
			NEW.bp_occp,
			NEW.bp_datemes,
			NEW.bp_avct,
			NEW.bp_typephy,
			NEW.bp_typelog,
			NEW.bp_rf_code,
			NEW.bp_entrees,
			NEW.bp_ref_kit,
			NEW.bp_ca_nb,
			NEW.bp_nb_pas,
			NEW.bp_linecod,
			NEW.bp_oc_code,
			NEW.bp_racco,
			NEW.bp_comment,
			NEW.bp_creadat,
			NEW.bp_majdate,
			NEW.bp_majsrc,
			NEW.bp_abddate,
			NEW.bp_abdsrc
			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_noeud SET 
			nd_code=NEW.nd_code,
			nd_codeext=NEW.nd_codeext,
			nd_nom=NEW.nd_nom,
			nd_coderat=NEW.nd_coderat,
			nd_r1_code=NEW.nd_r1_code,
			nd_r2_code=NEW.nd_r2_code,
			nd_r3_code=NEW.nd_r3_code,
			nd_r4_code=NEW.nd_r4_code,
			nd_voie=NEW.nd_voie,
			nd_type=NEW.nd_type,
			nd_type_ep=NEW.nd_type_ep,
			nd_comment=NEW.nd_comment,
			nd_dtclass=NEW.nd_dtclass,
			nd_geolqlt=NEW.nd_geolqlt,
			nd_geolmod=NEW.nd_geolmod,
			nd_geolsrc=NEW.nd_geolsrc,
			nd_creadat=NEW.nd_creadat,
			nd_majdate=NEW.nd_majdate,
			nd_majsrc=NEW.nd_majsrc,
			nd_abddate=NEW.nd_abddate,
			nd_abdsrc=NEW.nd_abdsrc,
			geom=NEW.geom			
		WHERE nd_code=OLD.nd_code
		;
		UPDATE t_sitetech SET 
			st_code=NEW.st_code,
			st_nd_code=NEW.st_nd_code,
			st_codeext=NEW.st_codeext,
			st_nom=NEW.st_nom,
			st_prop=NEW.st_prop,
			st_gest=NEW.st_gest,
			st_user=NEW.st_user,
			st_proptyp=NEW.st_proptyp,
			st_statut=NEW.st_statut,
			st_etat=NEW.st_etat,
			st_dateins=NEW.st_dateins,
			st_datemes=NEW.st_datemes,
			st_avct=NEW.st_avct,
			st_typephy=NEW.st_typephy,
			st_typelog=NEW.st_typelog,
			st_nblines=NEW.st_nblines,
			st_ad_code=NEW.st_ad_code,
			st_comment=NEW.st_comment,
			st_creadat=NEW.st_creadat,
			st_majdate=NEW.st_majdate,
			st_majsrc=NEW.st_majsrc,
			st_abddate=NEW.st_abddate,
			st_abdsrc=NEW.st_abdsrc
		WHERE st_code=OLD.st_code
		;
		UPDATE t_ltech SET 
			lt_code=NEW.lt_code,
			lt_codeext=NEW.lt_codeext,
			lt_etiquet=NEW.lt_etiquet,
			lt_st_code=NEW.lt_st_code,
			lt_prop=NEW.lt_prop,
			lt_gest=NEW.lt_gest,
			lt_user=NEW.lt_user,
			lt_proptyp=NEW.lt_proptyp,
			lt_statut=NEW.lt_statut,
			lt_etat=NEW.lt_etat,
			lt_dateins=NEW.lt_dateins,
			lt_datemes=NEW.lt_datemes,
			lt_local=NEW.lt_local,
			lt_elec=NEW.lt_elec,
			lt_clim=NEW.lt_clim,
			lt_occp=NEW.lt_occp,
			lt_idmajic=NEW.lt_idmajic,
			lt_comment=NEW.lt_comment,
			lt_creadat=NEW.lt_creadat,
			lt_majdate=NEW.lt_majdate,
			lt_majsrc=NEW.lt_majsrc,
			lt_abddate=NEW.lt_abddate,
			lt_abdsrc=NEW.lt_abdsrc
		WHERE lt_code=OLD.lt_code
		;
		UPDATE t_ebp SET 
			bp_code=NEW.bp_code,
			bp_etiquet=NEW.bp_etiquet,
			bp_codeext=NEW.bp_codeext,
			bp_pt_code=NEW.bp_pt_code,
			bp_lt_code=NEW.bp_lt_code,
			bp_sf_code=NEW.bp_sf_code,
			bp_prop=NEW.bp_prop,
			bp_gest=NEW.bp_gest,
			bp_user=NEW.bp_user,
			bp_proptyp=NEW.bp_proptyp,
			bp_statut=NEW.bp_statut,
			bp_etat=NEW.bp_etat,
			bp_occp=NEW.bp_occp,
			bp_datemes=NEW.bp_datemes,
			bp_avct=NEW.bp_avct,
			bp_typephy=NEW.bp_typephy,
			bp_typelog=NEW.bp_typelog,
			bp_rf_code=NEW.bp_rf_code,
			bp_entrees=NEW.bp_entrees,
			bp_ref_kit=NEW.bp_ref_kit,
			bp_ca_nb=NEW.bp_ca_nb,
			bp_nb_pas=NEW.bp_nb_pas,
			bp_linecod=NEW.bp_linecod,
			bp_oc_code=NEW.bp_oc_code,
			bp_racco=NEW.bp_racco,
			bp_comment=NEW.bp_comment,
			bp_creadat=NEW.bp_creadat,
			bp_majdate=NEW.bp_majdate,
			bp_majsrc=NEW.bp_majsrc,
			bp_abddate=NEW.bp_abddate,
			bp_abdsrc=NEW.bp_abdsrc
		WHERE bp_code=OLD.bp_code
		;
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		/*INVERSER ?*/
		DELETE FROM t_ebp WHERE bp_code=OLD.bp_code;		
		DELETE FROM t_ltech WHERE lt_code=OLD.lt_code;
		DELETE FROM t_sitetech WHERE st_code=OLD.st_code;
		DELETE FROM t_noeud WHERE nd_code=OLD.nd_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_bp_lt_st_nd
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_bp_lt_st_nd FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_bp_lt_st_nd();

	  
/*vs_elem_ba_lt_st_nd*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_ba_lt_st_nd ON vs_elem_ba_lt_st_nd CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_ba_lt_st_nd() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_ba_lt_st_nd()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_noeud VALUES(
			NEW.nd_code,
			NEW.nd_codeext,
			NEW.nd_nom,
			NEW.nd_coderat,
			NEW.nd_r1_code,
			NEW.nd_r2_code,
			NEW.nd_r3_code,
			NEW.nd_r4_code,
			NEW.nd_voie,
			NEW.nd_type,
			NEW.nd_type_ep,
			NEW.nd_comment,
			NEW.nd_dtclass,
			NEW.nd_geolqlt,
			NEW.nd_geolmod,
			NEW.nd_geolsrc,
			NEW.nd_creadat,
			NEW.nd_majdate,
			NEW.nd_majsrc,
			NEW.nd_abddate,
			NEW.nd_abdsrc,
			NEW.geom
			);
        INSERT INTO  t_sitetech VALUES(
			NEW.st_code,
			NEW.st_nd_code,
			NEW.st_codeext,
			NEW.st_nom,
			NEW.st_prop,
			NEW.st_gest,
			NEW.st_user,
			NEW.st_proptyp,
			NEW.st_statut,
			NEW.st_etat,
			NEW.st_dateins,
			NEW.st_datemes,
			NEW.st_avct,
			NEW.st_typephy,
			NEW.st_typelog,
			NEW.st_nblines,
			NEW.st_ad_code,
			NEW.st_comment,
			NEW.st_creadat,
			NEW.st_majdate,
			NEW.st_majsrc,
			NEW.st_abddate,
			NEW.st_abdsrc
			);
        INSERT INTO  t_ltech VALUES(
			NEW.lt_code,
			NEW.lt_codeext,
			NEW.lt_etiquet,
			NEW.lt_st_code,
			NEW.lt_prop,
			NEW.lt_gest,
			NEW.lt_user,
			NEW.lt_proptyp,
			NEW.lt_statut,
			NEW.lt_etat,
			NEW.lt_dateins,
			NEW.lt_datemes,
			NEW.lt_local,
			NEW.lt_elec,
			NEW.lt_clim,
			NEW.lt_occp,
			NEW.lt_idmajic,
			NEW.lt_comment,
			NEW.lt_creadat,
			NEW.lt_majdate,
			NEW.lt_majsrc,
			NEW.lt_abddate,
			NEW.lt_abdsrc
			);
		INSERT INTO t_baie VALUES(
			NEW.ba_code,
			NEW.ba_codeext,
			NEW.ba_etiquet,
			NEW.ba_lt_code,
			NEW.ba_prop,
			NEW.ba_gest,
			NEW.ba_user,
			NEW.ba_proptyp,
			NEW.ba_statut,
			NEW.ba_etat,
			NEW.ba_rf_code,
			NEW.ba_type,
			NEW.ba_nb_u,
			NEW.ba_haut,
			NEW.ba_larg,
			NEW.ba_prof,
			NEW.ba_comment,
			NEW.ba_creadat,
			NEW.ba_majdate,
			NEW.ba_majsrc,
			NEW.ba_abddate,
			NEW.ba_abdsrc
			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_noeud SET 
			nd_code=NEW.nd_code,
			nd_codeext=NEW.nd_codeext,
			nd_nom=NEW.nd_nom,
			nd_coderat=NEW.nd_coderat,
			nd_r1_code=NEW.nd_r1_code,
			nd_r2_code=NEW.nd_r2_code,
			nd_r3_code=NEW.nd_r3_code,
			nd_r4_code=NEW.nd_r4_code,
			nd_voie=NEW.nd_voie,
			nd_type=NEW.nd_type,
			nd_type_ep=NEW.nd_type_ep,
			nd_comment=NEW.nd_comment,
			nd_dtclass=NEW.nd_dtclass,
			nd_geolqlt=NEW.nd_geolqlt,
			nd_geolmod=NEW.nd_geolmod,
			nd_geolsrc=NEW.nd_geolsrc,
			nd_creadat=NEW.nd_creadat,
			nd_majdate=NEW.nd_majdate,
			nd_majsrc=NEW.nd_majsrc,
			nd_abddate=NEW.nd_abddate,
			nd_abdsrc=NEW.nd_abdsrc,
			geom=NEW.geom			
		WHERE nd_code=OLD.nd_code
		;
		UPDATE t_sitetech SET 
			st_code=NEW.st_code,
			st_nd_code=NEW.st_nd_code,
			st_codeext=NEW.st_codeext,
			st_nom=NEW.st_nom,
			st_prop=NEW.st_prop,
			st_gest=NEW.st_gest,
			st_user=NEW.st_user,
			st_proptyp=NEW.st_proptyp,
			st_statut=NEW.st_statut,
			st_etat=NEW.st_etat,
			st_dateins=NEW.st_dateins,
			st_datemes=NEW.st_datemes,
			st_avct=NEW.st_avct,
			st_typephy=NEW.st_typephy,
			st_typelog=NEW.st_typelog,
			st_nblines=NEW.st_nblines,
			st_ad_code=NEW.st_ad_code,
			st_comment=NEW.st_comment,
			st_creadat=NEW.st_creadat,
			st_majdate=NEW.st_majdate,
			st_majsrc=NEW.st_majsrc,
			st_abddate=NEW.st_abddate,
			st_abdsrc=NEW.st_abdsrc
		WHERE st_code=OLD.st_code
		;
		UPDATE t_ltech SET 
			lt_code=NEW.lt_code,
			lt_codeext=NEW.lt_codeext,
			lt_etiquet=NEW.lt_etiquet,
			lt_st_code=NEW.lt_st_code,
			lt_prop=NEW.lt_prop,
			lt_gest=NEW.lt_gest,
			lt_user=NEW.lt_user,
			lt_proptyp=NEW.lt_proptyp,
			lt_statut=NEW.lt_statut,
			lt_etat=NEW.lt_etat,
			lt_dateins=NEW.lt_dateins,
			lt_datemes=NEW.lt_datemes,
			lt_local=NEW.lt_local,
			lt_elec=NEW.lt_elec,
			lt_clim=NEW.lt_clim,
			lt_occp=NEW.lt_occp,
			lt_idmajic=NEW.lt_idmajic,
			lt_comment=NEW.lt_comment,
			lt_creadat=NEW.lt_creadat,
			lt_majdate=NEW.lt_majdate,
			lt_majsrc=NEW.lt_majsrc,
			lt_abddate=NEW.lt_abddate,
			lt_abdsrc=NEW.lt_abdsrc
		WHERE lt_code=OLD.lt_code
		;
		UPDATE t_baie SET 
			ba_code=NEW.ba_code,
			ba_codeext=NEW.ba_codeext,
			ba_etiquet=NEW.ba_etiquet,
			ba_lt_code=NEW.ba_lt_code,
			ba_prop=NEW.ba_prop,
			ba_gest=NEW.ba_gest,
			ba_user=NEW.ba_user,
			ba_proptyp=NEW.ba_proptyp,
			ba_statut=NEW.ba_statut,
			ba_etat=NEW.ba_etat,
			ba_rf_code=NEW.ba_rf_code,
			ba_type=NEW.ba_type,
			ba_nb_u=NEW.ba_nb_u,
			ba_haut=NEW.ba_haut,
			ba_larg=NEW.ba_larg,
			ba_prof=NEW.ba_prof,
			ba_comment=NEW.ba_comment,
			ba_creadat=NEW.ba_creadat,
			ba_majdate=NEW.ba_majdate,
			ba_majsrc=NEW.ba_majsrc,
			ba_abddate=NEW.ba_abddate,
			ba_abdsrc=NEW.ba_abdsrc
		WHERE ba_code=OLD.ba_code
		;
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		DELETE FROM t_baie WHERE ba_code=OLD.ba_code;
		DELETE FROM t_ltech WHERE lt_code=OLD.lt_code;
		DELETE FROM t_sitetech WHERE st_code=OLD.st_code;
		DELETE FROM t_noeud WHERE nd_code=OLD.nd_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_ba_lt_st_nd
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_ba_lt_st_nd FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_ba_lt_st_nd();


/*vs_elem_ti_ba_lt_st_nd*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_ti_ba_lt_st_nd ON vs_elem_ti_ba_lt_st_nd CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_ti_ba_lt_st_nd() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_ti_ba_lt_st_nd()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_noeud VALUES(
			NEW.nd_code,
			NEW.nd_codeext,
			NEW.nd_nom,
			NEW.nd_coderat,
			NEW.nd_r1_code,
			NEW.nd_r2_code,
			NEW.nd_r3_code,
			NEW.nd_r4_code,
			NEW.nd_voie,
			NEW.nd_type,
			NEW.nd_type_ep,
			NEW.nd_comment,
			NEW.nd_dtclass,
			NEW.nd_geolqlt,
			NEW.nd_geolmod,
			NEW.nd_geolsrc,
			NEW.nd_creadat,
			NEW.nd_majdate,
			NEW.nd_majsrc,
			NEW.nd_abddate,
			NEW.nd_abdsrc,
			NEW.geom
			);
        INSERT INTO  t_sitetech VALUES(
			NEW.st_code,
			NEW.st_nd_code,
			NEW.st_codeext,
			NEW.st_nom,
			NEW.st_prop,
			NEW.st_gest,
			NEW.st_user,
			NEW.st_proptyp,
			NEW.st_statut,
			NEW.st_etat,
			NEW.st_dateins,
			NEW.st_datemes,
			NEW.st_avct,
			NEW.st_typephy,
			NEW.st_typelog,
			NEW.st_nblines,
			NEW.st_ad_code,
			NEW.st_comment,
			NEW.st_creadat,
			NEW.st_majdate,
			NEW.st_majsrc,
			NEW.st_abddate,
			NEW.st_abdsrc
			);
        INSERT INTO  t_ltech VALUES(
			NEW.lt_code,
			NEW.lt_codeext,
			NEW.lt_etiquet,
			NEW.lt_st_code,
			NEW.lt_prop,
			NEW.lt_gest,
			NEW.lt_user,
			NEW.lt_proptyp,
			NEW.lt_statut,
			NEW.lt_etat,
			NEW.lt_dateins,
			NEW.lt_datemes,
			NEW.lt_local,
			NEW.lt_elec,
			NEW.lt_clim,
			NEW.lt_occp,
			NEW.lt_idmajic,
			NEW.lt_comment,
			NEW.lt_creadat,
			NEW.lt_majdate,
			NEW.lt_majsrc,
			NEW.lt_abddate,
			NEW.lt_abdsrc
			);
		INSERT INTO t_baie VALUES(
			NEW.ba_code,
			NEW.ba_codeext,
			NEW.ba_etiquet,
			NEW.ba_lt_code,
			NEW.ba_prop,
			NEW.ba_gest,
			NEW.ba_user,
			NEW.ba_proptyp,
			NEW.ba_statut,
			NEW.ba_etat,
			NEW.ba_rf_code,
			NEW.ba_type,
			NEW.ba_nb_u,
			NEW.ba_haut,
			NEW.ba_larg,
			NEW.ba_prof,
			NEW.ba_comment,
			NEW.ba_creadat,
			NEW.ba_majdate,
			NEW.ba_majsrc,
			NEW.ba_abddate,
			NEW.ba_abdsrc
			);
		INSERT INTO t_tiroir VALUES(
			NEW.ti_code,
			NEW.ti_codeext,
			NEW.ti_etiquet,
			NEW.ti_ba_code,
			NEW.ti_prop,
			NEW.ti_etat,
			NEW.ti_type,
			NEW.ti_rf_code,
			NEW.ti_taille,
			NEW.ti_placemt,
			NEW.ti_localis,
			NEW.ti_comment,
			NEW.ti_creadat,
			NEW.ti_majdate,
			NEW.ti_majsrc,
			NEW.ti_abddate,
			NEW.ti_abdsrc
			);			
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_noeud SET 
			nd_code=NEW.nd_code,
			nd_codeext=NEW.nd_codeext,
			nd_nom=NEW.nd_nom,
			nd_coderat=NEW.nd_coderat,
			nd_r1_code=NEW.nd_r1_code,
			nd_r2_code=NEW.nd_r2_code,
			nd_r3_code=NEW.nd_r3_code,
			nd_r4_code=NEW.nd_r4_code,
			nd_voie=NEW.nd_voie,
			nd_type=NEW.nd_type,
			nd_type_ep=NEW.nd_type_ep,
			nd_comment=NEW.nd_comment,
			nd_dtclass=NEW.nd_dtclass,
			nd_geolqlt=NEW.nd_geolqlt,
			nd_geolmod=NEW.nd_geolmod,
			nd_geolsrc=NEW.nd_geolsrc,
			nd_creadat=NEW.nd_creadat,
			nd_majdate=NEW.nd_majdate,
			nd_majsrc=NEW.nd_majsrc,
			nd_abddate=NEW.nd_abddate,
			nd_abdsrc=NEW.nd_abdsrc,
			geom=NEW.geom			
		WHERE nd_code=OLD.nd_code
		;
		UPDATE t_sitetech SET 
			st_code=NEW.st_code,
			st_nd_code=NEW.st_nd_code,
			st_codeext=NEW.st_codeext,
			st_nom=NEW.st_nom,
			st_prop=NEW.st_prop,
			st_gest=NEW.st_gest,
			st_user=NEW.st_user,
			st_proptyp=NEW.st_proptyp,
			st_statut=NEW.st_statut,
			st_etat=NEW.st_etat,
			st_dateins=NEW.st_dateins,
			st_datemes=NEW.st_datemes,
			st_avct=NEW.st_avct,
			st_typephy=NEW.st_typephy,
			st_typelog=NEW.st_typelog,
			st_nblines=NEW.st_nblines,
			st_ad_code=NEW.st_ad_code,
			st_comment=NEW.st_comment,
			st_creadat=NEW.st_creadat,
			st_majdate=NEW.st_majdate,
			st_majsrc=NEW.st_majsrc,
			st_abddate=NEW.st_abddate,
			st_abdsrc=NEW.st_abdsrc
		WHERE st_code=OLD.st_code
		;
		UPDATE t_ltech SET 
			lt_code=NEW.lt_code,
			lt_codeext=NEW.lt_codeext,
			lt_etiquet=NEW.lt_etiquet,
			lt_st_code=NEW.lt_st_code,
			lt_prop=NEW.lt_prop,
			lt_gest=NEW.lt_gest,
			lt_user=NEW.lt_user,
			lt_proptyp=NEW.lt_proptyp,
			lt_statut=NEW.lt_statut,
			lt_etat=NEW.lt_etat,
			lt_dateins=NEW.lt_dateins,
			lt_datemes=NEW.lt_datemes,
			lt_local=NEW.lt_local,
			lt_elec=NEW.lt_elec,
			lt_clim=NEW.lt_clim,
			lt_occp=NEW.lt_occp,
			lt_idmajic=NEW.lt_idmajic,
			lt_comment=NEW.lt_comment,
			lt_creadat=NEW.lt_creadat,
			lt_majdate=NEW.lt_majdate,
			lt_majsrc=NEW.lt_majsrc,
			lt_abddate=NEW.lt_abddate,
			lt_abdsrc=NEW.lt_abdsrc
		WHERE lt_code=OLD.lt_code
		;
		UPDATE t_baie SET 
			ba_code=NEW.ba_code,
			ba_codeext=NEW.ba_codeext,
			ba_etiquet=NEW.ba_etiquet,
			ba_lt_code=NEW.ba_lt_code,
			ba_prop=NEW.ba_prop,
			ba_gest=NEW.ba_gest,
			ba_user=NEW.ba_user,
			ba_proptyp=NEW.ba_proptyp,
			ba_statut=NEW.ba_statut,
			ba_etat=NEW.ba_etat,
			ba_rf_code=NEW.ba_rf_code,
			ba_type=NEW.ba_type,
			ba_nb_u=NEW.ba_nb_u,
			ba_haut=NEW.ba_haut,
			ba_larg=NEW.ba_larg,
			ba_prof=NEW.ba_prof,
			ba_comment=NEW.ba_comment,
			ba_creadat=NEW.ba_creadat,
			ba_majdate=NEW.ba_majdate,
			ba_majsrc=NEW.ba_majsrc,
			ba_abddate=NEW.ba_abddate,
			ba_abdsrc=NEW.ba_abdsrc
		WHERE ba_code=OLD.ba_code
		;
		UPDATE t_tiroir SET 
			ti_code=NEW.ti_code,
			ti_codeext=NEW.ti_codeext,
			ti_etiquet=NEW.ti_etiquet,
			ti_ba_code=NEW.ti_ba_code,
			ti_prop=NEW.ti_prop,
			ti_etat=NEW.ti_etat,
			ti_type=NEW.ti_type,
			ti_rf_code=NEW.ti_rf_code,
			ti_taille=NEW.ti_taille,
			ti_placemt=NEW.ti_placemt,
			ti_localis=NEW.ti_localis,
			ti_comment=NEW.ti_comment,
			ti_creadat=NEW.ti_creadat,
			ti_majdate=NEW.ti_majdate,
			ti_majsrc=NEW.ti_majsrc,
			ti_abddate=NEW.ti_abddate,
			ti_abdsrc=NEW.ti_abdsrc
		WHERE ti_code=OLD.ti_code
		;
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		DELETE FROM t_tiroir WHERE ti_code=OLD.ti_code;
		DELETE FROM t_baie WHERE ba_code=OLD.ba_code;
		DELETE FROM t_ltech WHERE lt_code=OLD.lt_code;
		DELETE FROM t_sitetech WHERE st_code=OLD.st_code;
		DELETE FROM t_noeud WHERE nd_code=OLD.nd_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_ti_ba_lt_st_nd
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_ti_ba_lt_st_nd FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_ti_ba_lt_st_nd();


/*vs_elem_eq_ba_lt_st_nd*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_eq_ba_lt_st_nd ON vs_elem_eq_ba_lt_st_nd CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_eq_ba_lt_st_nd() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_eq_ba_lt_st_nd()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_noeud VALUES(
			NEW.nd_code,
			NEW.nd_codeext,
			NEW.nd_nom,
			NEW.nd_coderat,
			NEW.nd_r1_code,
			NEW.nd_r2_code,
			NEW.nd_r3_code,
			NEW.nd_r4_code,
			NEW.nd_voie,
			NEW.nd_type,
			NEW.nd_type_ep,
			NEW.nd_comment,
			NEW.nd_dtclass,
			NEW.nd_geolqlt,
			NEW.nd_geolmod,
			NEW.nd_geolsrc,
			NEW.nd_creadat,
			NEW.nd_majdate,
			NEW.nd_majsrc,
			NEW.nd_abddate,
			NEW.nd_abdsrc,
			NEW.geom
			);
        INSERT INTO  t_sitetech VALUES(
			NEW.st_code,
			NEW.st_nd_code,
			NEW.st_codeext,
			NEW.st_nom,
			NEW.st_prop,
			NEW.st_gest,
			NEW.st_user,
			NEW.st_proptyp,
			NEW.st_statut,
			NEW.st_etat,
			NEW.st_dateins,
			NEW.st_datemes,
			NEW.st_avct,
			NEW.st_typephy,
			NEW.st_typelog,
			NEW.st_nblines,
			NEW.st_ad_code,
			NEW.st_comment,
			NEW.st_creadat,
			NEW.st_majdate,
			NEW.st_majsrc,
			NEW.st_abddate,
			NEW.st_abdsrc
			);
        INSERT INTO  t_ltech VALUES(
			NEW.lt_code,
			NEW.lt_codeext,
			NEW.lt_etiquet,
			NEW.lt_st_code,
			NEW.lt_prop,
			NEW.lt_gest,
			NEW.lt_user,
			NEW.lt_proptyp,
			NEW.lt_statut,
			NEW.lt_etat,
			NEW.lt_dateins,
			NEW.lt_datemes,
			NEW.lt_local,
			NEW.lt_elec,
			NEW.lt_clim,
			NEW.lt_occp,
			NEW.lt_idmajic,
			NEW.lt_comment,
			NEW.lt_creadat,
			NEW.lt_majdate,
			NEW.lt_majsrc,
			NEW.lt_abddate,
			NEW.lt_abdsrc
			);
		INSERT INTO t_baie VALUES(
			NEW.ba_code,
			NEW.ba_codeext,
			NEW.ba_etiquet,
			NEW.ba_lt_code,
			NEW.ba_prop,
			NEW.ba_gest,
			NEW.ba_user,
			NEW.ba_proptyp,
			NEW.ba_statut,
			NEW.ba_etat,
			NEW.ba_rf_code,
			NEW.ba_type,
			NEW.ba_nb_u,
			NEW.ba_haut,
			NEW.ba_larg,
			NEW.ba_prof,
			NEW.ba_comment,
			NEW.ba_creadat,
			NEW.ba_majdate,
			NEW.ba_majsrc,
			NEW.ba_abddate,
			NEW.ba_abdsrc
			);
		INSERT INTO t_equipement VALUES(
			NEW.eq_code,
			NEW.eq_codeext,
			NEW.eq_etiquet,
			NEW.eq_ba_code,
			NEW.eq_prop,
			NEW.eq_rf_code,
			NEW.eq_dateins,
			NEW.eq_datemes,
			NEW.eq_comment,
			NEW.eq_creadat,
			NEW.eq_majdate,
			NEW.eq_majsrc,
			NEW.eq_abddate,
			NEW.eq_abdsrc
			);			
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_noeud SET 
			nd_code=NEW.nd_code,
			nd_codeext=NEW.nd_codeext,
			nd_nom=NEW.nd_nom,
			nd_coderat=NEW.nd_coderat,
			nd_r1_code=NEW.nd_r1_code,
			nd_r2_code=NEW.nd_r2_code,
			nd_r3_code=NEW.nd_r3_code,
			nd_r4_code=NEW.nd_r4_code,
			nd_voie=NEW.nd_voie,
			nd_type=NEW.nd_type,
			nd_type_ep=NEW.nd_type_ep,
			nd_comment=NEW.nd_comment,
			nd_dtclass=NEW.nd_dtclass,
			nd_geolqlt=NEW.nd_geolqlt,
			nd_geolmod=NEW.nd_geolmod,
			nd_geolsrc=NEW.nd_geolsrc,
			nd_creadat=NEW.nd_creadat,
			nd_majdate=NEW.nd_majdate,
			nd_majsrc=NEW.nd_majsrc,
			nd_abddate=NEW.nd_abddate,
			nd_abdsrc=NEW.nd_abdsrc,
			geom=NEW.geom			
		WHERE nd_code=OLD.nd_code
		;
		UPDATE t_sitetech SET 
			st_code=NEW.st_code,
			st_nd_code=NEW.st_nd_code,
			st_codeext=NEW.st_codeext,
			st_nom=NEW.st_nom,
			st_prop=NEW.st_prop,
			st_gest=NEW.st_gest,
			st_user=NEW.st_user,
			st_proptyp=NEW.st_proptyp,
			st_statut=NEW.st_statut,
			st_etat=NEW.st_etat,
			st_dateins=NEW.st_dateins,
			st_datemes=NEW.st_datemes,
			st_avct=NEW.st_avct,
			st_typephy=NEW.st_typephy,
			st_typelog=NEW.st_typelog,
			st_nblines=NEW.st_nblines,
			st_ad_code=NEW.st_ad_code,
			st_comment=NEW.st_comment,
			st_creadat=NEW.st_creadat,
			st_majdate=NEW.st_majdate,
			st_majsrc=NEW.st_majsrc,
			st_abddate=NEW.st_abddate,
			st_abdsrc=NEW.st_abdsrc
		WHERE st_code=OLD.st_code
		;
		UPDATE t_ltech SET 
			lt_code=NEW.lt_code,
			lt_codeext=NEW.lt_codeext,
			lt_etiquet=NEW.lt_etiquet,
			lt_st_code=NEW.lt_st_code,
			lt_prop=NEW.lt_prop,
			lt_gest=NEW.lt_gest,
			lt_user=NEW.lt_user,
			lt_proptyp=NEW.lt_proptyp,
			lt_statut=NEW.lt_statut,
			lt_etat=NEW.lt_etat,
			lt_dateins=NEW.lt_dateins,
			lt_datemes=NEW.lt_datemes,
			lt_local=NEW.lt_local,
			lt_elec=NEW.lt_elec,
			lt_clim=NEW.lt_clim,
			lt_occp=NEW.lt_occp,
			lt_idmajic=NEW.lt_idmajic,
			lt_comment=NEW.lt_comment,
			lt_creadat=NEW.lt_creadat,
			lt_majdate=NEW.lt_majdate,
			lt_majsrc=NEW.lt_majsrc,
			lt_abddate=NEW.lt_abddate,
			lt_abdsrc=NEW.lt_abdsrc
		WHERE lt_code=OLD.lt_code
		;
		UPDATE t_baie SET 
			ba_code=NEW.ba_code,
			ba_codeext=NEW.ba_codeext,
			ba_etiquet=NEW.ba_etiquet,
			ba_lt_code=NEW.ba_lt_code,
			ba_prop=NEW.ba_prop,
			ba_gest=NEW.ba_gest,
			ba_user=NEW.ba_user,
			ba_proptyp=NEW.ba_proptyp,
			ba_statut=NEW.ba_statut,
			ba_etat=NEW.ba_etat,
			ba_rf_code=NEW.ba_rf_code,
			ba_type=NEW.ba_type,
			ba_nb_u=NEW.ba_nb_u,
			ba_haut=NEW.ba_haut,
			ba_larg=NEW.ba_larg,
			ba_prof=NEW.ba_prof,
			ba_comment=NEW.ba_comment,
			ba_creadat=NEW.ba_creadat,
			ba_majdate=NEW.ba_majdate,
			ba_majsrc=NEW.ba_majsrc,
			ba_abddate=NEW.ba_abddate,
			ba_abdsrc=NEW.ba_abdsrc
		WHERE ba_code=OLD.ba_code
		;
		UPDATE t_equipement SET 
			eq_code=NEW.eq_code,
			eq_codeext=NEW.eq_codeext,
			eq_etiquet=NEW.eq_etiquet,
			eq_ba_code=NEW.eq_ba_code,
			eq_prop=NEW.eq_prop,
			eq_rf_code=NEW.eq_rf_code,
			eq_dateins=NEW.eq_dateins,
			eq_datemes=NEW.eq_datemes,
			eq_comment=NEW.eq_comment,
			eq_creadat=NEW.eq_creadat,
			eq_majdate=NEW.eq_majdate,
			eq_majsrc=NEW.eq_majsrc,
			eq_abddate=NEW.eq_abddate,
			eq_abdsrc=NEW.eq_abdsrc
		WHERE eq_code=OLD.eq_code
		;
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		DELETE FROM t_equipement WHERE eq_code=OLD.eq_code;
		DELETE FROM t_baie WHERE ba_code=OLD.ba_code;
		DELETE FROM t_ltech WHERE lt_code=OLD.lt_code;
		DELETE FROM t_sitetech WHERE st_code=OLD.st_code;
		DELETE FROM t_noeud WHERE nd_code=OLD.nd_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_eq_ba_lt_st_nd
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_eq_ba_lt_st_nd FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_eq_ba_lt_st_nd();

	  
/*vs_elem_pt_nd*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_pt_nd ON vs_elem_pt_nd CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_pt_nd() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_pt_nd()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_noeud VALUES(
			NEW.nd_code,
			NEW.nd_codeext,
			NEW.nd_nom,
			NEW.nd_coderat,
			NEW.nd_r1_code,
			NEW.nd_r2_code,
			NEW.nd_r3_code,
			NEW.nd_r4_code,
			NEW.nd_voie,
			NEW.nd_type,
			NEW.nd_type_ep,
			NEW.nd_comment,
			NEW.nd_dtclass,
			NEW.nd_geolqlt,
			NEW.nd_geolmod,
			NEW.nd_geolsrc,
			NEW.nd_creadat,
			NEW.nd_majdate,
			NEW.nd_majsrc,
			NEW.nd_abddate,
			NEW.nd_abdsrc,
			NEW.geom
			);
        INSERT INTO  t_ptech VALUES(
			NEW.pt_code,
			NEW.pt_codeext,
			NEW.pt_etiquet,
			NEW.pt_nd_code,
			NEW.pt_ad_code,
			NEW.pt_gest_do,
			NEW.pt_prop_do,
			NEW.pt_prop,
			NEW.pt_gest,
			NEW.pt_user,
			NEW.pt_proptyp,
			NEW.pt_statut,
			NEW.pt_etat,
			NEW.pt_dateins,
			NEW.pt_datemes,
			NEW.pt_avct,
			NEW.pt_typephy,
			NEW.pt_typelog,
			NEW.pt_rf_code,
			NEW.pt_nature,
			NEW.pt_secu,
			NEW.pt_occp,
			NEW.pt_a_dan,
			NEW.pt_a_dtetu,
			NEW.pt_a_struc,
			NEW.pt_a_haut,
			NEW.pt_a_passa,
			NEW.pt_a_strat,
			NEW.pt_rotatio,
			NEW.pt_detec,
			NEW.pt_comment,
			NEW.pt_creadat,
			NEW.pt_majdate,
			NEW.pt_majsrc,
			NEW.pt_abddate,
			NEW.pt_abdsrc
			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_noeud SET 
			nd_code=NEW.nd_code,
			nd_codeext=NEW.nd_codeext,
			nd_nom=NEW.nd_nom,
			nd_coderat=NEW.nd_coderat,
			nd_r1_code=NEW.nd_r1_code,
			nd_r2_code=NEW.nd_r2_code,
			nd_r3_code=NEW.nd_r3_code,
			nd_r4_code=NEW.nd_r4_code,
			nd_voie=NEW.nd_voie,
			nd_type=NEW.nd_type,
			nd_type_ep=NEW.nd_type_ep,
			nd_comment=NEW.nd_comment,
			nd_dtclass=NEW.nd_dtclass,
			nd_geolqlt=NEW.nd_geolqlt,
			nd_geolmod=NEW.nd_geolmod,
			nd_geolsrc=NEW.nd_geolsrc,
			nd_creadat=NEW.nd_creadat,
			nd_majdate=NEW.nd_majdate,
			nd_majsrc=NEW.nd_majsrc,
			nd_abddate=NEW.nd_abddate,
			nd_abdsrc=NEW.nd_abdsrc,
			geom=NEW.geom			
		WHERE nd_code=OLD.nd_code
		;
		UPDATE t_ptech SET 
			pt_code=NEW.pt_code,
			pt_codeext=NEW.pt_codeext,
			pt_etiquet=NEW.pt_etiquet,
			pt_nd_code=NEW.pt_nd_code,
			pt_ad_code=NEW.pt_ad_code,
			pt_gest_do=NEW.pt_gest_do,
			pt_prop_do=NEW.pt_prop_do,
			pt_prop=NEW.pt_prop,
			pt_gest=NEW.pt_gest,
			pt_user=NEW.pt_user,
			pt_proptyp=NEW.pt_proptyp,
			pt_statut=NEW.pt_statut,
			pt_etat=NEW.pt_etat,
			pt_dateins=NEW.pt_dateins,
			pt_datemes=NEW.pt_datemes,
			pt_avct=NEW.pt_avct,
			pt_typephy=NEW.pt_typephy,
			pt_typelog=NEW.pt_typelog,
			pt_rf_code=NEW.pt_rf_code,
			pt_nature=NEW.pt_nature,
			pt_secu=NEW.pt_secu,
			pt_occp=NEW.pt_occp,
			pt_a_dan=NEW.pt_a_dan,
			pt_a_dtetu=NEW.pt_a_dtetu,
			pt_a_struc=NEW.pt_a_struc,
			pt_a_haut=NEW.pt_a_haut,
			pt_a_passa=NEW.pt_a_passa,
			pt_a_strat=NEW.pt_a_strat,
			pt_rotatio=NEW.pt_rotatio,
			pt_detec=NEW.pt_detec,
			pt_comment=NEW.pt_comment,
			pt_creadat=NEW.pt_creadat,
			pt_majdate=NEW.pt_majdate,
			pt_majsrc=NEW.pt_majsrc,
			pt_abddate=NEW.pt_abddate,
			pt_abdsrc=NEW.pt_abdsrc
		WHERE pt_code=OLD.pt_code
		;
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		/*INVERSER ?*/
		DELETE FROM t_ptech WHERE pt_code=OLD.pt_code;
		DELETE FROM t_noeud WHERE nd_code=OLD.nd_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_pt_nd
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_pt_nd FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_pt_nd();
	  

/*vs_elem_bp_pt_nd*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_bp_pt_nd ON vs_elem_bp_pt_nd CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_bp_pt_nd() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_bp_pt_nd()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_noeud VALUES(
			NEW.nd_code,
			NEW.nd_codeext,
			NEW.nd_nom,
			NEW.nd_coderat,
			NEW.nd_r1_code,
			NEW.nd_r2_code,
			NEW.nd_r3_code,
			NEW.nd_r4_code,
			NEW.nd_voie,
			NEW.nd_type,
			NEW.nd_type_ep,
			NEW.nd_comment,
			NEW.nd_dtclass,
			NEW.nd_geolqlt,
			NEW.nd_geolmod,
			NEW.nd_geolsrc,
			NEW.nd_creadat,
			NEW.nd_majdate,
			NEW.nd_majsrc,
			NEW.nd_abddate,
			NEW.nd_abdsrc,
			NEW.geom
			);
        INSERT INTO  t_ptech VALUES(
			NEW.pt_code,
			NEW.pt_codeext,
			NEW.pt_etiquet,
			NEW.pt_nd_code,
			NEW.pt_ad_code,
			NEW.pt_gest_do,
			NEW.pt_prop_do,
			NEW.pt_prop,
			NEW.pt_gest,
			NEW.pt_user,
			NEW.pt_proptyp,
			NEW.pt_statut,
			NEW.pt_etat,
			NEW.pt_dateins,
			NEW.pt_datemes,
			NEW.pt_avct,
			NEW.pt_typephy,
			NEW.pt_typelog,
			NEW.pt_rf_code,
			NEW.pt_nature,
			NEW.pt_secu,
			NEW.pt_occp,
			NEW.pt_a_dan,
			NEW.pt_a_dtetu,
			NEW.pt_a_struc,
			NEW.pt_a_haut,
			NEW.pt_a_passa,
			NEW.pt_a_strat,
			NEW.pt_rotatio,
			NEW.pt_detec,
			NEW.pt_comment,
			NEW.pt_creadat,
			NEW.pt_majdate,
			NEW.pt_majsrc,
			NEW.pt_abddate,
			NEW.pt_abdsrc
			);
        INSERT INTO  t_ebp VALUES(			
			NEW.bp_code,
			NEW.bp_etiquet,
			NEW.bp_codeext,
			NEW.bp_pt_code,
			NEW.bp_lt_code,
			NEW.bp_sf_code,
			NEW.bp_prop,
			NEW.bp_gest,
			NEW.bp_user,
			NEW.bp_proptyp,
			NEW.bp_statut,
			NEW.bp_etat,
			NEW.bp_occp,
			NEW.bp_datemes,
			NEW.bp_avct,
			NEW.bp_typephy,
			NEW.bp_typelog,
			NEW.bp_rf_code,
			NEW.bp_entrees,
			NEW.bp_ref_kit,
			NEW.bp_ca_nb,
			NEW.bp_nb_pas,
			NEW.bp_linecod,
			NEW.bp_oc_code,
			NEW.bp_racco,
			NEW.bp_comment,
			NEW.bp_creadat,
			NEW.bp_majdate,
			NEW.bp_majsrc,
			NEW.bp_abddate,
			NEW.bp_abdsrc
			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_noeud SET 
			nd_code=NEW.nd_code,
			nd_codeext=NEW.nd_codeext,
			nd_nom=NEW.nd_nom,
			nd_coderat=NEW.nd_coderat,
			nd_r1_code=NEW.nd_r1_code,
			nd_r2_code=NEW.nd_r2_code,
			nd_r3_code=NEW.nd_r3_code,
			nd_r4_code=NEW.nd_r4_code,
			nd_voie=NEW.nd_voie,
			nd_type=NEW.nd_type,
			nd_type_ep=NEW.nd_type_ep,
			nd_comment=NEW.nd_comment,
			nd_dtclass=NEW.nd_dtclass,
			nd_geolqlt=NEW.nd_geolqlt,
			nd_geolmod=NEW.nd_geolmod,
			nd_geolsrc=NEW.nd_geolsrc,
			nd_creadat=NEW.nd_creadat,
			nd_majdate=NEW.nd_majdate,
			nd_majsrc=NEW.nd_majsrc,
			nd_abddate=NEW.nd_abddate,
			nd_abdsrc=NEW.nd_abdsrc,
			geom=NEW.geom			
		WHERE nd_code=OLD.nd_code
		;
		UPDATE t_ptech SET 
			pt_code=NEW.pt_code,
			pt_codeext=NEW.pt_codeext,
			pt_etiquet=NEW.pt_etiquet,
			pt_nd_code=NEW.pt_nd_code,
			pt_ad_code=NEW.pt_ad_code,
			pt_gest_do=NEW.pt_gest_do,
			pt_prop_do=NEW.pt_prop_do,
			pt_prop=NEW.pt_prop,
			pt_gest=NEW.pt_gest,
			pt_user=NEW.pt_user,
			pt_proptyp=NEW.pt_proptyp,
			pt_statut=NEW.pt_statut,
			pt_etat=NEW.pt_etat,
			pt_dateins=NEW.pt_dateins,
			pt_datemes=NEW.pt_datemes,
			pt_avct=NEW.pt_avct,
			pt_typephy=NEW.pt_typephy,
			pt_typelog=NEW.pt_typelog,
			pt_rf_code=NEW.pt_rf_code,
			pt_nature=NEW.pt_nature,
			pt_secu=NEW.pt_secu,
			pt_occp=NEW.pt_occp,
			pt_a_dan=NEW.pt_a_dan,
			pt_a_dtetu=NEW.pt_a_dtetu,
			pt_a_struc=NEW.pt_a_struc,
			pt_a_haut=NEW.pt_a_haut,
			pt_a_passa=NEW.pt_a_passa,
			pt_a_strat=NEW.pt_a_strat,
			pt_rotatio=NEW.pt_rotatio,
			pt_detec=NEW.pt_detec,
			pt_comment=NEW.pt_comment,
			pt_creadat=NEW.pt_creadat,
			pt_majdate=NEW.pt_majdate,
			pt_majsrc=NEW.pt_majsrc,
			pt_abddate=NEW.pt_abddate,
			pt_abdsrc=NEW.pt_abdsrc
		WHERE pt_code=OLD.pt_code
		;
		UPDATE t_ebp SET 
			bp_code=NEW.bp_code,
			bp_etiquet=NEW.bp_etiquet,
			bp_codeext=NEW.bp_codeext,
			bp_pt_code=NEW.bp_pt_code,
			bp_lt_code=NEW.bp_lt_code,
			bp_sf_code=NEW.bp_sf_code,
			bp_prop=NEW.bp_prop,
			bp_gest=NEW.bp_gest,
			bp_user=NEW.bp_user,
			bp_proptyp=NEW.bp_proptyp,
			bp_statut=NEW.bp_statut,
			bp_etat=NEW.bp_etat,
			bp_occp=NEW.bp_occp,
			bp_datemes=NEW.bp_datemes,
			bp_avct=NEW.bp_avct,
			bp_typephy=NEW.bp_typephy,
			bp_typelog=NEW.bp_typelog,
			bp_rf_code=NEW.bp_rf_code,
			bp_entrees=NEW.bp_entrees,
			bp_ref_kit=NEW.bp_ref_kit,
			bp_ca_nb=NEW.bp_ca_nb,
			bp_nb_pas=NEW.bp_nb_pas,
			bp_linecod=NEW.bp_linecod,
			bp_oc_code=NEW.bp_oc_code,
			bp_racco=NEW.bp_racco,
			bp_comment=NEW.bp_comment,
			bp_creadat=NEW.bp_creadat,
			bp_majdate=NEW.bp_majdate,
			bp_majsrc=NEW.bp_majsrc,
			bp_abddate=NEW.bp_abddate,
			bp_abdsrc=NEW.bp_abdsrc
		WHERE bp_code=OLD.bp_code
		;

		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		/*INVERSER ?*/
		DELETE FROM t_ebp WHERE bp_code=OLD.bp_code;
		DELETE FROM t_ptech WHERE pt_code=OLD.pt_code;
		DELETE FROM t_noeud WHERE nd_code=OLD.nd_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_bp_pt_nd
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_bp_pt_nd FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_bp_pt_nd();

/*vs_elem_cs_bp_pt_nd*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_cs_bp_pt_nd ON vs_elem_cs_bp_pt_nd CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_cs_bp_pt_nd() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_cs_bp_pt_nd()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_noeud VALUES(
			NEW.nd_code,
			NEW.nd_codeext,
			NEW.nd_nom,
			NEW.nd_coderat,
			NEW.nd_r1_code,
			NEW.nd_r2_code,
			NEW.nd_r3_code,
			NEW.nd_r4_code,
			NEW.nd_voie,
			NEW.nd_type,
			NEW.nd_type_ep,
			NEW.nd_comment,
			NEW.nd_dtclass,
			NEW.nd_geolqlt,
			NEW.nd_geolmod,
			NEW.nd_geolsrc,
			NEW.nd_creadat,
			NEW.nd_majdate,
			NEW.nd_majsrc,
			NEW.nd_abddate,
			NEW.nd_abdsrc,
			NEW.geom
			);
        INSERT INTO  t_ptech VALUES(
			NEW.pt_code,
			NEW.pt_codeext,
			NEW.pt_etiquet,
			NEW.pt_nd_code,
			NEW.pt_ad_code,
			NEW.pt_gest_do,
			NEW.pt_prop_do,
			NEW.pt_prop,
			NEW.pt_gest,
			NEW.pt_user,
			NEW.pt_proptyp,
			NEW.pt_statut,
			NEW.pt_etat,
			NEW.pt_dateins,
			NEW.pt_datemes,
			NEW.pt_avct,
			NEW.pt_typephy,
			NEW.pt_typelog,
			NEW.pt_rf_code,
			NEW.pt_nature,
			NEW.pt_secu,
			NEW.pt_occp,
			NEW.pt_a_dan,
			NEW.pt_a_dtetu,
			NEW.pt_a_struc,
			NEW.pt_a_haut,
			NEW.pt_a_passa,
			NEW.pt_a_strat,
			NEW.pt_rotatio,
			NEW.pt_detec,
			NEW.pt_comment,
			NEW.pt_creadat,
			NEW.pt_majdate,
			NEW.pt_majsrc,
			NEW.pt_abddate,
			NEW.pt_abdsrc
			);
        INSERT INTO  t_ebp VALUES(			
			NEW.bp_code,
			NEW.bp_etiquet,
			NEW.bp_codeext,
			NEW.bp_pt_code,
			NEW.bp_lt_code,
			NEW.bp_sf_code,
			NEW.bp_prop,
			NEW.bp_gest,
			NEW.bp_user,
			NEW.bp_proptyp,
			NEW.bp_statut,
			NEW.bp_etat,
			NEW.bp_occp,
			NEW.bp_datemes,
			NEW.bp_avct,
			NEW.bp_typephy,
			NEW.bp_typelog,
			NEW.bp_rf_code,
			NEW.bp_entrees,
			NEW.bp_ref_kit,
			NEW.bp_ca_nb,
			NEW.bp_nb_pas,
			NEW.bp_linecod,
			NEW.bp_oc_code,
			NEW.bp_racco,
			NEW.bp_comment,
			NEW.bp_creadat,
			NEW.bp_majdate,
			NEW.bp_majsrc,
			NEW.bp_abddate,
			NEW.bp_abdsrc
			);
        INSERT INTO t_cassette VALUES(			
			NEW.cs_code,
			NEW.cs_nb_pas,
			NEW.cs_bp_code,
			NEW.cs_num,
			NEW.cs_type,
			NEW.cs_face,
			NEW.cs_rf_code,
			NEW.cs_comment,
			NEW.cs_creadat,
			NEW.cs_majdate,
			NEW.cs_majsrc,
			NEW.cs_abddate,
			NEW.cs_abdsrc
			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_noeud SET 
			nd_code=NEW.nd_code,
			nd_codeext=NEW.nd_codeext,
			nd_nom=NEW.nd_nom,
			nd_coderat=NEW.nd_coderat,
			nd_r1_code=NEW.nd_r1_code,
			nd_r2_code=NEW.nd_r2_code,
			nd_r3_code=NEW.nd_r3_code,
			nd_r4_code=NEW.nd_r4_code,
			nd_voie=NEW.nd_voie,
			nd_type=NEW.nd_type,
			nd_type_ep=NEW.nd_type_ep,
			nd_comment=NEW.nd_comment,
			nd_dtclass=NEW.nd_dtclass,
			nd_geolqlt=NEW.nd_geolqlt,
			nd_geolmod=NEW.nd_geolmod,
			nd_geolsrc=NEW.nd_geolsrc,
			nd_creadat=NEW.nd_creadat,
			nd_majdate=NEW.nd_majdate,
			nd_majsrc=NEW.nd_majsrc,
			nd_abddate=NEW.nd_abddate,
			nd_abdsrc=NEW.nd_abdsrc,
			geom=NEW.geom			
		WHERE nd_code=OLD.nd_code
		;
		UPDATE t_ptech SET 
			pt_code=NEW.pt_code,
			pt_codeext=NEW.pt_codeext,
			pt_etiquet=NEW.pt_etiquet,
			pt_nd_code=NEW.pt_nd_code,
			pt_ad_code=NEW.pt_ad_code,
			pt_gest_do=NEW.pt_gest_do,
			pt_prop_do=NEW.pt_prop_do,
			pt_prop=NEW.pt_prop,
			pt_gest=NEW.pt_gest,
			pt_user=NEW.pt_user,
			pt_proptyp=NEW.pt_proptyp,
			pt_statut=NEW.pt_statut,
			pt_etat=NEW.pt_etat,
			pt_dateins=NEW.pt_dateins,
			pt_datemes=NEW.pt_datemes,
			pt_avct=NEW.pt_avct,
			pt_typephy=NEW.pt_typephy,
			pt_typelog=NEW.pt_typelog,
			pt_rf_code=NEW.pt_rf_code,
			pt_nature=NEW.pt_nature,
			pt_secu=NEW.pt_secu,
			pt_occp=NEW.pt_occp,
			pt_a_dan=NEW.pt_a_dan,
			pt_a_dtetu=NEW.pt_a_dtetu,
			pt_a_struc=NEW.pt_a_struc,
			pt_a_haut=NEW.pt_a_haut,
			pt_a_passa=NEW.pt_a_passa,
			pt_a_strat=NEW.pt_a_strat,
			pt_rotatio=NEW.pt_rotatio,
			pt_detec=NEW.pt_detec,
			pt_comment=NEW.pt_comment,
			pt_creadat=NEW.pt_creadat,
			pt_majdate=NEW.pt_majdate,
			pt_majsrc=NEW.pt_majsrc,
			pt_abddate=NEW.pt_abddate,
			pt_abdsrc=NEW.pt_abdsrc
		WHERE pt_code=OLD.pt_code
		;
		UPDATE t_ebp SET 
			bp_code=NEW.bp_code,
			bp_etiquet=NEW.bp_etiquet,
			bp_codeext=NEW.bp_codeext,
			bp_pt_code=NEW.bp_pt_code,
			bp_lt_code=NEW.bp_lt_code,
			bp_sf_code=NEW.bp_sf_code,
			bp_prop=NEW.bp_prop,
			bp_gest=NEW.bp_gest,
			bp_user=NEW.bp_user,
			bp_proptyp=NEW.bp_proptyp,
			bp_statut=NEW.bp_statut,
			bp_etat=NEW.bp_etat,
			bp_occp=NEW.bp_occp,
			bp_datemes=NEW.bp_datemes,
			bp_avct=NEW.bp_avct,
			bp_typephy=NEW.bp_typephy,
			bp_typelog=NEW.bp_typelog,
			bp_rf_code=NEW.bp_rf_code,
			bp_entrees=NEW.bp_entrees,
			bp_ref_kit=NEW.bp_ref_kit,
			bp_ca_nb=NEW.bp_ca_nb,
			bp_nb_pas=NEW.bp_nb_pas,
			bp_linecod=NEW.bp_linecod,
			bp_oc_code=NEW.bp_oc_code,
			bp_racco=NEW.bp_racco,
			bp_comment=NEW.bp_comment,
			bp_creadat=NEW.bp_creadat,
			bp_majdate=NEW.bp_majdate,
			bp_majsrc=NEW.bp_majsrc,
			bp_abddate=NEW.bp_abddate,
			bp_abdsrc=NEW.bp_abdsrc
		WHERE bp_code=OLD.bp_code
		;
		UPDATE t_cassette SET 
			cs_code=NEW.cs_code,
			cs_nb_pas=NEW.cs_nb_pas,
			cs_bp_code=NEW.cs_bp_code,
			cs_num=NEW.cs_num,
			cs_type=NEW.cs_type,
			cs_face=NEW.cs_face,
			cs_rf_code=NEW.cs_rf_code,
			cs_comment=NEW.cs_comment,
			cs_creadat=NEW.cs_creadat,
			cs_majdate=NEW.cs_majdate,
			cs_majsrc=NEW.cs_majsrc,
			cs_abddate=NEW.cs_abddate,
			cs_abdsrc=NEW.cs_abdsrc
		WHERE cs_code=OLD.cs_code
		;
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		DELETE FROM t_cassette WHERE cs_code=OLD.cs_code;
		DELETE FROM t_ebp WHERE bp_code=OLD.bp_code;
		DELETE FROM t_ptech WHERE pt_code=OLD.pt_code;
		DELETE FROM t_noeud WHERE nd_code=OLD.nd_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_cs_bp_pt_nd
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_cs_bp_pt_nd FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_cs_bp_pt_nd();
	  
/*vs_elem_cs_bp_lt_st_nd*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_cs_bp_lt_st_nd ON vs_elem_cs_bp_lt_st_nd CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_cs_bp_lt_st_nd() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_cs_bp_lt_st_nd()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_noeud VALUES(
			NEW.nd_code,
			NEW.nd_codeext,
			NEW.nd_nom,
			NEW.nd_coderat,
			NEW.nd_r1_code,
			NEW.nd_r2_code,
			NEW.nd_r3_code,
			NEW.nd_r4_code,
			NEW.nd_voie,
			NEW.nd_type,
			NEW.nd_type_ep,
			NEW.nd_comment,
			NEW.nd_dtclass,
			NEW.nd_geolqlt,
			NEW.nd_geolmod,
			NEW.nd_geolsrc,
			NEW.nd_creadat,
			NEW.nd_majdate,
			NEW.nd_majsrc,
			NEW.nd_abddate,
			NEW.nd_abdsrc,
			NEW.geom
			);
        INSERT INTO  t_sitetech VALUES(
			NEW.st_code,
			NEW.st_nd_code,
			NEW.st_codeext,
			NEW.st_nom,
			NEW.st_prop,
			NEW.st_gest,
			NEW.st_user,
			NEW.st_proptyp,
			NEW.st_statut,
			NEW.st_etat,
			NEW.st_dateins,
			NEW.st_datemes,
			NEW.st_avct,
			NEW.st_typephy,
			NEW.st_typelog,
			NEW.st_nblines,
			NEW.st_ad_code,
			NEW.st_comment,
			NEW.st_creadat,
			NEW.st_majdate,
			NEW.st_majsrc,
			NEW.st_abddate,
			NEW.st_abdsrc
			);
        INSERT INTO  t_ltech VALUES(
			NEW.lt_code,
			NEW.lt_codeext,
			NEW.lt_etiquet,
			NEW.lt_st_code,
			NEW.lt_prop,
			NEW.lt_gest,
			NEW.lt_user,
			NEW.lt_proptyp,
			NEW.lt_statut,
			NEW.lt_etat,
			NEW.lt_dateins,
			NEW.lt_datemes,
			NEW.lt_local,
			NEW.lt_elec,
			NEW.lt_clim,
			NEW.lt_occp,
			NEW.lt_idmajic,
			NEW.lt_comment,
			NEW.lt_creadat,
			NEW.lt_majdate,
			NEW.lt_majsrc,
			NEW.lt_abddate,
			NEW.lt_abdsrc
			);
	    INSERT INTO  t_ebp VALUES(			
			NEW.bp_code,
			NEW.bp_etiquet,
			NEW.bp_codeext,
			NEW.bp_pt_code,
			NEW.bp_lt_code,
			NEW.bp_sf_code,
			NEW.bp_prop,
			NEW.bp_gest,
			NEW.bp_user,
			NEW.bp_proptyp,
			NEW.bp_statut,
			NEW.bp_etat,
			NEW.bp_occp,
			NEW.bp_datemes,
			NEW.bp_avct,
			NEW.bp_typephy,
			NEW.bp_typelog,
			NEW.bp_rf_code,
			NEW.bp_entrees,
			NEW.bp_ref_kit,
			NEW.bp_ca_nb,
			NEW.bp_nb_pas,
			NEW.bp_linecod,
			NEW.bp_oc_code,
			NEW.bp_racco,
			NEW.bp_comment,
			NEW.bp_creadat,
			NEW.bp_majdate,
			NEW.bp_majsrc,
			NEW.bp_abddate,
			NEW.bp_abdsrc
			);
        INSERT INTO t_cassette VALUES(			
			NEW.cs_code,
			NEW.cs_nb_pas,
			NEW.cs_bp_code,
			NEW.cs_num,
			NEW.cs_type,
			NEW.cs_face,
			NEW.cs_rf_code,
			NEW.cs_comment,
			NEW.cs_creadat,
			NEW.cs_majdate,
			NEW.cs_majsrc,
			NEW.cs_abddate,
			NEW.cs_abdsrc
			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_noeud SET 
			nd_code=NEW.nd_code,
			nd_codeext=NEW.nd_codeext,
			nd_nom=NEW.nd_nom,
			nd_coderat=NEW.nd_coderat,
			nd_r1_code=NEW.nd_r1_code,
			nd_r2_code=NEW.nd_r2_code,
			nd_r3_code=NEW.nd_r3_code,
			nd_r4_code=NEW.nd_r4_code,
			nd_voie=NEW.nd_voie,
			nd_type=NEW.nd_type,
			nd_type_ep=NEW.nd_type_ep,
			nd_comment=NEW.nd_comment,
			nd_dtclass=NEW.nd_dtclass,
			nd_geolqlt=NEW.nd_geolqlt,
			nd_geolmod=NEW.nd_geolmod,
			nd_geolsrc=NEW.nd_geolsrc,
			nd_creadat=NEW.nd_creadat,
			nd_majdate=NEW.nd_majdate,
			nd_majsrc=NEW.nd_majsrc,
			nd_abddate=NEW.nd_abddate,
			nd_abdsrc=NEW.nd_abdsrc,
			geom=NEW.geom			
		WHERE nd_code=OLD.nd_code
		;
		UPDATE t_sitetech SET 
			st_code=NEW.st_code,
			st_nd_code=NEW.st_nd_code,
			st_codeext=NEW.st_codeext,
			st_nom=NEW.st_nom,
			st_prop=NEW.st_prop,
			st_gest=NEW.st_gest,
			st_user=NEW.st_user,
			st_proptyp=NEW.st_proptyp,
			st_statut=NEW.st_statut,
			st_etat=NEW.st_etat,
			st_dateins=NEW.st_dateins,
			st_datemes=NEW.st_datemes,
			st_avct=NEW.st_avct,
			st_typephy=NEW.st_typephy,
			st_typelog=NEW.st_typelog,
			st_nblines=NEW.st_nblines,
			st_ad_code=NEW.st_ad_code,
			st_comment=NEW.st_comment,
			st_creadat=NEW.st_creadat,
			st_majdate=NEW.st_majdate,
			st_majsrc=NEW.st_majsrc,
			st_abddate=NEW.st_abddate,
			st_abdsrc=NEW.st_abdsrc
		WHERE st_code=OLD.st_code
		;
		UPDATE t_ltech SET 
			lt_code=NEW.lt_code,
			lt_codeext=NEW.lt_codeext,
			lt_etiquet=NEW.lt_etiquet,
			lt_st_code=NEW.lt_st_code,
			lt_prop=NEW.lt_prop,
			lt_gest=NEW.lt_gest,
			lt_user=NEW.lt_user,
			lt_proptyp=NEW.lt_proptyp,
			lt_statut=NEW.lt_statut,
			lt_etat=NEW.lt_etat,
			lt_dateins=NEW.lt_dateins,
			lt_datemes=NEW.lt_datemes,
			lt_local=NEW.lt_local,
			lt_elec=NEW.lt_elec,
			lt_clim=NEW.lt_clim,
			lt_occp=NEW.lt_occp,
			lt_idmajic=NEW.lt_idmajic,
			lt_comment=NEW.lt_comment,
			lt_creadat=NEW.lt_creadat,
			lt_majdate=NEW.lt_majdate,
			lt_majsrc=NEW.lt_majsrc,
			lt_abddate=NEW.lt_abddate,
			lt_abdsrc=NEW.lt_abdsrc
		WHERE lt_code=OLD.lt_code
		;
		UPDATE t_ebp SET 
			bp_code=NEW.bp_code,
			bp_etiquet=NEW.bp_etiquet,
			bp_codeext=NEW.bp_codeext,
			bp_pt_code=NEW.bp_pt_code,
			bp_lt_code=NEW.bp_lt_code,
			bp_sf_code=NEW.bp_sf_code,
			bp_prop=NEW.bp_prop,
			bp_gest=NEW.bp_gest,
			bp_user=NEW.bp_user,
			bp_proptyp=NEW.bp_proptyp,
			bp_statut=NEW.bp_statut,
			bp_etat=NEW.bp_etat,
			bp_occp=NEW.bp_occp,
			bp_datemes=NEW.bp_datemes,
			bp_avct=NEW.bp_avct,
			bp_typephy=NEW.bp_typephy,
			bp_typelog=NEW.bp_typelog,
			bp_rf_code=NEW.bp_rf_code,
			bp_entrees=NEW.bp_entrees,
			bp_ref_kit=NEW.bp_ref_kit,
			bp_ca_nb=NEW.bp_ca_nb,
			bp_nb_pas=NEW.bp_nb_pas,
			bp_linecod=NEW.bp_linecod,
			bp_oc_code=NEW.bp_oc_code,
			bp_racco=NEW.bp_racco,
			bp_comment=NEW.bp_comment,
			bp_creadat=NEW.bp_creadat,
			bp_majdate=NEW.bp_majdate,
			bp_majsrc=NEW.bp_majsrc,
			bp_abddate=NEW.bp_abddate,
			bp_abdsrc=NEW.bp_abdsrc
		WHERE bp_code=OLD.bp_code
		;
		UPDATE t_cassette SET 
			cs_code=NEW.cs_code,
			cs_nb_pas=NEW.cs_nb_pas,
			cs_bp_code=NEW.cs_bp_code,
			cs_num=NEW.cs_num,
			cs_type=NEW.cs_type,
			cs_face=NEW.cs_face,
			cs_rf_code=NEW.cs_rf_code,
			cs_comment=NEW.cs_comment,
			cs_creadat=NEW.cs_creadat,
			cs_majdate=NEW.cs_majdate,
			cs_majsrc=NEW.cs_majsrc,
			cs_abddate=NEW.cs_abddate,
			cs_abdsrc=NEW.cs_abdsrc
		WHERE cs_code=OLD.cs_code
		;		
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		/*INVERSER ?*/
		DELETE FROM t_cassette WHERE cs_code=OLD.cs_code;
		DELETE FROM t_ebp WHERE bp_code=OLD.bp_code;		
		DELETE FROM t_ltech WHERE lt_code=OLD.lt_code;
		DELETE FROM t_sitetech WHERE st_code=OLD.st_code;
		DELETE FROM t_noeud WHERE nd_code=OLD.nd_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_cs_bp_lt_st_nd
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_cs_bp_lt_st_nd FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_cs_bp_lt_st_nd();

	  
/*vs_elem_bp_sf_nd*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_bp_sf_nd ON vs_elem_bp_sf_nd CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_bp_sf_nd() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_bp_sf_nd()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_noeud VALUES(
			NEW.nd_code,
			NEW.nd_codeext,
			NEW.nd_nom,
			NEW.nd_coderat,
			NEW.nd_r1_code,
			NEW.nd_r2_code,
			NEW.nd_r3_code,
			NEW.nd_r4_code,
			NEW.nd_voie,
			NEW.nd_type,
			NEW.nd_type_ep,
			NEW.nd_comment,
			NEW.nd_dtclass,
			NEW.nd_geolqlt,
			NEW.nd_geolmod,
			NEW.nd_geolsrc,
			NEW.nd_creadat,
			NEW.nd_majdate,
			NEW.nd_majsrc,
			NEW.nd_abddate,
			NEW.nd_abdsrc,
			NEW.geom
			);
        INSERT INTO  t_suf VALUES(
			NEW.sf_code,
			NEW.sf_nd_code,
			NEW.sf_ad_code,
			NEW.sf_zp_code,
			NEW.sf_escal,
			NEW.sf_etage,
			NEW.sf_oper,
			NEW.sf_type,
			NEW.sf_prop,
			NEW.sf_resid,
			NEW.sf_local,
			NEW.sf_racco,
			NEW.sf_comment,
			NEW.sf_creadat,
			NEW.sf_majdate,
			NEW.sf_majsrc,
			NEW.sf_abddate,
			NEW.sf_abdsrc
			);
        INSERT INTO  t_ebp VALUES(			
			NEW.bp_code,
			NEW.bp_etiquet,
			NEW.bp_codeext,
			NEW.bp_sf_code,
			NEW.bp_lt_code,
			NEW.bp_sf_code,
			NEW.bp_prop,
			NEW.bp_gest,
			NEW.bp_user,
			NEW.bp_proptyp,
			NEW.bp_statut,
			NEW.bp_etat,
			NEW.bp_occp,
			NEW.bp_datemes,
			NEW.bp_avct,
			NEW.bp_typephy,
			NEW.bp_typelog,
			NEW.bp_rf_code,
			NEW.bp_entrees,
			NEW.bp_ref_kit,
			NEW.bp_ca_nb,
			NEW.bp_nb_pas,
			NEW.bp_linecod,
			NEW.bp_oc_code,
			NEW.bp_racco,
			NEW.bp_comment,
			NEW.bp_creadat,
			NEW.bp_majdate,
			NEW.bp_majsrc,
			NEW.bp_abddate,
			NEW.bp_abdsrc
			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_noeud SET 
			nd_code=NEW.nd_code,
			nd_codeext=NEW.nd_codeext,
			nd_nom=NEW.nd_nom,
			nd_coderat=NEW.nd_coderat,
			nd_r1_code=NEW.nd_r1_code,
			nd_r2_code=NEW.nd_r2_code,
			nd_r3_code=NEW.nd_r3_code,
			nd_r4_code=NEW.nd_r4_code,
			nd_voie=NEW.nd_voie,
			nd_type=NEW.nd_type,
			nd_type_ep=NEW.nd_type_ep,
			nd_comment=NEW.nd_comment,
			nd_dtclass=NEW.nd_dtclass,
			nd_geolqlt=NEW.nd_geolqlt,
			nd_geolmod=NEW.nd_geolmod,
			nd_geolsrc=NEW.nd_geolsrc,
			nd_creadat=NEW.nd_creadat,
			nd_majdate=NEW.nd_majdate,
			nd_majsrc=NEW.nd_majsrc,
			nd_abddate=NEW.nd_abddate,
			nd_abdsrc=NEW.nd_abdsrc,
			geom=NEW.geom			
		WHERE nd_code=OLD.nd_code
		;
		UPDATE t_suf SET 
			sf_code=NEW.sf_code,
			sf_nd_code=NEW.sf_nd_code,
			sf_ad_code=NEW.sf_ad_code,
			sf_zp_code=NEW.sf_zp_code,
			sf_escal=NEW.sf_escal,
			sf_etage=NEW.sf_etage,
			sf_oper=NEW.sf_oper,
			sf_type=NEW.sf_type,
			sf_prop=NEW.sf_prop,
			sf_resid=NEW.sf_resid,
			sf_local=NEW.sf_local,
			sf_racco=NEW.sf_racco,
			sf_comment=NEW.sf_comment,
			sf_creadat=NEW.sf_creadat,
			sf_majdate=NEW.sf_majdate,
			sf_majsrc=NEW.sf_majsrc,
			sf_abddate=NEW.sf_abddate,
			sf_abdsrc=NEW.sf_abdsrc
		WHERE sf_code=OLD.sf_code
		;
		UPDATE t_ebp SET 
			bp_code=NEW.bp_code,
			bp_etiquet=NEW.bp_etiquet,
			bp_codeext=NEW.bp_codeext,
			bp_sf_code=NEW.bp_sf_code,
			bp_lt_code=NEW.bp_lt_code,
			bp_sf_code=NEW.bp_sf_code,
			bp_prop=NEW.bp_prop,
			bp_gest=NEW.bp_gest,
			bp_user=NEW.bp_user,
			bp_proptyp=NEW.bp_proptyp,
			bp_statut=NEW.bp_statut,
			bp_etat=NEW.bp_etat,
			bp_occp=NEW.bp_occp,
			bp_datemes=NEW.bp_datemes,
			bp_avct=NEW.bp_avct,
			bp_typephy=NEW.bp_typephy,
			bp_typelog=NEW.bp_typelog,
			bp_rf_code=NEW.bp_rf_code,
			bp_entrees=NEW.bp_entrees,
			bp_ref_kit=NEW.bp_ref_kit,
			bp_ca_nb=NEW.bp_ca_nb,
			bp_nb_pas=NEW.bp_nb_pas,
			bp_linecod=NEW.bp_linecod,
			bp_oc_code=NEW.bp_oc_code,
			bp_racco=NEW.bp_racco,
			bp_comment=NEW.bp_comment,
			bp_creadat=NEW.bp_creadat,
			bp_majdate=NEW.bp_majdate,
			bp_majsrc=NEW.bp_majsrc,
			bp_abddate=NEW.bp_abddate,
			bp_abdsrc=NEW.bp_abdsrc
		WHERE bp_code=OLD.bp_code
		;

		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		/*INVERSER ?*/
		DELETE FROM t_ebp WHERE bp_code=OLD.bp_code;
		DELETE FROM t_suf WHERE sf_code=OLD.sf_code;
		DELETE FROM t_noeud WHERE nd_code=OLD.nd_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_bp_sf_nd
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_bp_sf_nd FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_bp_sf_nd();

	  

/*vs_elem_sf_nd*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_sf_nd ON vs_elem_sf_nd CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_sf_nd() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_sf_nd()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_noeud VALUES(
			NEW.nd_code,
			NEW.nd_codeext,
			NEW.nd_nom,
			NEW.nd_coderat,
			NEW.nd_r1_code,
			NEW.nd_r2_code,
			NEW.nd_r3_code,
			NEW.nd_r4_code,
			NEW.nd_voie,
			NEW.nd_type,
			NEW.nd_type_ep,
			NEW.nd_comment,
			NEW.nd_dtclass,
			NEW.nd_geolqlt,
			NEW.nd_geolmod,
			NEW.nd_geolsrc,
			NEW.nd_creadat,
			NEW.nd_majdate,
			NEW.nd_majsrc,
			NEW.nd_abddate,
			NEW.nd_abdsrc,
			NEW.geom
			);
        INSERT INTO  t_suf VALUES(
			NEW.sf_code,
			NEW.sf_nd_code,
			NEW.sf_ad_code,
			NEW.sf_zp_code,
			NEW.sf_escal,
			NEW.sf_etage,
			NEW.sf_oper,
			NEW.sf_type,
			NEW.sf_prop,
			NEW.sf_resid,
			NEW.sf_local,
			NEW.sf_racco,
			NEW.sf_comment,
			NEW.sf_creadat,
			NEW.sf_majdate,
			NEW.sf_majsrc,
			NEW.sf_abddate,
			NEW.sf_abdsrc
			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_noeud SET 
			nd_code=NEW.nd_code,
			nd_codeext=NEW.nd_codeext,
			nd_nom=NEW.nd_nom,
			nd_coderat=NEW.nd_coderat,
			nd_r1_code=NEW.nd_r1_code,
			nd_r2_code=NEW.nd_r2_code,
			nd_r3_code=NEW.nd_r3_code,
			nd_r4_code=NEW.nd_r4_code,
			nd_voie=NEW.nd_voie,
			nd_type=NEW.nd_type,
			nd_type_ep=NEW.nd_type_ep,
			nd_comment=NEW.nd_comment,
			nd_dtclass=NEW.nd_dtclass,
			nd_geolqlt=NEW.nd_geolqlt,
			nd_geolmod=NEW.nd_geolmod,
			nd_geolsrc=NEW.nd_geolsrc,
			nd_creadat=NEW.nd_creadat,
			nd_majdate=NEW.nd_majdate,
			nd_majsrc=NEW.nd_majsrc,
			nd_abddate=NEW.nd_abddate,
			nd_abdsrc=NEW.nd_abdsrc,
			geom=NEW.geom			
		WHERE nd_code=OLD.nd_code
		;
		UPDATE t_suf SET 
			sf_code=NEW.sf_code,
			sf_nd_code=NEW.sf_nd_code,
			sf_ad_code=NEW.sf_ad_code,
			sf_zp_code=NEW.sf_zp_code,
			sf_escal=NEW.sf_escal,
			sf_etage=NEW.sf_etage,
			sf_oper=NEW.sf_oper,
			sf_type=NEW.sf_type,
			sf_prop=NEW.sf_prop,
			sf_resid=NEW.sf_resid,
			sf_local=NEW.sf_local,
			sf_racco=NEW.sf_racco,
			sf_comment=NEW.sf_comment,
			sf_creadat=NEW.sf_creadat,
			sf_majdate=NEW.sf_majdate,
			sf_majsrc=NEW.sf_majsrc,
			sf_abddate=NEW.sf_abddate,
			sf_abdsrc=NEW.sf_abdsrc
		WHERE sf_code=OLD.sf_code
		;
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		/*INVERSER ?*/
		DELETE FROM t_suf WHERE sf_code=OLD.sf_code;
		DELETE FROM t_noeud WHERE nd_code=OLD.nd_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_sf_nd
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_sf_nd FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_sf_nd();
	  

/*vs_elem_se_nd*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_se_nd ON vs_elem_se_nd CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_se_nd() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_se_nd()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_noeud VALUES(
			NEW.nd_code,
			NEW.nd_codeext,
			NEW.nd_nom,
			NEW.nd_coderat,
			NEW.nd_r1_code,
			NEW.nd_r2_code,
			NEW.nd_r3_code,
			NEW.nd_r4_code,
			NEW.nd_voie,
			NEW.nd_type,
			NEW.nd_type_ep,
			NEW.nd_comment,
			NEW.nd_dtclass,
			NEW.nd_geolqlt,
			NEW.nd_geolmod,
			NEW.nd_geolsrc,
			NEW.nd_creadat,
			NEW.nd_majdate,
			NEW.nd_majsrc,
			NEW.nd_abddate,
			NEW.nd_abdsrc,
			NEW.geom
			);
        INSERT INTO  t_siteemission VALUES(
			NEW.se_code,
			NEW.se_nd_code,
			NEW.se_anfr,
			NEW.se_prop,
			NEW.se_gest,
			NEW.se_user,
			NEW.se_proptyp,
			NEW.se_statut,
			NEW.se_etat,
			NEW.se_occp,
			NEW.se_dateins,
			NEW.se_datemes,
			NEW.se_type,
			NEW.se_haut,
			NEW.se_ad_code,
			NEW.se_comment,
			NEW.se_creadat,
			NEW.se_majdate,
			NEW.se_majsrc,
			NEW.se_abddate,
			NEW.se_abdsrc
			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_noeud SET 
			nd_code=NEW.nd_code,
			nd_codeext=NEW.nd_codeext,
			nd_nom=NEW.nd_nom,
			nd_coderat=NEW.nd_coderat,
			nd_r1_code=NEW.nd_r1_code,
			nd_r2_code=NEW.nd_r2_code,
			nd_r3_code=NEW.nd_r3_code,
			nd_r4_code=NEW.nd_r4_code,
			nd_voie=NEW.nd_voie,
			nd_type=NEW.nd_type,
			nd_type_ep=NEW.nd_type_ep,
			nd_comment=NEW.nd_comment,
			nd_dtclass=NEW.nd_dtclass,
			nd_geolqlt=NEW.nd_geolqlt,
			nd_geolmod=NEW.nd_geolmod,
			nd_geolsrc=NEW.nd_geolsrc,
			nd_creadat=NEW.nd_creadat,
			nd_majdate=NEW.nd_majdate,
			nd_majsrc=NEW.nd_majsrc,
			nd_abddate=NEW.nd_abddate,
			nd_abdsrc=NEW.nd_abdsrc,
			geom=NEW.geom			
		WHERE nd_code=OLD.nd_code
		;
		UPDATE t_siteemission SET 
			se_code=NEW.se_code,
			se_nd_code=NEW.se_nd_code,
			se_anfr=NEW.se_anfr,
			se_prop=NEW.se_prop,
			se_gest=NEW.se_gest,
			se_user=NEW.se_user,
			se_proptyp=NEW.se_proptyp,
			se_statut=NEW.se_statut,
			se_etat=NEW.se_etat,
			se_occp=NEW.se_occp,
			se_dateins=NEW.se_dateins,
			se_datemes=NEW.se_datemes,
			se_type=NEW.se_type,
			se_haut=NEW.se_haut,
			se_ad_code=NEW.se_ad_code,
			se_comment=NEW.se_comment,
			se_creadat=NEW.se_creadat,
			se_majdate=NEW.se_majdate,
			se_majsrc=NEW.se_majsrc,
			se_abddate=NEW.se_abddate,
			se_abdsrc=NEW.se_abdsrc
		WHERE se_code=OLD.se_code
		;
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		/*INVERSER ?*/
		DELETE FROM t_siteemission WHERE se_code=OLD.se_code;
		DELETE FROM t_noeud WHERE nd_code=OLD.nd_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_se_nd
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_se_nd FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_se_nd();
	  

/*vs_elem_mq_nd*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_mq_nd ON vs_elem_mq_nd CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_mq_nd() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_mq_nd()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_noeud VALUES(
			NEW.nd_code,
			NEW.nd_codeext,
			NEW.nd_nom,
			NEW.nd_coderat,
			NEW.nd_r1_code,
			NEW.nd_r2_code,
			NEW.nd_r3_code,
			NEW.nd_r4_code,
			NEW.nd_voie,
			NEW.nd_type,
			NEW.nd_type_ep,
			NEW.nd_comment,
			NEW.nd_dtclass,
			NEW.nd_geolqlt,
			NEW.nd_geolmod,
			NEW.nd_geolsrc,
			NEW.nd_creadat,
			NEW.nd_majdate,
			NEW.nd_majsrc,
			NEW.nd_abddate,
			NEW.nd_abdsrc,
			NEW.geom
			);
        INSERT INTO  t_masque VALUES(
			NEW.mq_id,
			NEW.mq_nd_code,
			NEW.mq_face,
			NEW.mq_col,
			NEW.mq_ligne,
			NEW.mq_cd_code,
			NEW.mq_qualinf,
			NEW.mq_comment,
			NEW.mq_creadat,
			NEW.mq_majdate,
			NEW.mq_majsrc,
			NEW.mq_abddate,
			NEW.mq_abdsrc
			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_noeud SET 
			nd_code=NEW.nd_code,
			nd_codeext=NEW.nd_codeext,
			nd_nom=NEW.nd_nom,
			nd_coderat=NEW.nd_coderat,
			nd_r1_code=NEW.nd_r1_code,
			nd_r2_code=NEW.nd_r2_code,
			nd_r3_code=NEW.nd_r3_code,
			nd_r4_code=NEW.nd_r4_code,
			nd_voie=NEW.nd_voie,
			nd_type=NEW.nd_type,
			nd_type_ep=NEW.nd_type_ep,
			nd_comment=NEW.nd_comment,
			nd_dtclass=NEW.nd_dtclass,
			nd_geolqlt=NEW.nd_geolqlt,
			nd_geolmod=NEW.nd_geolmod,
			nd_geolsrc=NEW.nd_geolsrc,
			nd_creadat=NEW.nd_creadat,
			nd_majdate=NEW.nd_majdate,
			nd_majsrc=NEW.nd_majsrc,
			nd_abddate=NEW.nd_abddate,
			nd_abdsrc=NEW.nd_abdsrc,
			geom=NEW.geom			
		WHERE nd_code=OLD.nd_code
		;
		UPDATE t_masque SET 
			mq_id=NEW.mq_id,
			mq_nd_code=NEW.mq_nd_code,
			mq_face=NEW.mq_face,
			mq_col=NEW.mq_col,
			mq_ligne=NEW.mq_ligne,
			mq_cd_code=NEW.mq_cd_code,
			mq_qualinf=NEW.mq_qualinf,
			mq_comment=NEW.mq_comment,
			mq_creadat=NEW.mq_creadat,
			mq_majdate=NEW.mq_majdate,
			mq_majsrc=NEW.mq_majsrc,
			mq_abddate=NEW.mq_abddate,
			mq_abdsrc=NEW.mq_abdsrc
		WHERE mq_id=OLD.mq_id
		;
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		/*INVERSER ?*/
		DELETE FROM t_masque WHERE mq_id=OLD.mq_id;
		DELETE FROM t_noeud WHERE nd_code=OLD.nd_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_mq_nd
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_mq_nd FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_mq_nd();
	  

/*vs_elem_lv_nd*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_lv_nd ON vs_elem_lv_nd CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_lv_nd() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_lv_nd()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_noeud VALUES(
			NEW.nd_code,
			NEW.nd_codeext,
			NEW.nd_nom,
			NEW.nd_coderat,
			NEW.nd_r1_code,
			NEW.nd_r2_code,
			NEW.nd_r3_code,
			NEW.nd_r4_code,
			NEW.nd_voie,
			NEW.nd_type,
			NEW.nd_type_ep,
			NEW.nd_comment,
			NEW.nd_dtclass,
			NEW.nd_geolqlt,
			NEW.nd_geolmod,
			NEW.nd_geolsrc,
			NEW.nd_creadat,
			NEW.nd_majdate,
			NEW.nd_majsrc,
			NEW.nd_abddate,
			NEW.nd_abdsrc,
			NEW.geom
			);
        INSERT INTO  t_love VALUES(
			NEW.lv_id,
			NEW.lv_cb_code,
			NEW.lv_nd_code,
			NEW.lv_long,
			NEW.lv_creadat,
			NEW.lv_majdate,
			NEW.lv_majsrc,
			NEW.lv_abddate,
			NEW.lv_abdsrc
			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_noeud SET 
			nd_code=NEW.nd_code,
			nd_codeext=NEW.nd_codeext,
			nd_nom=NEW.nd_nom,
			nd_coderat=NEW.nd_coderat,
			nd_r1_code=NEW.nd_r1_code,
			nd_r2_code=NEW.nd_r2_code,
			nd_r3_code=NEW.nd_r3_code,
			nd_r4_code=NEW.nd_r4_code,
			nd_voie=NEW.nd_voie,
			nd_type=NEW.nd_type,
			nd_type_ep=NEW.nd_type_ep,
			nd_comment=NEW.nd_comment,
			nd_dtclass=NEW.nd_dtclass,
			nd_geolqlt=NEW.nd_geolqlt,
			nd_geolmod=NEW.nd_geolmod,
			nd_geolsrc=NEW.nd_geolsrc,
			nd_creadat=NEW.nd_creadat,
			nd_majdate=NEW.nd_majdate,
			nd_majsrc=NEW.nd_majsrc,
			nd_abddate=NEW.nd_abddate,
			nd_abdsrc=NEW.nd_abdsrc,
			geom=NEW.geom			
		WHERE nd_code=OLD.nd_code
		;
		UPDATE t_love SET 
			lv_id=NEW.lv_id,
			lv_cb_code=NEW.lv_cb_code,
			lv_nd_code=NEW.lv_nd_code,
			lv_long=NEW.lv_long,
			lv_creadat=NEW.lv_creadat,
			lv_majdate=NEW.lv_majdate,
			lv_majsrc=NEW.lv_majsrc,
			lv_abddate=NEW.lv_abddate,
			lv_abdsrc=NEW.lv_abdsrc
		WHERE lv_id=OLD.lv_id
		;
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		/*INVERSER ?*/
		DELETE FROM t_love WHERE lv_id=OLD.lv_id;
		DELETE FROM t_noeud WHERE nd_code=OLD.nd_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_lv_nd
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_lv_nd FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_lv_nd();
	  

/*vs_elem_cd_dm_cm*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_cd_dm_cm ON vs_elem_cd_dm_cm CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_cd_dm_cm() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_cd_dm_cm()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO t_cheminement VALUES(
			NEW.cm_code,
			NEW.cm_codeext,
			NEW.cm_ndcode1,
			NEW.cm_ndcode2,
			NEW.cm_cm1,
			NEW.cm_cm2,
			NEW.cm_r1_code,
			NEW.cm_r2_code,
			NEW.cm_r3_code,
			NEW.cm_r4_code,
			NEW.cm_voie,
			NEW.cm_gest_do,
			NEW.cm_prop_do,
			NEW.cm_statut,
			NEW.cm_etat,
			NEW.cm_datcons,
			NEW.cm_datemes,
			NEW.cm_avct,
			NEW.cm_typelog,
			NEW.cm_typ_imp,
			NEW.cm_nature,
			NEW.cm_compo,
			NEW.cm_cddispo,
			NEW.cm_fo_util,
			NEW.cm_mod_pos,
			NEW.cm_passage,
			NEW.cm_revet,
			NEW.cm_remblai,
			NEW.cm_charge,
			NEW.cm_larg,
			NEW.cm_fildtec,
			NEW.cm_mut_org,
			NEW.cm_long,
			NEW.cm_lgreel,
			NEW.cm_comment,
			NEW.cm_dtclass,
			NEW.cm_geolqlt,
			NEW.cm_geolmod,
			NEW.cm_geolsrc,
			NEW.cm_creadat,
			NEW.cm_majdate,
			NEW.cm_majsrc,
			NEW.cm_abddate,
			NEW.cm_abdsrc,
			NEW.geom			);
        INSERT INTO t_conduite VALUES(
			NEW.cd_code,
			NEW.cd_codeext,
			NEW.cd_etiquet,
			NEW.cd_cd_code,
			NEW.cd_r1_code,
			NEW.cd_r2_code,
			NEW.cd_r3_code,
			NEW.cd_r4_code,
			NEW.cd_prop,
			NEW.cd_gest,
			NEW.cd_user,
			NEW.cd_proptyp,
			NEW.cd_statut,
			NEW.cd_etat,
			NEW.cd_dateaig,
			NEW.cd_dateman,
			NEW.cd_datemes,
			NEW.cd_avct,
			NEW.cd_type,
			NEW.cd_dia_int,
			NEW.cd_dia_ext,
			NEW.cd_color,
			NEW.cd_long,
			NEW.cd_nbcable,
			NEW.cd_occup,
			NEW.cd_comment,
			NEW.cd_creadat,
			NEW.cd_majdate,
			NEW.cd_majsrc,
			NEW.cd_abddate,
			NEW.cd_abdsrc
			);
        INSERT INTO t_cond_chem VALUES(
			NEW.dm_cd_code,
			NEW.dm_cm_code,
			NEW.dm_creadat,
			NEW.dm_majdate,
			NEW.dm_majsrc,
			NEW.dm_abddate,
			NEW.dm_abdsrc
			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_cheminement SET 
			cm_code=NEW.cm_code,
			cm_codeext=NEW.cm_codeext,
			cm_ndcode1=NEW.cm_ndcode1,
			cm_ndcode2=NEW.cm_ndcode2,
			cm_cm1=NEW.cm_cm1,
			cm_cm2=NEW.cm_cm2,
			cm_r1_code=NEW.cm_r1_code,
			cm_r2_code=NEW.cm_r2_code,
			cm_r3_code=NEW.cm_r3_code,
			cm_r4_code=NEW.cm_r4_code,
			cm_voie=NEW.cm_voie,
			cm_gest_do=NEW.cm_gest_do,
			cm_prop_do=NEW.cm_prop_do,
			cm_statut=NEW.cm_statut,
			cm_etat=NEW.cm_etat,
			cm_datcons=NEW.cm_datcons,
			cm_datemes=NEW.cm_datemes,
			cm_avct=NEW.cm_avct,
			cm_typelog=NEW.cm_typelog,
			cm_typ_imp=NEW.cm_typ_imp,
			cm_nature=NEW.cm_nature,
			cm_compo=NEW.cm_compo,
			cm_cddispo=NEW.cm_cddispo,
			cm_fo_util=NEW.cm_fo_util,
			cm_mod_pos=NEW.cm_mod_pos,
			cm_passage=NEW.cm_passage,
			cm_revet=NEW.cm_revet,
			cm_remblai=NEW.cm_remblai,
			cm_charge=NEW.cm_charge,
			cm_larg=NEW.cm_larg,
			cm_fildtec=NEW.cm_fildtec,
			cm_mut_org=NEW.cm_mut_org,
			cm_long=NEW.cm_long,
			cm_lgreel=NEW.cm_lgreel,
			cm_comment=NEW.cm_comment,
			cm_dtclass=NEW.cm_dtclass,
			cm_geolqlt=NEW.cm_geolqlt,
			cm_geolmod=NEW.cm_geolmod,
			cm_geolsrc=NEW.cm_geolsrc,
			cm_creadat=NEW.cm_creadat,
			cm_majdate=NEW.cm_majdate,
			cm_majsrc=NEW.cm_majsrc,
			cm_abddate=NEW.cm_abddate,
			cm_abdsrc=NEW.cm_abdsrc,
			geom=NEW.geom
		WHERE cm_code=OLD.cm_code
		;
		UPDATE t_conduite SET 
			cd_code=NEW.cd_code,
			cd_codeext=NEW.cd_codeext,
			cd_etiquet=NEW.cd_etiquet,
			cd_cd_code=NEW.cd_cd_code,
			cd_r1_code=NEW.cd_r1_code,
			cd_r2_code=NEW.cd_r2_code,
			cd_r3_code=NEW.cd_r3_code,
			cd_r4_code=NEW.cd_r4_code,
			cd_prop=NEW.cd_prop,
			cd_gest=NEW.cd_gest,
			cd_user=NEW.cd_user,
			cd_proptyp=NEW.cd_proptyp,
			cd_statut=NEW.cd_statut,
			cd_etat=NEW.cd_etat,
			cd_dateaig=NEW.cd_dateaig,
			cd_dateman=NEW.cd_dateman,
			cd_datemes=NEW.cd_datemes,
			cd_avct=NEW.cd_avct,
			cd_type=NEW.cd_type,
			cd_dia_int=NEW.cd_dia_int,
			cd_dia_ext=NEW.cd_dia_ext,
			cd_color=NEW.cd_color,
			cd_long=NEW.cd_long,
			cd_nbcable=NEW.cd_nbcable,
			cd_occup=NEW.cd_occup,
			cd_comment=NEW.cd_comment,
			cd_creadat=NEW.cd_creadat,
			cd_majdate=NEW.cd_majdate,
			cd_majsrc=NEW.cd_majsrc,
			cd_abddate=NEW.cd_abddate,
			cd_abdsrc=NEW.cd_abdsrc
		WHERE cd_code=OLD.cd_code	
		;
		UPDATE t_cond_chem SET 
			dm_cd_code=NEW.dm_cd_code,
			dm_cm_code=NEW.dm_cm_code,
			dm_creadat=NEW.dm_creadat,
			dm_majdate=NEW.dm_majdate,
			dm_majsrc=NEW.dm_majsrc,
			dm_abddate=NEW.dm_abddate,
			dm_abdsrc=NEW.dm_abdsrc
		WHERE dm_cd_code=OLD.dm_cd_code AND dm_cm_code=OLD.dm_cm_code	
		;
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		DELETE FROM t_cond_chem WHERE dm_cd_code=OLD.dm_cd_code AND dm_cm_code=OLD.dm_cm_code;
		DELETE FROM t_conduite WHERE cd_code=OLD.cd_code;
		DELETE FROM t_cheminement WHERE cm_code=OLD.cm_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_cd_dm_cm
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_cd_dm_cm FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_cd_dm_cm();
	  
 
/* Empreintes de documents (vs_elem_do_em)*/
/*vs_elem_do_em*/
DROP TRIGGER IF EXISTS tg_edit_vs_elem_do_em ON vs_elem_do_em CASCADE;
DROP FUNCTION IF EXISTS fn_edit_vs_elem_do_em() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_vs_elem_do_em()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_document VALUES(
			NEW.do_code,
			NEW.do_ref,
			NEW.do_reftier,
			NEW.do_r1_code,
			NEW.do_r2_code,
			NEW.do_r3_code,
			NEW.do_r4_code,
			NEW.do_type,
			NEW.do_indice,
			NEW.do_date,
			NEW.do_classe,
			NEW.do_url1,
			NEW.do_url2,
			NEW.do_comment,
			NEW.do_creadat,
			NEW.do_majdate,
			NEW.do_majsrc,
			NEW.do_abddate,
			NEW.do_abdsrc
			);
        INSERT INTO  t_empreinte VALUES(
			NEW.em_code,
			NEW.em_do_code,
			NEW.em_geolsrc,
			NEW.em_creadat,
			NEW.em_majdate,
			NEW.em_majsrc,
			NEW.em_abddate,
			NEW.em_abdsrc,
			NEW.geom
			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_document SET 
			do_code=NEW.do_code,
			do_ref=NEW.do_ref,
			do_reftier=NEW.do_reftier,
			do_r1_code=NEW.do_r1_code,
			do_r2_code=NEW.do_r2_code,
			do_r3_code=NEW.do_r3_code,
			do_r4_code=NEW.do_r4_code,
			do_type=NEW.do_type,
			do_indice=NEW.do_indice,
			do_date=NEW.do_date,
			do_classe=NEW.do_classe,
			do_url1=NEW.do_url1,
			do_url2=NEW.do_url2,
			do_comment=NEW.do_comment,
			do_creadat=NEW.do_creadat,
			do_majdate=NEW.do_majdate,
			do_majsrc=NEW.do_majsrc,
			do_abddate=NEW.do_abddate,
			do_abdsrc=NEW.do_abdsrc
		WHERE do_code=OLD.do_code
		;
		UPDATE t_empreinte SET 
			em_code=NEW.em_code,
			em_do_code=NEW.em_do_code,
			em_geolsrc=NEW.em_geolsrc,
			em_creadat=NEW.em_creadat,
			em_majdate=NEW.em_majdate,
			em_majsrc=NEW.em_majsrc,
			em_abddate=NEW.em_abddate,
			em_abdsrc=NEW.em_abdsrc,
			geom=NEW.geom	
		WHERE em_code=OLD.em_code
		;
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		/*INVERSER ?*/
		DELETE FROM t_empreinte WHERE em_code=OLD.em_code;
		DELETE FROM t_document WHERE do_code=OLD.do_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_vs_elem_do_em
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      vs_elem_do_em FOR EACH ROW EXECUTE PROCEDURE fn_edit_vs_elem_do_em();

	  
/* Relations documents-objets (v_elem_od_do) */
DROP TRIGGER IF EXISTS tg_edit_v_elem_od_do ON v_elem_od_do CASCADE;
DROP FUNCTION IF EXISTS fn_edit_v_elem_od_do() CASCADE;

CREATE OR REPLACE FUNCTION fn_edit_v_elem_od_do()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'INSERT' THEN
        INSERT INTO  t_document VALUES(
			NEW.do_code,
			NEW.do_ref,
			NEW.do_reftier,
			NEW.do_r1_code,
			NEW.do_r2_code,
			NEW.do_r3_code,
			NEW.do_r4_code,
			NEW.do_type,
			NEW.do_indice,
			NEW.do_date,
			NEW.do_classe,
			NEW.do_url1,
			NEW.do_url2,
			NEW.do_comment,
			NEW.do_creadat,
			NEW.do_majdate,
			NEW.do_majsrc,
			NEW.do_abddate,
			NEW.do_abdsrc
			);
		INSERT INTO  t_docobj VALUES(
			NEW.od_id,
			NEW.od_do_code,
			NEW.od_tbltype,
			NEW.od_codeobj,
			NEW.od_creadat,
			NEW.od_majdate,
			NEW.od_majsrc,
			NEW.od_abddate,
			NEW.od_abdsrc
			);
        RETURN NEW;
      ELSIF TG_OP = 'UPDATE' THEN
		UPDATE t_document SET 
			do_code=NEW.do_code,
			do_ref=NEW.do_ref,
			do_reftier=NEW.do_reftier,
			do_r1_code=NEW.do_r1_code,
			do_r2_code=NEW.do_r2_code,
			do_r3_code=NEW.do_r3_code,
			do_r4_code=NEW.do_r4_code,
			do_type=NEW.do_type,
			do_indice=NEW.do_indice,
			do_date=NEW.do_date,
			do_classe=NEW.do_classe,
			do_url1=NEW.do_url1,
			do_url2=NEW.do_url2,
			do_comment=NEW.do_comment,
			do_creadat=NEW.do_creadat,
			do_majdate=NEW.do_majdate,
			do_majsrc=NEW.do_majsrc,
			do_abddate=NEW.do_abddate,
			do_abdsrc=NEW.do_abdsrc
		WHERE do_code=OLD.do_code
		;
		UPDATE t_docobj SET 
			od_id=NEW.od_id,
			od_do_code=NEW.od_do_code,
			od_tbltype=NEW.od_tbltype,
			od_codeobj=NEW.od_codeobj,
			od_creadat=NEW.od_creadat,
			od_majdate=NEW.od_majdate,
			od_majsrc=NEW.od_majsrc,
			od_abddate=NEW.od_abddate,
			od_abdsrc=NEW.od_abdsrc
		WHERE od_code=OLD.od_code
		;
		RETURN NEW;
      ELSIF TG_OP = 'DELETE' THEN
		/*INVERSER ?*/
		DELETE FROM t_docobj WHERE od_code=OLD.od_code;
		DELETE FROM t_document WHERE do_code=OLD.do_code;
       RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE TRIGGER tg_edit_v_elem_od_do
    INSTEAD OF INSERT OR UPDATE OR DELETE ON
      v_elem_od_do FOR EACH ROW EXECUTE PROCEDURE fn_edit_v_elem_od_do();
	  

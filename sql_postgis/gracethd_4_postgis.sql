/*GraceTHD*/
/*specifique au SGBD*/
/*PostGIS*/

SET search_path TO gracethd, public;

CREATE INDEX t_adresse_geom_gist ON t_adresse USING GIST (geom); 
CREATE INDEX t_noeud_geom_gist ON t_noeud USING GIST (geom); 
CREATE INDEX t_cheminement_geom_gist ON t_cheminement USING GIST (geom); 
CREATE INDEX t_cableline_geom_gist ON t_cableline USING GIST (geom); 
CREATE INDEX t_znro_geom_gist ON t_znro USING GIST (geom); 
CREATE INDEX t_zsro_geom_gist ON t_zsro USING GIST (geom); 
CREATE INDEX t_zpbo_geom_gist ON t_zpbo USING GIST (geom); 
CREATE INDEX t_zdep_geom_gist ON t_zdep USING GIST (geom); 
CREATE INDEX t_zcoax_geom_gist ON t_zcoax USING GIST (geom); 
CREATE INDEX t_empreinte_geom_gist ON t_empreinte USING GIST (geom); 

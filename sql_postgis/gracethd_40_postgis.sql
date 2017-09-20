/*GraceTHD-MCD v2.0.1*/
/*specifique au SGBD*/
/* gracethd_40_postgis.sql */
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

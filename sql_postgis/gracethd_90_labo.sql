/*GraceTHD-MCD v2.0.1*/
/*Labo : des exemples de compléments optionnels*/
/* gracethd_90_labo.sql */
/*Postgis*/

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

/*NOTE : Un bloc de code SQL diffusé ici pour test est commenté. Décommenter le bloc souhaité pour tester. */ 


/*###################### LABO ##################################*/

/*Exemple : un prototype de table d'emprises (polygons) qui peuvent être mises en relation avec un noeud afin de stocker par exemple l'emprise d'une chambre ou d'un site par exemple*/
/*
CREATE TABLE t_emprise(
	es_code VARCHAR(254) PRIMARY KEY, 
	es_codeext VARCHAR(254),
	es_nd_code VARCHAR(254) REFERENCES t_noeud(nd_code), 
		--besoin d'une table de relation, une emprise peut servir pour plusieurs noeuds. 
		--voir l'intérêt de pointer les st, pt, sf, se, plutôt que nd. 
	es_typephy VARCHAR(254), --Besoin de développer une liste
	es_osmcode VARCHAR(254), --Possibilité de référencer le code OSM si correspondance faite. 	es_rgecode VARCHAR(254), --Possibilité de référencer le code IGN si correspondance faite avec le RGE. 
		--voir pb du type (faire une correspondance avec es_typephy ?)
	es_pcicode VARCHAR(254), --Possibilité de référencer le code OSM si correspondance faite. 
		--voir pb du type (faire une correspondance avec es_typephy ?)
	es_cadcode VARCHAR(254), --Possibilité de référencer le code DAO (AutoCAD) si correspondance faite. 
	es_pcrscod VARCHAR(254), --Possibilité de référencer le code PCRS (AutoCAD) si correspondance faite. Attention, PCRS pas du tout étudié. 
		--Nécessite une table polygones qui référence tous les polygones de tous les dwg et dxf.
	es_comment VARCHAR(254)   ,
	es_dtclass VARCHAR(2)   REFERENCES l_geoloc_classe(code),
	es_geolqlt NUMERIC(6,2)   ,
	es_geolmod VARCHAR(4)   REFERENCES l_geoloc_mode(code),
	es_geolsrc VARCHAR(254)   ,
	es_creadat TIMESTAMP   ,
	es_majdate TIMESTAMP   ,
	es_majsrc VARCHAR(254)   ,
	es_abddate DATE   ,
	es_abdsrc VARCHAR(254)   ,
	geom geometry(MultiPolygon,2154)   ,
	CONSTRAINT "t_noeud_emprise_pk" PRIMARY KEY (es_code)
);
*/


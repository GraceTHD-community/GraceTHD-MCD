/*GraceTHD-MCD v2.0.1*/
/*Patch 2.0.1 : des tables optionnnelles comblant des lacunes de GraceTHD-MCD v2.0.0. Les attributs de ces tables intégreront très probablement les tables de la v2.1.0. */
/* gracethd_91_patchs.sql */
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

SET search_path TO gracethd, public;

/*###################### PATCHS 2.0.1 ##################################*/

/*Patch de la version 2.0 pour les câbles*/

CREATE TABLE t_cable_patch201(
	cb_code VARCHAR(254) NOT NULL REFERENCES t_cable(cb_code),
	--cb_nd1 VARCHAR(254) REFERENCES t_noeud(nd_code), --EXISTANT v2.0
	--cb_ex1 VARCHAR (254), --Code câble + suffixe (ex : CB000000000001-EX1)
	cb_bp1 VARCHAR(254) REFERENCES t_ebp(bp_code), 
	cb_ba1 VARCHAR(254) REFERENCES t_baie(ba_code), --En cas d'éclatement sur plusieurs baies, saisir la baie principale
	--cb_ex2 VARCHAR (254), --Code câble + suffixe (ex : CB000000000001-EX2)
	--cb_nd2 VARCHAR(254) REFERENCES t_noeud(nd_code), --EXISTANT v2.0
	cb_bp2 VARCHAR(254) REFERENCES t_ebp(bp_code), 
	cb_ba2 VARCHAR(254) REFERENCES t_baie(ba_code), --En cas d'éclatement sur plusieurs baies, saisir la baie principale
	CONSTRAINT "t_cable_patch201_pk" PRIMARY KEY (cb_code)
);

/*Patch de la version 2.0 pour les zones arrières de PBO*/

CREATE TABLE t_zpbo_patch201(
	zp_code VARCHAR(254) NOT NULL REFERENCES t_zpbo(zp_code),
	zp_bp_code VARCHAR (254) REFERENCES t_ebp(bp_code), --ajout prévision 2.1
	CONSTRAINT "t_zpbo_patch201_pk" PRIMARY KEY (zp_code)
);

/*Patch de la version 2.0 pour les cassettes*/

CREATE TABLE t_cassette_patch201(
	cs_code VARCHAR(254) NOT NULL REFERENCES t_cassette(cs_code),
	cs_ti_code VARCHAR(254) REFERENCES t_tiroir(ti_code),
	CONSTRAINT "t_cassette_patch201_pk" PRIMARY KEY (cs_code)
);

/*Patch de la version 2.0 pour les locaux techniques*/

CREATE TABLE t_ltech_patch201(
	lt_code VARCHAR(254) NOT NULL REFERENCES t_ltech(lt_code),
	lt_bat VARCHAR(100), --Bâtiment (NULL si adresse = bâtiment)
	lt_escal VARCHAR (20), --Escalier (NULL si adresse = entrée)
	lt_etage VARCHAR (20), --Etage du local
	CONSTRAINT "t_ltech_patch201_pk" PRIMARY KEY (lt_code)
);

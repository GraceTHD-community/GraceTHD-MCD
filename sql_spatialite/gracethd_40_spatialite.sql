/*GraceTHD-MCD v2.0.1*/
/*specifique au SGBD*/
/* gracethd_40_spatialite.sql */
/*Spatialite*/

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


SELECT AddGeometryColumn('t_cheminement','geom',2154,'LINESTRING','XY',1);
SELECT AddGeometryColumn('t_cableline','geom',2154,'LINESTRING','XY',1);
SELECT AddGeometryColumn('t_noeud','geom',2154,'POINT','XY',1);
SELECT AddGeometryColumn('t_adresse','geom',2154,'POINT','XY',1);
SELECT AddGeometryColumn('t_znro','geom',2154,'MULTIPOLYGON','XY');
SELECT AddGeometryColumn('t_zsro','geom',2154,'MULTIPOLYGON','XY');
SELECT AddGeometryColumn('t_zpbo','geom',2154,'MULTIPOLYGON','XY');
SELECT AddGeometryColumn('t_zdep','geom',2154,'MULTIPOLYGON','XY');
SELECT AddGeometryColumn('t_zcoax','geom',2154,'MULTIPOLYGON','XY');
SELECT AddGeometryColumn('t_empreinte','geom',2154,'MULTIPOLYGON','XY');


SELECT CreateSpatialIndex('t_cheminement', 'geom');
SELECT CreateSpatialIndex('t_cableline', 'geom');
SELECT CreateSpatialIndex('t_noeud', 'geom');
SELECT CreateSpatialIndex('t_adresse', 'geom');
SELECT CreateSpatialIndex('t_znro', 'geom');
SELECT CreateSpatialIndex('t_zsro', 'geom');
SELECT CreateSpatialIndex('t_zpbo', 'geom');
SELECT CreateSpatialIndex('t_zdep', 'geom');
SELECT CreateSpatialIndex('t_zcoax', 'geom');
SELECT CreateSpatialIndex('t_empreinte', 'geom');

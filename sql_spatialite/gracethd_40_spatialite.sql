/*GraceTHD-MCD*/
/*specifique au SGBD*/
/*Spatialite*/

SELECT AddGeometryColumn('t_cheminement','geom',2154,'LINESTRING','XY');
SELECT AddGeometryColumn('t_cableline','geom',2154,'LINESTRING','XY');
SELECT AddGeometryColumn('t_noeud','geom',2154,'POINT','XY');
SELECT AddGeometryColumn('t_adresse','geom',2154,'POINT','XY');
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

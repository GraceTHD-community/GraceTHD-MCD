SELECT AddGeometryColumn('t_tranchee','geom',2154,'LINESTRING','XY');
SELECT AddGeometryColumn('t_artere','geom',2154,'LINESTRING','XY');
SELECT AddGeometryColumn('t_cable','geom',2154,'LINESTRING','XY');
SELECT AddGeometryColumn('t_noeud','geom',2154,'POINT','XY');
SELECT AddGeometryColumn('t_zone','geom',2154,'MULTIPOLYGON','XY');


SELECT CreateSpatialIndex('t_tranchee', 'geom');
SELECT CreateSpatialIndex('t_artere', 'geom');
SELECT CreateSpatialIndex('t_cable', 'geom');
SELECT CreateSpatialIndex('t_noeud', 'geom');
SELECT CreateSpatialIndex('t_zone', 'geom');


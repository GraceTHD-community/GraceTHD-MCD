SELECT AddGeometryColumn('TRANCHEE','GEOM',2154,'LINESTRING','XY'); 
SELECT AddGeometryColumn('ARTERE','GEOM',2154,'LINESTRING','XY'); 
SELECT AddGeometryColumn('CABLE','GEOM',2154,'LINESTRING','XY'); 
SELECT AddGeometryColumn('NOEUD','GEOM',2154,'POINT','XY'); 
SELECT AddGeometryColumn('ZONEDESSERTE','GEOM',2154,'MULTIPOLYGON','XY'); 

SELECT CreateSpatialIndex('TRANCHEE', 'GEOM');
SELECT CreateSpatialIndex('ARTERE', 'GEOM');
SELECT CreateSpatialIndex('CABLE', 'GEOM');
SELECT CreateSpatialIndex('NOEUD', 'GEOM');
SELECT CreateSpatialIndex('ZONEDESSERTE', 'GEOM');


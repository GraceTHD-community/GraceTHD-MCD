/*GraceTHD - Disponible pour integrer des specificites*/

/*Possibilité d'ajouter du SQL dans ce script pour :
- étendre les tables existantes avec des attributs supplémentaires
- créer des tables supplémentaires
- créer des indexes supplémentaires
- créer des vues
*/

/*Exemple : une table d'emprises (polygons) qui peut être mise en relation avec un noeud et qui permet de stocker l'emprise d'une chambre ou d'un site par exemple*/
/*
CREATE TABLE t_noeud_emprise(
	ne_id INTEGER PRIMARY KEY, 
	ne_nd_code VARCHAR(254) REFERENCES t_noeud(nd_code),
	ne_type, 
	--geom geometry(MultiPolygon,2154)   ,
	CONSTRAINT "t_noeud_emprise_PK" PRIMARY KEY (ne_id)
);
--Spatialite
SELECT AddGeometryColumn('t_noeud_emprise','geom',2154,'MULTIPOLYGON','XY');
SELECT CreateSpatialIndex('t_noeud_emprise', 'geom');
*/


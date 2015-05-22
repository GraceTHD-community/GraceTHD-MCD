/*Possibilité d'ajouter du SQL dans ce script pour :
- étendre les tables existantes avec des attributs supplémentaires
- créer des tables supplémentaires
- créer des indexes supplémentaires
- créer des vues
*/

/*Exemple : une table d'emprises (polygons) qui peut être mise en relation avec un noeud
CREATE TABLE t_noeud_emprise(
	ne_id INTEGER PRIMARY KEY, 
	ne_nd_code VARCHAR(254),
	ne_type, 
	CONSTRAINT "t_noeud_emprise_PK" PRIMARY KEY (ne_id)
);

SELECT AddGeometryColumn('t_noeud_emprise','geom',2154,'MULTIPOLYGON','XY');
SELECT CreateSpatialIndex('t_noeud_emprise', 'geom');

*/
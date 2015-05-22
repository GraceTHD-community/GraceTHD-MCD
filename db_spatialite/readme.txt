LA BASE DE DONNEES SPATIALITE : gracethd_v2_*.sqlite
- Inutile pour un utilisateur de chercher à ouvrir ce fichier autrement qu'avec son outil SIG (QGIS par exemple). 
- Un administrateur (maîtrise du SQL) peut utiliser par exemple : 
	- les outils de l'éditeur : http://www.gaia-gis.it/gaia-sins/
	- Sous QGIS : DB manager ou le plugin QSpatialite. 


EXPLOITER LA BASE AVEC LES FICHIERS FOURNIS
Projet QGIS (v2.8) : gracethd.qgs 
- Permet à un utilisateur non initié à QGIS d'ouvrir directement un projet avec les couches et les tables connectées. 

Alternative avec les fichiers de couches QGIS (.qlr depuis QGIS 2.4)
- Ces fichiers permettent de charger directement ces 2 groupes de couches dans un projet QGIS. Chemin relatif. 

	
EXPLOITER LA BASE EN SE CONNECTANT MANUELLEMENT SUR UNE BASE SPATIALITE
- "Couche"/"Ajouter une couche"/"Ajouter une couche spatialite" (raccourci CTRL+MAJ+L). 
- La première fois définir la connexion : "Nouveau" - aller chercher le fichier *.sqlite
- Sinon "Connecter"
- Pour voir les tables non spatiales (sans géométries) cocher "lister les tables sans géométries". 
	- Les noms des tables du modèle de données GraceTHD commencent par t_ et les listes par l_, le reste ce sont des tables système propres à Spatialite, inutile de les connecter. 
- Sélectionner la ou les tables, puis "Ajouter". 




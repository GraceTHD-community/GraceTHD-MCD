# GraceTHD-MCD

GraceTHD-MCD est un modèle de données relationnel destiné à échanger des modèles numériques de réseaux de télécommunications. 
La plateforme de gestion du projet GraceTHD : [http://redmine.gracethd.org](http://redmine.gracethd.org)

GraceTHD-MCD est un des projets maintenus par [GraceTHD-community](https://github.com/GraceTHD-community)
* [GraceTHD-MOD](http://gracethd-community.github.io/GraceTHD-MOD/) : Un modèle d'organisation des documents techniques et administratifs est disponible en complément. Préconise également des règles de nommage des objets adaptés au modèle de données GraceTHD-MCD. 
* [GraceTHD-Demo](http://gracethd-community.github.io/GraceTHD-Demo/) : Un dépôt dédié à des projets de démonstrations est également disponible. 

GraceTHD-MCD est le modèle de données validé par la Covadis comme [Geostandard Aménagement Numérique des Territoires v2](http://www.geoinformations.developpement-durable.gouv.fr/standard-covadis-amenagement-numerique-des-a3300.html). 

### Contexte
De nombreux réseaux télécoms de très hauts débit sont déployés actuellement en France, en mobilisant des acteurs publics et privés, avec pour objectif de garantir la couverture intégrale du territoire. Afin d'assurer la meilleure utilisation des réseaux, l'homogénéisation et l'industrialisation des déploiements est un enjeu majeur.

Dans ce cadre, les travaux initiés par le projet GraceTHD visent à l'interopérabilité des Systèmes d'Informations Géographiques (SIG) mis en place pour chaque réseau d'initiative publique.

### Caractéristiques de la v2
GraceTHD-MCD v2 est une importante refonte du Geostandard ANT v1 complétée d'éléments du modèle de données du Syane notamment pour la partie optique, ainsi qu'un rapprochement d'autres modèles de données de référence comme par exemple le Groupe Interop Fibre ou la BAN de sortes à simplifier les échanges avec ces modèles de données. 

Quelques exemples de différences avec la version 1 : 
* Nombreuses évolutions pour répondre aux nouveaux usages. 
* Synthèse des 2 grands projets open source issus des collectivités : Grace et Syane. 
* Uniformation du nommage des tables et attributs (moins de 10 caractères pour compatibilité shapefiles, chaque nom unique). 
* Uniformation de l'ordre des attributs pour proposer une logique cohérente entre les tables. 
* Recentrage sur le besoin d'échange. 
* Métadonnées et cycle de vie des objets uniformisés, améliorés, simplifiés : 
	* Suivi des créations, modifications, abandons. 
	* Qualité de géolocalisation simple et cohérente. Gestion des référencements. 
* Un seul modèle compréhensible et exploitable sans application dédiée, portable sur n’importe quel SGBD spatial ISO SQL et conforme SFSQL. Mode fichier et client/serveur. 

### Contenu
* changelog.txt : historique des modifications
* roadmap.txt : feuille de route
* \db_shpcsv\ : base (shapefiles + CSV + csv des listes de valeurs) vierge et conforme au modèle de données + un projet QGIS 2.8. 
* \db_spatialite\ : une base de données Spatialite vierge et conforme au modèle de données. 
* \mcd_doc\ : documentation du modèle de données. Un schéma très simplifié du MCD (gracethd-mcd-vxxxx_schema_vxx.png), le MCD "lisible" (gracethd-mcd-vxxxxxx_doc_vxx.ods), le Modèle Logique de Données (gracethd-mld-vxxxxx.png), sans organisation des tables à ce stade. 
* \sources\gracethd-mcd-xxxxx.ods : fichier de développement
* \sql_postgis\ : les scripts pour créer les tables dans un schéma de base de données sous PostGIS 2.x
* \sql_spatialite\ : les scripts pour créer les tables dans un schéma de base de données sous Spatialite. 

### Utilisation
**GraceTHD est un modèle de données DEDIE EN PRIORITE A L'ECHANGE** ! Ce modèle n'est pas conçu comme un modèle de production de données ou d'exploitation d'un réseau. Toutefois il se veut être un modèle de données répondant permettant la gestion patrimoniale d'un réseau de télécommunications. L'écosystème autour de ce modèle de données se batira à partir des initiatives des différents acteurs (éditeurs de progiciels, opérateurs, constructeurs, collectivités, ... ). 

Le format d'échange préconisé par le Geostandard ANT v2.0 est shapefile et csv pour leur grande intéropérabilité. C'est une préconisation. Deux parties peuvent s'entendre pour échanger sous divers formats (comme des dumps SQL de base à base) tout en respectant le modèle de données. 

* **Collectivités** : 
Le modèle seul n'est pas suffisant. Des outils d'intégration, de contrôle, d'analyse, de traitement et de publication des données doivent être développés. Vous pouvez vous tenir au courant des projets planifiés auprès de l'AVICCA et du groupe de discussion. Voir le projet GraceTHD-MOD qui vous fournit des préconisations complémentaires. 

* **Producteurs de données** : 
Des outils d'édition adaptés à vos plateformes doivent être mis en place. GraceTHD EST UN MODELE DE DONNEES DEDIE A L'ECHANGE, il n'est pas conçu en l'état pour la production. 

* **Editeurs de progiciels** : 
Toute la documentation est disponible et les consultations ont été réalisées pour permettre de sensibiliser et remonter les points de blocage majeurs. De la même manière que plusieurs éditeurs ont produit des solutions pour convertir des données de leur solution vers Grace v1, les consultations ont remonté le besoin des éditeurs pour un format d'échange, et l'intention générale de produire des solutions d'import/export GraceTHD. 

Toute contribution au modèle est la bienvenue et encouragée. 

### Projets relatifs à GraceTHD
* **Gracelite** : 
Projet open source en cours de développement. Il s'agit d'une boite à outils destinée dans un premier temps à garantir les imports / exports Spatialite et SHP/CSV. Ceci permet de profiter en mode local d'une base de données SQL. Les imports permettront notamment de faire office d'un premier niveau de contrôle de conformité générale de la structure des shapefiles / CSV. Des exemples de scripts d'import/export PostGIS sont également disponibles. 

* **Outil de contrôle** : 
La création d'un outil de contrôle à destination des collectivités est prévue. 

### Support or Contact
Une plateforme de gestion de projet [Redmine](http://redmine.gracethd.org) destinée à remonter les demandes d'évolutions, les anomalies et les demandes d'assistance est disponible. 

### Contributeurs
Comité de pilotage : Avicca - L'Agence du Numérique - Caisse des dépôts - Région Alsace - Région Aquitaine - Syane - Mégalis Bretagne - Manche Numérique - La Fibre 59/62 - Gironde Numérique - Touraine Cher Numérique - Oise THD. De nouvelles collectivités rejoignent actuellement le comité de pilotage. 

Groupement d'entreprises : DOTIC - CADaGEO - Aleno - Cochr@n.

Comité consultatif : Aleno, Altitude Infrastructure, Ambition télécoms, Ardèche Drôme Numérique, Axione, CADaGEO, Circet, Covadis/Cerema, Covage, Dotic, Eiffage, Esri France, GISmartsware, Groupe Interop Fibre, Isère, Mégalis Bretagne, Oise THD, Orange, Région Alsace, SFR Collectivités, SPIE, Syane, Tutor. 

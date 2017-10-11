# GraceTHD-MCD

### Présentation
GraceTHD-MCD est un modèle de données relationnel standardisé destiné à échanger des modèles numériques de réseaux de télécommunications et à la gestion patrimoniale de ces réseaux. 
GraceTHD-MCD est un des projets open source composant GraceTHD maintenus par [GraceTHD-community](https://github.com/GraceTHD-community)

**Présentation de GraceTHD par l'Avicca** :  
http://gracethd.org

**[Téléchargement GraceTHD-MCD (version actuelle)](https://github.com/GraceTHD-community/GraceTHD-MCD/zipball/master)** : bouton "download zip" sur la page Github du projet.  
http://gracethd-community.github.io/GraceTHD-MCD/
* Pour télécharger l'ensemble des projets constituant GraceTHD, inclus GraceTHD-MCD, voir GraceTHD-Check.  
http://gracethd-community.github.io/GraceTHD-Check/
* Journal des révisions et téléchargement des versions obsolètes de GraceTHD-MCD :  
https://github.com/GraceTHD-community/GraceTHD-MCD/releases

**Documentation** : disponible dans le dossier docs du contenu à télécharger.  
*GraceTHD-MCD permet de découvrir le modèle de données. Pour la mise en oeuvre, voir GraceTHD-Check.*

**[Redmine](https://redmine.gracethd.org)** : gestion de projet, remontées d'anomalies, demandes d'évolutions et demandes d'assistance :   [https://redmine.gracethd.org](https://redmine.gracethd.org)  
Voir également la FAQ.  
https://redmine.gracethd.org/redmine/projects/modele_grace/wiki/FAQ  

**[Géostandard Aménagement Numérique des Territoires GraceTHD](http://www.geoinformations.developpement-durable.gouv.fr/standard-covadis-amenagement-numerique-des-a3300.html)** : GraceTHD-MCD est le modèle de données validé par la Covadis comme Geostandard Aménagement Numérique des Territoires. 
http://www.geoinformations.developpement-durable.gouv.fr/standard-covadis-amenagement-numerique-des-a3300.html
* Historique : GraceTHD-MCD v2 est une importante refonte du Geostandard ANT v1 complétée d'éléments du modèle de données du Syane notamment pour la partie optique, ainsi qu'un rapprochement d'autres modèles de données de référence (flux Interop, BAN, Mediapost, etc.) de sortes à simplifier les échanges avec ces modèles de données. 
* Note : la partie B du géostandard est une définition conceptuelle, c'est la partie C qui décrit l'implémentation, c'est une reprise à 100% de GraceTHD-MCD.  
* A partir de la version 2.1, GraceTHD-MCD deviendra un standard CNIG. 

### Utilisation
Ce modèle de données n'est pas conçu comme un modèle de production de données ou d'exploitation d'un réseau. Toutefois il se veut être un modèle de données relationnel permettant la gestion patrimoniale d'un réseau de télécommunications. L'écosystème autour de ce modèle de données se batira à partir des initiatives des différents acteurs (éditeurs de progiciels, opérateurs, constructeurs, collectivités, ... ). 

Le format d'échange préconisé par le Geostandard ANT v2.0 est shapefile et csv pour leur grande intéropérabilité. C'est une préconisation. Deux parties peuvent s'entendre pour échanger sous divers formats (comme des dumps SQL de base à base) tout en respectant le modèle de données. 

* **Collectivités** : 
GraceTHD-MCD vous permettra d'étudier le modèle de données. GraceTHD-MOD comporte les éléments à préparer lors de l'élaboration  d'un marché. GraceTHD-Check comporte l'ensemble des projets GraceTHD, notamment la partie permettant à une base de donénes GraceTHD de s'autocontrôler. 

* **Bureaux d'étude** : 
Des outils d'édition adaptés à vos plateformes doivent être mis en place. GraceTHD EST UN MODELE DE DONNEES DEDIE A L'ECHANGE, il n'est pas conçu en l'état pour la production. 

* **Editeurs de progiciels** : 
Toute la documentation est disponible et les consultations ont été réalisées pour permettre de sensibiliser et remonter les points de blocage majeurs. De la même manière que plusieurs éditeurs ont produit des solutions pour convertir des données de leur solution vers Grace v1, les consultations ont remonté le besoin des éditeurs pour un format d'échange, et l'intention générale de produire des solutions d'import/export GraceTHD. 

Toute contribution au modèle est la bienvenue et encouragée. 

### Contenu
* \docs\GraceTHD-MCD\changelog_gracethdmcd.txt : historique des modifications
* \db_shpcsv\ : base (shapefiles + CSV + csv des listes de valeurs) vierge et conforme au modèle de données + un projet QGIS 2.8. 
* \db_spatialite\ : une base de données Spatialite vierge et conforme au modèle de données. 
* \docs\ : documentation du modèle de données. Un schéma très simplifié du MCD (gracethd-mcd-vxxxx_schema_vxx.png), le MCD "lisible" (gracethd-mcd-vxxxxxx_doc_vxx.ods), le Modèle Logique de Données (gracethd-mld-vxxxxx.png). 
* \qgis\ : GraceTHD-Layers - Projets QGIS configurés pour l'exploitation de données GraceTHD. 
* \sources\gracethd-mcd-xxxxx.ods : fichier de développement
* \sql_postgis\ : les scripts pour créer les tables dans un schéma de base de données sous PostGIS 2.x
* \sql_spatialite\ : les scripts pour créer les tables dans un schéma de base de données sous Spatialite. 

### Support et contact
Poster une demande sur Redmine : 
https://redmine.gracethd.org/redmine/projects/gracethd_comitetechnique/issues/new

A la création de votre compte, merci de renseigner la structure que vous représentez et 

Pour comprendre Redmine : 
http://www.avicca.org/document/16829/dl

### Roadmap
https://redmine.gracethd.org/redmine/projects/modele_grace/roadmap

### Contributeurs
http://gracethd.org

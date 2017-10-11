# GraceTHD-MCD

## Présentation
GraceTHD-MCD est un modèle de données relationnel standardisé destiné à échanger des modèles numériques de réseaux de télécommunications et à la gestion patrimoniale de ces réseaux. 
GraceTHD-MCD est un des projets open source composant GraceTHD maintenus par [GraceTHD-community](https://github.com/GraceTHD-community)

#### Présentation de GraceTHD par l'Avicca  
http://gracethd.org

#### Télécharger GraceTHD-MCD
*Version actuelle :* 
https://github.com/GraceTHD-community/GraceTHD-MCD/zipball/master
Ou bouton "download zip" sur la page Github du projet.  
http://gracethd-community.github.io/GraceTHD-MCD/  
*Versions obsolètes :*  
https://github.com/GraceTHD-community/GraceTHD-MCD/releases  

*Pour télécharger l'ensemble des projets constituant GraceTHD, inclus GraceTHD-MCD, télécharger GraceTHD-Check :*  
http://gracethd-community.github.io/GraceTHD-Check/  

#### Documentation :  
Voir le dossier docs dans le contenu téléchargé.  
*GraceTHD-MCD permet de découvrir le modèle de données. Pour la mise en oeuvre, voir GraceTHD-Check.*

#### Géostandard Aménagement Numérique des Territoires GraceTHD  
http://www.geoinformations.developpement-durable.gouv.fr/standard-covadis-amenagement-numerique-des-a3300.html
* Le "Géostandard Aménagement Numérique des Territoires" de la [Covadis](http://www.geoinformations.developpement-durable.gouv.fr/covadis-r425.html) est un standard français.
* Historique : GraceTHD-MCD v2 est une importante refonte du Geostandard ANT v1 complétée d'éléments du modèle de données du Syane notamment pour la partie optique, ainsi qu'un rapprochement d'autres modèles de données de référence (flux Interop, BAN, Mediapost, etc.) de sortes à simplifier les échanges avec ces modèles de données. 
* Note : la partie B du géostandard est une définition conceptuelle. Pour la très grande majorité des utilisateurs sont principalement concernés par la partie C qui décrit l'implémentation. La partie C est une reprise intégrale de GraceTHD-MCD.  
* A partir de la version 2.1, GraceTHD-MCD deviendra un standard [CNIG](http://cnig.gouv.fr/)/Covadis. 

## Utilisation
GraceTHD-MCD n'est pas conçu comme un modèle de production de données ou d'exploitation d'un réseau. Toutefois il se veut être un modèle de données relationnel permettant la gestion patrimoniale d'un réseau de télécommunications. GraceTHD-Check est une extension du modèle de données qui permet à une base de données, sous PostGIS, de s'autocontrôler. GraceTHD-Check est une compilation de l'ensemble des projets GraceTHD, dont GraceTHD-MCD. 

#### Pré-requis

Mise à disposition pour une implémentation sous Spatialite (GraceTHD-MCD) et PostGIS (GraceTHD-MCD + GraceTHD-Check). GraceTHD-MCD est aisément portable sur d'autres Systèmes de Gestion de Bases de Données Spatiales qui respectent les normes SQL et SFSQL. Des projets QGIS pré-configurés sont également mis à disposition pour un usage générique (GraceTHD-Layers). 

L'écosystème autour de ce modèle de données se batira à partir des initiatives des différents acteurs (éditeurs de progiciels, opérateurs, constructeurs, collectivités, ... ). 

#### Collectivités
GraceTHD-MCD vous permettra d'étudier le modèle de données. GraceTHD-MOD comporte les éléments à préparer lors de l'élaboration  d'un marché. GraceTHD-Check comporte l'ensemble des projets GraceTHD, notamment la partie permettant à une base de donénes GraceTHD de s'autocontrôler. 

#### Bureaux d'étude
Des outils d'édition adaptés à vos plateformes doivent être mis en place. GraceTHD EST UN MODELE DE DONNEES DEDIE A L'ECHANGE, il n'est pas conçu en l'état pour la production. 

#### Opérateurs
Le besoin consiste à mettre en place des outils d'import/export par rapport au SI en place. Il est à noter que GraceTHD peut aller plus loin que les besoins exclusifs des opérateurs, il peut donc être envisageable d'étendre le SI pour conserver certaines informations utiles à d'autres acteurs. 

#### Editeurs de progiciels
Toute la documentation est disponible et les consultations ont été réalisées pour permettre de sensibiliser et remonter les points de blocage majeurs. De la même manière que plusieurs éditeurs ont produit des solutions pour convertir des données de leur solution vers Grace v1, les consultations ont remonté le besoin des éditeurs pour un format d'échange, et l'intention générale de produire des solutions d'import/export GraceTHD. 

Toute contribution au modèle est la bienvenue et encouragée. 

## Contenu
* \docs\GraceTHD-MCD\changelog_gracethdmcd.txt : historique des modifications
* \db_shpcsv\ : base (shapefiles + CSV + csv des listes de valeurs) vierge et conforme au modèle de données + un projet QGIS 2.8. 
* \db_spatialite\ : une base de données Spatialite vierge et conforme au modèle de données. 
* \docs\ : documentation du modèle de données. Un schéma très simplifié du MCD (gracethd-mcd-vxxxx_schema_vxx.png), le MCD "lisible" (gracethd-mcd-vxxxxxx_doc_vxx.ods), le Modèle Logique de Données (gracethd-mld-vxxxxx.png). 
* \qgis\ : GraceTHD-Layers - Projets QGIS configurés pour l'exploitation de données GraceTHD. 
* \sources\gracethd-mcd-xxxxx.ods : fichier de développement
* \sql_postgis\ : les scripts pour créer les tables dans un schéma de base de données sous PostGIS 2.x
* \sql_spatialite\ : les scripts pour créer les tables dans un schéma de base de données sous Spatialite. 

## Support, contact et gestion de projet
**[Redmine](https://redmine.gracethd.org)** :  
[https://redmine.gracethd.org](https://redmine.gracethd.org)  

*Introduction à la plateforme Redmine GraceTHD :*  
http://www.avicca.org/document/16829/dl  
*A la création de votre compte, merci de renseigner la structure que vous représentez et idéalement d'utiliser une adresse mail professionnelle (non communiquées à des tiers).*  

Remontées d'anomalies, demandes d'évolutions, demandes d'assistance GraceTHD-MCD, poster une demande :  
https://redmine.gracethd.org/redmine/projects/gracethd_comitetechnique/issues/new  
*Pas plus compliqué qu'un webmail. Ce sont vos contributions qui permettent d'améliorer GraceTHD !*

FAQ :  
https://redmine.gracethd.org/redmine/projects/modele_grace/wiki/FAQ  

Les annonces : 
https://redmine.gracethd.org/redmine/projects/modele_grace/news

Roadmap :  
https://redmine.gracethd.org/redmine/projects/modele_grace/roadmap

## Contributeurs
http://gracethd.org

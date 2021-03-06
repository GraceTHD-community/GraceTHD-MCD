# GraceTHD-MCD

## Présentation
GraceTHD-MCD est un modèle de données relationnel standardisé destiné à échanger des modèles numériques de réseaux de télécommunications et à la gestion patrimoniale de ces réseaux. 
GraceTHD-MCD est un des projets open source composant GraceTHD maintenus par [GraceTHD-community](https://github.com/GraceTHD-community)

#### Présentation de GraceTHD par l'Avicca  
[http://gracethd.org](http://gracethd.org)  

#### Télécharger GraceTHD-MCD
Version actuelle :  
[https://github.com/GraceTHD-community/GraceTHD-MCD/zipball/master](https://github.com/GraceTHD-community/GraceTHD-MCD/zipball/master)  
*Ou bouton "download zip" sur la page Github du projet.*  
[http://gracethd-community.github.io/GraceTHD-MCD/](http://gracethd-community.github.io/GraceTHD-MCD/)  
*Versions obsolètes :*  
[https://github.com/GraceTHD-community/GraceTHD-MCD/releases](https://github.com/GraceTHD-community/GraceTHD-MCD/releases)  

Pour télécharger l'ensemble des projets constituant GraceTHD, dont GraceTHD-MCD, télécharger GraceTHD-Check :  
[http://gracethd-community.github.io/GraceTHD-Check/](http://gracethd-community.github.io/GraceTHD-Check/)  

#### Documentation :  
Voir le dossier docs dans le contenu téléchargé.  
*GraceTHD-MCD permet de découvrir le modèle de données. Pour la mise en oeuvre, voir GraceTHD-Check.*

#### Géostandard Aménagement Numérique des Territoires GraceTHD  
[http://www.geoinformations.developpement-durable.gouv.fr/standard-covadis-amenagement-numerique-des-a3300.html](http://www.geoinformations.developpement-durable.gouv.fr/standard-covadis-amenagement-numerique-des-a3300.html)  
* Le "Géostandard Aménagement Numérique des Territoires" de la [Covadis](http://www.geoinformations.developpement-durable.gouv.fr/covadis-r425.html) est un standard français.
* Historique : GraceTHD-MCD v2 est une importante refonte du Geostandard ANT v1 complétée d'éléments du modèle de données du Syane notamment pour la partie optique, ainsi qu'un rapprochement d'autres modèles de données de référence (flux Interop, BAN, Mediapost, etc.) de sortes à simplifier les échanges avec ces modèles de données. 
* Note : la partie B du géostandard est une définition conceptuelle. La très grande majorité des utilisateurs sont principalement concernés par la partie C qui décrit l'implémentation et qui une reprise intégrale de GraceTHD-MCD.  
* A partir de la version 2.1, GraceTHD-MCD deviendra un standard [CNIG](http://cnig.gouv.fr/)/Covadis. 

## Utilisation
GraceTHD-MCD vise à répondre aux besoins de **gestion patrimoniale de réseaux de télécommunications** (principalement fibre). C'est également un **standard ouvert qui homogénéise les échanges**. 
*Il n'est pas conçu comme un modèle de production de données (bien que certains l'ont adapté dans ce but pour leurs besoins internes) ou d'exploitation d'un réseau.*  

#### Pré-requis
Le Comité de Pilotage de GraceTHD ne souhaite pas développer d'applications autour de GraceTHD. **C'est aux entreprises et collectivités d'implémenter GraceTHD dans leur SI.** On peut le considérer comme un moteur. 

GraceTHD-MCD est mis à disposition pour les Systèmes de Gestion de Bases de Données (SGBD) open source **Spatialite** (GraceTHD-MCD) et **PostGIS** (GraceTHD-MCD + GraceTHD-Check). Spatialite est une bonne solution pour découvrir le projet. PostGIS est la solution à mettre en oeuvre pour la plupart des utilisateurs, par conséquent il est vivement conseillé de disposer de compétences PostGIS. 
*GraceTHD-MCD est aisément portable sur d'autres Systèmes de Gestion de Bases de Données Spatiales qui respectent les normes SQL et SFSQL, toutefois ceci entend de prendre en charge toute l'implémentation.* 

Des projets **QGIS** pré-configurés sont également mis à disposition pour un usage générique (GraceTHD-Layers). Des compétences SIG bureautique sont nécessaires pour exploiter GraceTHD. 
*Il est possible d'utiliser GraceTHD avec toute application cliente exploitant Spatialite et/ou PostGIS, toutefois là aussi ceci signifie de réimplémenter sur d'autres plateformes ce qui est mis à disposition sur la référence des applications SIG open source qu'est QGIS.* 

Connaitre les **prestations** proposées par les entreprises :  
* **Formations** permettant de s'initier plus rapidement et efficacement à GraceTHD. 
* **AMO**, support et administration système d'une plateforme GraceTHD.  
* **Développement** de logiciels autour de GraceTHD.  

#### Démarche générale
Vous êtes décideur, il faut mettre en place au moins un futur administrateur GraceTHD qui a ou va rapidement acquérir des compétences en bases de données spatiales (idéalement PostGIS), va se former à GraceTHD puis mettre en place une plateforme GraceTHD. 

Vous dirigez ou participez aux études pour le déploiement de réseaux, vous avez besoin d'une équipe compétente qui vous mette en place l'infrastructure nécessaire pour profiter de GraceTHD, notamment un administrateur GraceTHD. 

Vous êtes le futur **administrateur GraceTHD**. 
1. [Redmine GraceTHD](https://redmine.gracethd.org), inscrivez-vous pour profiter de la FAQ, des annonces, des demandes, etc. 
2. Elaboration de votre programme de formation ou d'autoformation. 
3. GraceTHD-MCD pour étudier le modèle de données.  
4. GraceTHD-MOD pour définir les livrables (documents et attributs renseignés attendus aux différentes phases).  
5. GraceTHD-Check est un catalogue de points de contrôle implémenté (sous PostGIS) comme une extension du modèle de données qui permet à une base de données de s'autocontrôler. Il comporte des scripts pour créer des bases, charger des données, les exporter, etc. GraceTHD-Check présente également l'avantage de compiler l'ensemble des projets GraceTHD. C'est votre cible.  

#### Collectivités
Vous avez la responsabilité de produire la définition de vos livrables : documents attendus et votre grille de remplissage des données (GraceTHD-MOD). Vous aurez probablement besoin d'intégrer GraceTHD-Check à votre SI.  

Inversement GraceTHD a besoin de vous en tant que contributeurs pour son développement, sa maintenance et l'accompagnement de la communauté des utilisateurs. L'Avicca porte cela exclusivement grâce aux collectivités qui subventionnent le projet. Outre l'importance de disposer d'évolutions de ce standard et d'une équipe qui apporte un support à la communauté, ces collectivités président à la destinée de GraceTHD en intégrant le Comité de Pilotage et disposent d'un certain nombre d'avantages.  

#### Bureaux d'étude
Ceux qui disposent d'un SI mettront en place les solutions pour importer/exporter des données GraceTHD. Il est fondamental de pouvoir stocker toutes les données attendues par GraceTHD et de ne pas avoir de points de blocage dans les procédures d'import/export.  

D'autres pourront étudier la possibilité de mettre en place un SI permettant de produire directement des données GraceTHD, mais ceci entend d'adapter et compléter ce qui est mis à disposition pour une production intensive et fiable. Depuis GraceTHD-MCD v2.0.1, les vues cartographiques sont éditables, mais ce n'est pas suffisant. De plus il n'y a pas d'outils graphiques open source disponibles pour la production des données non cartographiques (routes optiques, baies, verticalité, etc.). Des entreprises ont procédé à ces développements.  

Inversement GraceTHD a besoin de vos contributions pour les prochaines versions via Redmine et les Groupes Experts. 

#### Opérateurs
Le besoin consiste à mettre en place des outils d'import/export par rapport au SI en place. GraceTHD vise à répondre aux besoins de stockage de données pour tous les acteurs, il peut donc être nécessaire d'étendre votre SI pour conserver certaines informations utiles à d'autres acteurs.  

Il faut absolument contribuer aux Groupes Experts qui permettent de faire évoluer GraceTHD. GraceTHD doit vous délivrer toutes les données nécessaires pour l'exploitation du réseau, et il est primordial que les procédures d'import et d'export n'aient pas de points de blocage avec votre SI. 

#### Editeurs de progiciels
Toute la documentation est disponible et les consultations ont été réalisées dès le début du développement (2015) pour permettre de sensibiliser et de remonter les points de blocage majeurs. En septembre 2017 le Comité Consultatif rapporte que les solutions d'import / export des principaux éditeurs commencent délivrer les premiers résultats opérationnels.  

Il est nécessaire de participer aux Groupes Experts pour que le développement des prochaines versions de GraceTHD-MCD soient le plus interopérables possible avec vos solutions. Redmine permet également d'échanger avec l'équipe de développement et toute la communauté GraceTHD.  

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
**Redmine** :  
[https://redmine.gracethd.org](https://redmine.gracethd.org)  

*Introduction à la plateforme Redmine GraceTHD :*  
[http://www.avicca.org/document/16829/dl](http://www.avicca.org/document/16829/dl)  
*A la création de votre compte, merci de renseigner la structure que vous représentez et idéalement d'utiliser une adresse mail professionnelle (non communiquées à des tiers).*  

Remontées d'anomalies, demandes d'évolutions, demandes d'assistance GraceTHD-MCD, poster une demande :  
[https://redmine.gracethd.org/redmine/projects/modele_grace/issues/new](https://redmine.gracethd.org/redmine/projects/modele_grace/issues/new)  
*Pas plus compliqué qu'un webmail. Ce sont vos contributions qui permettent d'améliorer GraceTHD !*

FAQ :  
[https://redmine.gracethd.org/redmine/projects/modele_grace/wiki/FAQ](https://redmine.gracethd.org/redmine/projects/modele_grace/wiki/FAQ)  

Les annonces :  
[https://redmine.gracethd.org/redmine/projects/modele_grace/news](https://redmine.gracethd.org/redmine/projects/modele_grace/news)  

Roadmap :  
[https://redmine.gracethd.org/redmine/projects/modele_grace/roadmap](https://redmine.gracethd.org/redmine/projects/modele_grace/roadmap)  

## Contributeurs
[http://gracethd.org](http://gracethd.org)

/*GraceTHD-MCD v2.0.1*/
/*Grant - Attribution des privilèges.*/
/* gracethd_91_grant.sql */
/*Postgis*/

/* Owner : GraceTHD-Community - http://gracethd-community.github.io/ */
/* Author : stephane dot byache at aleno dot eu */
/* Rev. date : 17/07/2017 */

/* ********************************************************************
    This file is part of GraceTHD.

    GraceTHD is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    GraceTHD is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with GraceTHD.  If not, see <http://www.gnu.org/licenses/>.
*********************************************************************** */

SET search_path TO gracethd, public;

/*###################### GRANT ##################################*/

/*GraceTHD est distribué sans politique de rôles*/
/*Chaque structure doit intégrer ici les attributions de privilèges qu'elle souhaite appliquer par défaut aux bases de données GraceTHD en fonction de la politique de rôles PostgreSQL interne.*/
/*L'intérêt est la prise en compte de ce script SQL par les scripts de création des bases distribués avec GraceTHD.*/

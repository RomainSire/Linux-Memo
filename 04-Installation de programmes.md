# Installer des paquets avec apt-get
## Organisation
Les programmes sont sous forme de paquets tous regroupés dans un depôt (repository)  
Ce système gère tout seul les dépendances (librairies dont le programme a besoin pour fonctionner)
## Dépôts
Tous les programmes sont regroupés au même endroit sur le même dépôt (repository)  
Il y a en fait plusieurs serveurs qui sont des "copies" du même dépot.. On peut utiliser n'importe quel serveur.  
Par défaut : fr.archive.ubuntu.com  
Il est possible de modifier ça dans un fichier de config.  
On peut aussi modifier ça en mode graphique dans "Sources de logiciels"
## apt-get update
Mettre à jour le cache des paquets : à faire de temps en temps, ou avant d'installer un paquet  
- sudo apt-get update
## apt-cache search
Rechercher un paquet dans le cache (si on ne connait pas le nom exact du paquet)  
- apt-cache search [maRecherche]  : retourne une liste avec le nom et une courte description
- apt-cache show [nomDuPaquet] : avoir plus de détail sur un paquet
## apt-get install
Installer un paquet
- sudo apt-get install [nomDuPaquet]
- sudo apt-get install [nomDuPaquet1] [nomDuPaquet2] [nomDuPaquet3] : installer plusieurs paquets en même temps
## apt-get autoremove
Supprimer un paquet
- sudo apt-get remove [nomPaquet] : désinstalle le paquet
- sudo apt-get autoremove [nomPaquet] : désinstalle le paquet ET ses dépendances si elles ne sont plus utilisées
## apt-get upgrade
Mettre à jour tous les paquets installés
- sudo apt-get upgrade  

NB : penser à faire un update avant de faire un upgrade, pour mettre à jour le cache !







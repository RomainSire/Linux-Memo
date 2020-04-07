# Recherche de Fichiers
## locate recherche rapide
- locate [Recherche] : recherche le fichier ou dossier qui contient [Recherche] dans son nom

Défaut de "locate" : locate ne recherche pas directement sur le disque dur, mais s'appuie sur une base de données de fichiers (mise à jour chaque jour). En conséquence, si un fichier vient juste d'être créé, il ne sera pas encore répertorié dans la base de données, et locate ne le trouvera pas !

- sudo updatedb : force la mise à jour de la base de données des fichiers

## find : recherche approfondie
Contrairement à locate, find va parcourir le disque dur pour rechercher le fichier (ne se base pas sur la base de données)  
- find [où] [quoi] [quoi faire avec le résultat]
  - [où] dossier de recherche - par défaut : dossier courrant
  - [quoi] ce qu'on rehcerche (avec nom, date, taille, etc..) - paramètre obligatoire
  - [quoi faire] ce qu'on fait avec le résultat - par défaut : les affiche

Exemples :
- find -name "fichier.txt" : cherche dans "home" le fichier qui s'appelle *EXACTEMENT* "fichier.txt"
- find /var/log/ -name "syslog" : rechercher dans le dossier /var/log/
- find -name "*Chihiro*" : on utilise le jocker "*" pour rechercher un nom de fichier QUI CONTIENT "Chihiro"

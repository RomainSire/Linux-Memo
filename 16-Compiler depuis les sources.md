# Compiler un programme depuis les sources

## Solution "facile" : un .deb existe
Lorsque le programme n'est pas disponible sur les repository, il faut chercher le .deb sur le net pour les distributions Debian, et ses dérivés. (Ou .rpm pour Fedora/Red Hat)  
Il suffit alors de double-cliquer sur le fichier .deb pour installer le programme (en espérant qu'il n'y ait pas besoin de dépendances..!)

## Solution Compilation
Lorsque le programme n'est pas dans les repository, et que le .deb n'existe pas, il faut alors récupérer les fichiers sources, et les compiler.  
La marche à suivre pour compiler est normalement détaillée sur le site web du programme.  
### Tuto compilation
- sudo apt install build-essential : prog nécessaire à la compilation
- télécharger la source du programme qui nous intéresse, en .tar.gz
- tar -zxvf [archive] : décompresser
- cd [dossier] : aller dans le dossier
- ./configure : prog qui analyse l'ordi et qui vérifie si tous les éléments nécessaire à la compilation sont là
- S'il y a besoin de dépendances, configure lève une erreur. Il faut alors rechercher sur le let pour savoir quel paquet installer... et l'installer !
- relancer configure jusqu'à ce qu'il n'y ait plus d'erreur !
- make : lance la compilation !  :)
- sudo make install : copie l'exécutable compilé dans le bon répertoire (make le fait tout seul! :) )
- C'est fait ! :) on peut lancer la programme avec son nom comme normalement.

Pour désinstaller : retourner dans le dossier avec les sources, et tapper : sudo make uninstall

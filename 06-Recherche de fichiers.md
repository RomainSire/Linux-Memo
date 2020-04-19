# Recherche de Fichiers
## locate : recherche rapide
- locate [Recherche] : recherche le fichier ou dossier qui contient [Recherche] dans son nom  

Défaut de "locate" : locate ne recherche pas directement sur le disque dur, mais s'appuie sur une base de données de fichiers (mise à jour chaque jour). En conséquence, si un fichier vient juste d'être créé, il ne sera pas encore répertorié dans la base de données, et locate ne le trouvera pas !

- sudo updatedb : force la mise à jour de la base de données des fichiers

## find : recherche approfondie
Contrairement à locate, find va parcourir le disque dur pour rechercher le fichier (ne se base pas sur la base de données)  
- find [où] [quoi] [quoi faire avec le résultat]
  - [où] dossier de recherche - par défaut : dossier courrant
  - [quoi] ce qu'on rehcerche (avec nom, date, taille, etc..) - paramètre obligatoire
  - [quoi faire] ce qu'on fait avec le résultat - par défaut : les affiche

### Recherches avec le nom (-name) :
- find -name "fichier.txt" : cherche dans "home" le fichier qui s'appelle **EXACTEMENT** "fichier.txt"
- find /var/log/ -name "syslog" : rechercher dans le dossier /var/log/
- find -name "\*Chihiro\*" : on utilise le jocker "*" pour rechercher un nom de fichier **QUI CONTIENT** "Chihiro"
- find / -name "fichier" : recherche le fichier dans TOUT le disque dur (utiliser sudo, sinon messages d'erreur : access denied)
### Recherches avec la taille (-size) :
- find ~ -size +10M : cherche dans home les fichiers de plus de 10Mo
  - On peut utiliser K pour Ko, ou G pour Go
  - "-" les fichiers qui font moins de la taille recherchée
  - "+" les fichiers qui font plus de la taille recherchée
  - "rien" les fichiers qui font EXACTEMENT la taille recherchée
### Recherche à partir de la date de dernier accès (-atime)
- find -name "\*.odt" -atime -6 : recherche les fichiers "odt" accédés il y a moins de 7 jours
  - De même, on peut mettre "+" ou rien pour les fichiers accédés il y a + de 7 jours ou il y a exactement 7 jours
### Recherche par type (fichier ou dossier)
- find /var/log -name "syslog" -type d : recherche seulement les dossiers qui s'appellent syslog
  - -type d : dossiers
  - -type f : fichiers
### Afficher différemment le résultat de la recherche
- -print : par défaut si rien n'est renseigné dans [quoi faire avec le résultat] : ça affiche les résultats simplement
- -printf : permet de formater le résultat
  - Exemple : find -name "\*Chihiro\*" -printf "%p - %u\n"
  - %p : affiche le nom
  - %p : afficher le propriétaire du fichier
  - "-" :les 2 sont séparés par un tiret
  - "\n" : saut de ligne
  - voir le manuel "man find" pour plus d'options
### Supprimer les fichiers trouvés
Attention à ne pas faire de fausse manip !!
- find -name "\*.jpg" -delete : supprime toutes les images du dossier home !
### Appeler une commande qui effectuera une action sur tous les résultats de recherche  
- find -name "\*.jpg" -exec chmod 600 {} \;  : met un chmod à 600 pour toutes les images de home
  - commande PAS entre guillements !
  - {} seront remplacés par les fichiers trouvés
  - la commande finit obligatoirement par \;
  

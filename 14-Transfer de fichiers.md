# Transférer des fichiers

## Télécharger des fichiers : wget
- wget [adresse http ou ftp de téléchargement] : télécharger un fichier. Une barre de progression s'affiche
- Ctrl + C : arrêter le téléchargement
- wget -c [adresse] : reprendre un téléchargement arrêté
- wget --background -c [adresse] : lancer le téléchargement en tâche de fond. (nohup fonctionne aussi). Dans ce cas, l'avancement du téléchargement est écrit dans le fichier wget-log

## Copier des fichiers sur le réseau : scp
la commande scp (secure copy) s'appuie sur ssh pour fonctionner.
- scp fichierOrigine copieDestination : copie le fichier d'origine vers sa destination
  - avec les éléments écrits comme : login@ip:nomFichier
### Copie d'un fichier de mon ordi vers un autre distant
- scp monFichierLocal login@ip.ip.ip.ip:/home/toto/documents : copie mon fichier sur mon pc local vers un ordinateur distant, on se connecte coppe en ssh (login@ip) puis on fait suivre par ":" puis par le chemin absolu ou copier.
- on peut utiliser le nom de domaine (si applicable) : login@nomDomaine:chemin
### Copie d'un fichier d'un ordi distant vers mon ordi
- scp login@ip.ip.ip.ip:monFichier maCopieDuFichierEnLocal : même principe que précédemment, mais à l'envers!
### Si le port ssh n'est pas le 22
- scp -P numPort login@ip.ip.ip.ip:leFichier laCopieDuFichier : on spécifie le numéro du port avec l'option -P (attention P majuscule, contrairement au p minuscule de la commande ssh)


## Transférer des fichiers : ftp et sftp
### connexion
- ftp [adresseFTP] : se connecter à un ftp
- ensuite renseigner le login et le mot de passe
- pour les ftp publics, le login est toujours anonymous, et le MDP : peu importe!
- on a ensuite un prompt : ftp>
  - Les commandes sont les mêmes que pour la console normale (ls, pwd, cd, etc..)
- bye, quit, exit : quitter le ftp
### Transfert de fichier
- get nomFichier : télécharge un fichier depuis le serveur vers mon ordi
- put nomFichier : envoie un fichier vers le serveur
- !pwd : si on veut savoir ou on se trouve sur mon ordi en local
- !cd : pour changer de dossier sur mon pc local
- !ls : lister les fichiers de mon pc local
### sftp : secure FTP
Attention, FTP n'est pas crypté, pour y remédier, utiliser "sftp" qui se base sur ssh :
- sftp login@ip : se connecter en sftp
- pour un port différent : sftp -oPort=[numPort] login@ipServeur
- ensuite ça fonctionne (presque) comme ftp

## Synchronisation de fichiers pour sauvegarde : rsync
rsync compare et analyse les différences entre 2 dossiers et copie uniquement les changements effectué au 1er dossier
- rsync -arv dossierASauvegarder dossierBackup
  - -a conserve les informations des fichiers (chmod, etc.)
  - -r sauvegarde aussi tous les sous-dossiers
  - -v verbeux

Par défaut, rsync ne supprime par les fichiers dans le répertoire de copie. C'est à dire, si on supprime un fichier dans le dossier à sauvegarder, il ne sera pas supprimé dans le dossier backup.. Pour y remédier, et avoir 2 dossier strictement identiques, on ajoute l'option --delete
- rsync -arv --delete dossierASauvegarder dossierBackup

On peut, plutôt que supprimer à la bourrin, mettre "à la corbeille" ou "en backup" les fichiers supprimés par rsync. Pour cela on ajoute l'option --backup, et ajouter le répertoire vers lequel ils seront copiés : --backup-dir=cheminDAccesDuBackup  
Exemple :
- rsync -arv --delete --backup --backup-dir=/home/toto/backup-corbeille Images/ backup/
### Sauvegarder sur un autre ordinateur
On va (encore une fois) utiliser ssh ! Et se baser sur ce qu'on a vu précédemment :
- rsync -arv --delete --backup --backup-dir=/home/toto/fichiersSupprimes Images/ login@ip.ip.ip.ip:dosiserBackup/ 

Si le port SSH est différent que le port 22, on ajoute : -e "ssh -p [numPort]" :
- rsync -arv --delete --backup --backup-dir=/home/toto/fichiers_supprimes Images/ login@IP_du_serveur:mes_backups/ -e "ssh -p 1234"




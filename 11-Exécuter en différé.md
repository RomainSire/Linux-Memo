# Exécuter un programme à une heure différée

## Régler l'heure : date
date : affiche la date et l'heure  
- date "+%H" : affiche les heures
- date "+%H:%M:%S" : affiche heure:minutes:secondes
- Lire le manuel pour les autres options! man date  

sudo date MMDDhhmmYYY : changer la date du système
- MM : mois
- DD : jour
- hh : heure
- mm : minutes
- YYYY : année (facultatif)

## Exécuter une commande plus tard : at
S'exécute en 2 temps :  
1. at [heure]   (avec le format de l'heure: hh:mm)
2. tapper la série d'instructions qu'on veut exécuter à cette heure. Finir avec [ctrl+D]

Pour exécuter pas le même jour :
- at [heure] tomorrow : pour exécuter demain
- at [heure] MM/DD/YY : pour exécuter à un certain jour.. attention format de date américain!

Exécuter aprèsun certain délai :
- at now +5 minutes : pour exécuter dans 5 minutes
- mots clés disponibles :
  - minutes
  - hours
  - days
  - weeks
  - months
  - years

Lister et supprimer les taches en attente:
- atq : liste les jobs en attente, avecleur numéro, et la date prévue d'exécution
- atrm [numéroJob] : supprimer la tâche programmée (identifiée par son numéro)


## Faire une pause : sleep
- commande1; commande2 : séparé par ";" : exécute 2 commandes à la suite
- commande1 && commande2 : séparé par "&&" : pareil, mais exécute la 2eme commande seulement s'il n'y a pas eu d'erreur lors de la 1ere commande
- commande1; sleep 10; commande 2 : "sleep n" permet de faire une "pause" de n secondes entre 2 commandes
- possible de changer l'unité :
  - sleep 1m : 1 minute
  - sleep 1h : 1 heure
  - sleep 1d : 1 jour

## exécuter une commande régulièrement : crontab
crontab = liste des programmes planifiés (exécutés régulièrement). C'est en fait un fichier à modifier  
- crontab -e : modifier la crontab
- crontab -l : afficher la crontab actuelle
- crontab -r : supprimer la crontab (!! immédiat, sans confirmation)

Lorsqu'on édite le crontab, il faut indiquer :  
- m : minute (0-59)
- h : heure (0-23)
- dom : day of month (1-31)
- mon : month (1-12)
- dow : day of week (0-6, 0 est le dimanche)
- command : commande à exécuter
- les chiffres seront séparés par un espace, et pourront être remplacés par "\*" qui signifie "tous les nombres sont valables"
- Important: pour les chemins d'accès à un fichier/dossier, toujours les écrire en ABSOLU (càd, le chemin commence par la racine "/")

Les différentes valeurs possibles :  
- 3 : un nombre : exécuté lorsque le champ prend la valeur 3
- \* : exécuter tout le temps
- 3,5,8 : sans virgule : exécuté lorsque le champ prend la valeur 3, 5, ou 8
- 3-7 : exécuté pour toutes les valeurs entre 3 et 7
- \*/3 : exécuté pour tous les multiples de 3 (0, 3, 6, 9, 12..)

Exemples :  
- 47 15 * * * touch /home/toto/monFichier : crée un monFichier dans le home de toto tous les jours à 15h47
- 47 * * * * commande : exécute la commande à 47min de chaque heure
- 0 0 * * 1 commande :  tous les lundis à minuit
- 0 4 1 * * commande : tous les 1er du mois à 4h
- 0 * 4 12 * commande : toutes les heures les 4 décembres
- \* * * * * commande : toutes les minutes
- 30 5 1-15 * * commande : à 5h30 du 1er au 15 de chaque mois
- 0 \*/2 * * * commande : toutes les 2 heures
- \*/10 * * * 1-5 commande : toutes les 10 min du lundi au vendredi

Redirections :  
Il est possible de rediriger les messages et les erreurs dans un fichier :
- m h dom mon dow commande >> /home/toto/cron.log 2>&1

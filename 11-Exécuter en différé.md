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

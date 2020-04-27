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
1- at [heure]
2- tapper la série d'instructions qu'on veut exécuter à cette heure. Finir avec [ctrl+D]


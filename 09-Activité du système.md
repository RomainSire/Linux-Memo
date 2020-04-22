# Surveiller l'activité du système
Linux est un système multi-tâches et multi-utilisateurs. Des taches lancées par différents utilisateurs en même temps peuvent tourner en même temps.

## Résumé de l'activité du système : w
Affiche différentes choses :
- l'heure
- l'uptime : durée de fonctionnement de l'ordinateur
- la charge : il y a 3 valeurs de 0 à N représentant le % de charge (N est le nombre de coeur du processeur)
  - 1ere valeur : charge moyenne depuis 1 minute
  - 2ème valeur : charge moyenne depuis 5 minutes
  - 3ème valeur : charge moyenne depuis 15 minutes
  - NB : possible d'avoir le graphe de charge en temps réel avec la commande tload
  - NB : si la charge est > au nombre de coeurs du processeur = PC surchargé !
- liste des utilisateurs connectés. Avec :
  - USER : nom d'utilisateur
  - TTY : le nom de la console utilisée par le user (consoles tty1 à tty6 + console graphique pts)
  - FROM : adresse IP de l'utilisateur
  - LOGIN@ : l'heure de connexion
  - IDLE : durée d'inactivité de l'utilisateur
  - WHAT : la commande exécutée en ce moment
  
## Lister les processus : ps & top
### ps : liste statique et complète
Quelques valeurs affichées suite à la commande ps :
  - PID : numéro d'identification du processus
  - TTY : nom de la console
  - TIME : durée d'execution
  - CMD : programme qui a généré ce processus  
  
La commande ps a beaucoup d'options possibles! cf. manuel. Les plus utiles :
- ps -ef : lister tous les processus de tous les utilisateurs
- ps -ejH : afficher les processus en arbre (car certains processus sont les enfants d'autres processus)
- ps -u [USER] : lister les processus lancés par un utilisateur en particulier

### top : liste dynamique et partielle
top n'affiche que les premiers processus et est raffraichit en temps réel, habituellement trié par le % d'utilisation du CPU.  
Touches raccourcies :
- q : quitter
- h : help
- B : mettre en gras
- f : ajoute ou supprime des colonnes
- F : change la colonne de tri
- u : filtre selon l'utilisateur
- k : kill un processus
- s : change l'intervalle de mise à jour


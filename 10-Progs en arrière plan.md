# Exécuter des programmes en arrière-plan

## Lancer un processus en arrière plan : & et nohup
- [commande longue] & : lance la commande longue (copie d'un gros fichier par ex) en arrière plan.
  - La console renvoie 2 info : le numéro de processus en arrière plan, et le PID qu'il faut utiliser pour kill le processus si besoin
  - Fonctionne aussi avec les commandes qui affichent qqch dans la console (comme un find), dans ce cas, le find se déroule et on peut continuer à utiliser la console pour d'autres taches, MAIS les résultats du find sont toujours affichés en continu... chiant! Solution : rediriger les résultats et les erreurs dans un fichier : [commande longue] > [fichierSortie] 2>&1 &
- Avec "&" le processus est attaché à la console. Si on ferme la console, le processus est kill
- nohup [commande] : pareil, mais le processus ne sera pas kill à la fermeture du terminal. La sortie de la commande est par défaut redirigée vers le fichier "nohup.out".
  - Commande très utile lorsqu'on se connecte sur un serveur !
  
## Envoyer un processus en arrière plan
- ctrl + z : met en pause l'exécution d'un programme long exécuté au premier plan
  - exemple : on fait un gros find ou une grossse copie, mais on a oublié de mettre le signe "&"...
  - Il s'affiche alors : le numéro de procssus, son état ("arrêté") et le nom de la commande
  - le processus est arrêté, mais reste en mémoire, et peut être repris à tout moment
- bg : passe le programme en pause à l'arrière plan (background)
  - le processus est de nouveau exécuté, mais cette fois, en arrière plan
- jobs : connaître les processus qui tournent en arrière plan au sein de la même console
  - Affiche le numéro de processus, l'étât et la commande
- fg : reprendre un processus au premier plan (foreground)
  - si 1 seul processus en arrière plan, seulement : fg
  - si plusieurs processus en arriere plan : fg %n  ou n est le numéro de processus de "jobs"
  
![arrière plan](https://user.oc-static.com/files/141001_142000/141442.png "arrière plan")


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

## Emuler d'autres consoles : screen
la commande screen n'est pas installée par défaut, il faut donc l'installer :  
sudo apt-get install screen  
Ensuite, en lançant "screen" une nouvelle console est émulée au sein de notre console ! il est possible de quitter l'émulation normalement en tappant ctrl+D ou exit, on retournera alors dans la "vraie" console  
Dans screen :
- ctrl+a puis ? : lance l'aide pour avoir tous les raccourcis activables suite à un ctrl+a (NB : dans l'aide "^" est en fait "ctrl")
- ctrl+a puis c : crée une nouvelle fenetre
- ctrl+a puis w : affiche en bas la liste des fenetres ouvertes ("\*" sur la fentres active)
- ctrl+a puis A : renommer la fenetre actuelle
- ctrl+a puis n : aller à la fenetre suivante
- ctrl+a puis p : aller à la fenetre précédente
- ctrl+a puis ctrl+a : aller à la dernière fenetre utilisée
- ctrl+a puis chiffre 1 à 9 : aller à la fenetre n°x
- ctrl+a puis " : choisir la fenetre dans laquelle on veut aller (cette commande est TOP!)
- ctrl+a puis k : KILL la fenetre actuelle
- SPLIT de fenetre :
  - ctrl+a puis S : (S maj) coupe la fenetre en 2 consoles (ou plus si effectué plusieurs fois)
  - ctrl+a puis Tab : pour passer d'une fenetre à l'autre
  - sur une fenetre vide : ctrl+a puis c : nouveau terminal
  - sur une fenetre vide : ctrl+a puis " : choisir quelle fenetre afficher
  - ctrl+a puis X : (X maj) ferme une fenetre splitée
- ctrl+a puis d : détacher screen : càd envoyer screen en arrière plan et revenir à la console non émulée
  - screen -r : revenir à la console émulée au même endroit ou on l'avait laissée, même si on a fermé la console non émulée !
  - il est possible de lancer une nouvelle émulation avec seulement screen. Dans ce cas, il faudra préciser le numéro du screen en faisant : screen -r [numéro]
  - screen -ls : affiche la liste des screens actuellement lancés
  

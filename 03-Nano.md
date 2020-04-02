# L'éditeur de texte : NANO

## Raccourcis de Nano
En bas de page, on voit plusieurs raccourcis claviers, en tappant Ctrl + une lettre  
- Ctrl + G : afficher l'aide ;
- Ctrl + K : couper la ligne de texte (et la mettre dans le presse-papier) ;
- Ctrl + U : coller la ligne de texte que vous venez de couper ;
- Ctrl + C : afficher à quel endroit du fichier votre curseur est positionné (numéro de ligne…) ;
- Ctrl + W : rechercher dans le fichier ;
- Ctrl + O : enregistrer le fichier (écrire) ;
- Ctrl + X : quitter Nano.

## Démarrage Nano
- nano : lance nano pour créer un nouveau fichier
  - nano [nomFichier] : ouvre le fichier avec nano
  - nano -m : autorise l'utilisation de la souris
  - nano - i : indentation automatique
  - nano -A : retour intelligent en début de ligne lorsqu'on appuie sur la touche [Origine]  
  
On peut donc écrire :  
nano -miA [nomFichier]

## Configuration de Nano
Fichier de config situé dans /home/[userName]/.nanorc  
On peut configurer de prendre en compte les 3 options ci dessus par défaut !  
en écrivant set ou unset  
Dans notre cas :
- set mouse
- set autoindent
- set smarthome

Il existe aussi un fichier .nanorc global, pour tous les utilisateurs, situé ici : /etc/nanorc  
Nb ce fichier n'est modifiable que par root

## Configuration du terminal (tant qu'on est lancés..!)
De même, il y a un fichier de config personnel situé : /home/[userName]/.bashrc  
Possibilité de gérer la coloration, et de créer des alias  
Par exemple on peut créer l'alias
- alias ll='ls -larth'    pour un ls détaillé
- alias rm='rm --preserve-root'    pour éviter de supprimer tout le système par erreur..!  

Pour afficher tous les alias, taper "alias" dans le terminal  

Là encore on peut directement éditer le fichier de config global qui est ici : /etc/bash.bashrc

NB : il existe aussi un fichier .profile qui permet de configurer les consoles qui demandent un mot de passe lancées en appuyant sur Ctrl + Alt + F1 - F6. Mais dans tous les cas, .profile reprend les options de console graphique .bashrc.







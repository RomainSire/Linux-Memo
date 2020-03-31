# Utilisateurs et leurs droits

Un super-utilisateur "root" a tous les droits  
D'autres utilisateurs peuvent être créés et regroupés dans des groupes

## sudo - exécuter une commande en root
- sudo = devenir "root" temporairement, le temps d'une commande
- sudo su = devenir "root" et le rester (taper "exit" pour désactiver ce mode)

## Gestion des utilisateurs
NB : seul "root" peut gérer les utilisateurs
- adduser [userName] : ajouter un utilisateur. On va nous demander le mot de passe, et des informations complémentaires
- passwd [userName] : changer le mot de passe de l'utilisateur [userName]
- deluser [userName] : supprimer un utilisateur
  - deluser --remove-home [userName] : supprimer un utilisateur ET son dossier personnel home

## Gestion des groupes d'utilisateurs
Si on ne définir rien, un groupe utilisateur du même nom que l'utilisateur est créé.
- addgroup : créer un nouveau groupe
- usermod : modifier un utilisateur
  - -i : renommer l'utilisateur
  - -g : changer de groupe - syntaxe : usermod -g [groupName] [userName]
  - -G : utilisateur appartient à plusieurs groupes  - syntaxe : usermod -G [groupName1],[groupName2] [userName]
  - -aG : Ajouter un groupe à l'utilisateur
- delgroup : supprimer un groupe


## chown - Propriétaires d'un fichier
- chgrp : "change group" - changer le groupe propriétaire d'un fichier
  - Syntaxe : chgrp [nomGroupe] [fichier]
- chown : "change owner" - changer le propriétaire du fichier
  - Syntaxe : chown [newPropriétaire] [fichier]
  - chown [userName]:[groupName] [fichier] = changer le propriétaire ET le groupe en même temps
  - -R : affecter récursivement les sous-dossiers
  - exemple : chown -R [userName]:[groupName] [dossier]  = tous les dossiers et fichiers appartiendront à [userName]

## Droits d'accès
Pour visualiser les droits il suffit de regarder la 1ere colonne lorsqu'on fait un "ls -l" dans le terminal
Les droits d'accès sont "codés" avec 5 lettres :
- d : "directory" - indique que l'élément est un dossier
- l : "link" - indique que l'élément est un lien
- r : "read" - lire l'élément
- w : "write" - modifier/supprimer l'élément
- x : "eXecute" - exécuter l'élément (pour un exécutéble..)  ou  voir ses sous-dossiers (pour un dossier)  

Les droits sont découpés en fonction des utilisateurs :  
![schéma droits d'accès](https://user.oc-static.com/files/92001_93000/92092.png)  
- 1er triplet : droits du PROPRIETAIRE du fichier
- 2ème triplet : droits du GROUPE
- 3ème triplet : droits de tous les autres utilisateurs  

NB : pour modifier les droits d'un fichier, il faut que le fichier nous appartienne  
NB : dans tous les cas, ROOT a TOUS les droits !  

### chmod - attribuer les droits d'accès avec des chiffres
On attribue un chiffre à chaque droit :  
- r = 4
- w = 2
- x = 1

Il faut additionner ces chiffres pour donner un droit.  
Exemple : droit de lecture (4) et d'écriture (2) = 6  
Les nombres de base ont été choisis pour que chaque combinaison de triplet ait un seul numéro unique en additionnant.  
Il faut faire ce calcul pour chaque triplet  
Exemple : 640  
- 6 : droit de lecture et écriture pour le propriétaire
- 4 : droit de lecture pour le groupe
- 0 : aucun droit pour les autres  

Autres exemples :   
777 : droit "open bar" pour tout le monde  
000 : personne ne peut rien faire

Syntaxe : chmod [XXX] [Fichier]  
Exemple : chmod 600 monfichier.md

### chmod  relatif - modifier droit par droit, avec des lettres
Lettres disponibles :
- u = utilisateur propriétaire
- g = groupe
- o = other (les autres personnes)  

à cela, il faut rajouter que :
- \+ = ajouter le droit
- \- = supprimer le droit
- \= = affecter le droit

Syntaxe : chmod [ceQu'onVeutFaire] [fichier]  
Exemples :
- chmod g+w rapport.txt  =  ajouter droit d'écriture au groupe
- chmod u-x,o+rw rapport.txt  =  enlever le droit d'execution au propriétaire, et ajouter les droits de lecture et modif aux autres utilisateurs
- chmod go-w rapport.txt  =  enlever le droit de modif au groupe et aux autres
- chmod +x rapport.txt  =  ajouter le droit d'exécution à tout le monde
- chmod u=rwx,g=r,o=- rapport.txt  =  Affecter tous les droits au propriétaire, lecture au groupe, rien aux autres

NB : paramètre -R  : affecter récursivement les sous-dossiers  
Exemple : chmod -R 700 [dossier]




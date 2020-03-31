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

## chmod - Droits d'accès
Les droits d'accès sont "codés" avec 5 lettres :
- d : "directory" - indique que l'élément est un dossier
- l : "link" - indique que l'élément est un lien
- r : "read" - lire l'élément
- w : "write" - écrire l'élément
- x : "eXecute" - exécuter l'élément (pour un exécutéble..)  ou  voir ses sous-dossiers (pour un dossier)
Les droits sont découpés en fonction des utilisateurs :
![schéma droits d'accès](https://user.oc-static.com/files/92001_93000/92092.png)





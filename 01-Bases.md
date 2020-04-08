# Accès au terminal :
Ctrl + Alt + F1 --> F6   : 6 différentes consoles  
Ctrl + Alt + F7 : retour au mode graphique  
Le Terminal en mode graphique est + pratique..!


# Invite de commandes
userName@computerName:~$  
 - ~ est le dossier courrant
 - $ si utilisateur "normal", # si "superutilisateur" (root)


# Raccourcis clavier
- [Ctrl + R] : rechercher une commande précédemment tapée avec quelques lettres
- [Ctrl + L] ou "clear" : vide le terminal
- [Ctrl + D] ou "exit" : fermer le fichier ou le terminal
- [Shift + PgUp]  et  [Shift + PgDown] : se déplacer dans le terminal (si on ne veut pas utiliser la souris...)
- [Ctrl + A] ou touche [origine] : curseur au début de la commande
- [Ctrl + E] ou touche [fin] : curseur à la fin de la commande
- [Ctrl + U] : "Couper" tout ce qui est à gauche du curseur
- [Ctrl + K] : "Couper" tout ce qui est à droite du curseur
- [Ctrl + W] : "Couper" le premier mot situé directement à gauche du curseur
- [Ctrl + Y] : "Coller" ce qui a été "coupé" précédemment


# Commandes de bases
 - date : "date" - afficher la date et l'heure
 - history : afficher l'historique des commandes précédentes
 - ls : "list" - lister les dossier et fichiers peut prendre plusieurs paramètres :
   - [dossier] : liste les dossiers et fichiers dans le [dossier] enfant
   - -a : "all" - afficher aussi les fichiers cachés
   - -F : indique si dossier, fichier, ou raccourci
   - -l : liste détaillée
   - -h : taille lisible par un humain
   - -t : trier par date de dernière modification
   - -r : reverse = trier à l'envers
   - -larth : combine tout !!
 - pwd : "prind working directory" - afficher le chemin du dossier actuel
 - which : connaitre l'enplacement d'une commande
 - cd : "change directory" - changer de dossier
   - / : aller au dossier racine
   - .. : remonter au dossier parent
   - [n'importe quel dossier en chemin relatif]
   - /[n'importe quel dossier en chemin absolu]
   - [rien] : retour au dossier "home" de l'utilisateur
 - du : "disk usage" - taille des dossiers
   - -h : taille lisible par un humain
   - -a : taiille des dossiers ET des fichiers
   - -s : avoir juste la taille du total, sans le détail de chaque dossier

# Manipulation des fichiers
## Afficher un fichier
- cat : afficher tout le fichier
  - -n : afficher le numéro des lignes
- less : afficher le fichier page par page
  - [espace] ou [page Down] écran suivant    ==//==  [page Up] ou [b]  écran avant
  - [entrée] ou [fleche bas] ligne suivante  ==//==  [y] ou [fleche haut] ligne avant
  - [d] "down" demi-ecran suivant (11 lignes) ==//== [u] "up" demi-écran avant
  - [q]  quitter
  - [=] indique le % d'avancement de lecture du fichier
  - [h] help
  - [/]+texte : rechercher le texte
  - [n] : next prochaine occurence de la recherche
  - [N] : occurence précédente de la recherche
- head : Afficher le début d'un fichier
  - -n [nombre] : afficher [nombre] lignes. (exemple : head -n 5 syslog)
- tail : Afficher la fin d'un fichier
  - -n [nombre] : afficher [nombre] lignes. (exemple : tail -n 5 syslog)
  - -f : "follow" suivre la fin du fichier au fur et à mesure de son évolution (chaque secondes)
  - -f -s [nombre] : pareil, chaque [nombre] secondes
  - [Ctrl + c] : arrêter le tail
## Créer un fichier/dossier
- touch : changer la date d'un fichier, et... s'il n'est pas créé : le créer !!
  - [nomDuFichier] : paramètre de nom du fichier (plusieurs fichier peuvent être créés en même temps)
  - NB : nom de fichier avec espace : entourer de "guillemets" !
- mkdir : créer un dossier = fonctionne pareil que "touch"
  - -p [dossier/sousDossier1/sousDossier2] créer les sous-dossiers intermédiaires
## Copier, déplacer, renommer un fichier
- cp : "copy" - copier un fichier / des fichiers / des dossiers
  - cp [fichierACopier] [destinationDeLaCopie/nomDuFichierCopié]  On peut utiliser le chemin relatif ou absolu
  - -R : copier un dossier et ses sous-dossiers
  - \* : le Jocker (ou wildcard) permet de sélectionner tout !
  - exemple : cp \*.jpg monDossier/  = copie toutes les images jpeg dans monDossier
- mv : "move" - Déplacer et/ou Renommer un fichier ou un dossier
  - \* : on peut aussi utiliser le jocker
  - déplacer et renommer en même temps : mv [fichierADéplacer] [monDossier]/[nouveauNom]
## Supprimer un fichier
- rm : "remove" - supprimer un fichier / des fichiers / des dossiers / TOUT /!\
  - rm [fichier1] [fichier2] = suppr plusieurs fichiers
  - -i : demander une confirmation de suppression: répondre o/n
  - -f : Forcer la suppression !
  - -v : "verbose" affiche les détails de suppression (utile si bcp de choses à supprimer)
  - -r : supprimer un dossier et son contenu (dossiers et fichiers)
  - \* : EXTREME PRUDENCE si on utilise rm avec \*  = dangereux !  (NE PAS FAIRE : rm -rf /\*)
## Liens vers des fichiers
Il existe 2 types de liens :
- lien physique : permet d'avoir 2 noms de fichiers qui partagent le même contenu = inode (ne fonctionne qu'avec des fichiers, pas des dossiers)
  - ln : "link" - créer un lien physique
  - exemple : [fichier1] existe, donc "ln fichier1 fichier2"  ==> 2 noms (fichier1 et fichier2) pour le même contenu
- lien symbolique : similaire aux "raccourcis" de Windows...
  - ln -s fichier1 fichier2 : créer un lien symbolique (fichier2) qui pointe donc vers un autre nom de fichier (fichier1)
  - fonctionne aussi avec les dossiers


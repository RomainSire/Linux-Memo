# Editeur de texte Vim
2 editerus de texte puissants sont disponibles Vim et Emacs. On va ici voir Vim, mais Emacs serait tout aussi bien.  
NB : il existe aussi un Vim en mode graphique : gVim ou vim-gnome

## Vimtutor : tuto pour vim
lancer vimtutor pour suivre un tutoriel sur l'utilisation de Vim.

## Modes d'étition
- mode intéractif : mode par défaut au démarrage de vim
- mode insertion : permet de tapper du texte. Pour y entrer, taper "i". Pour en sortir "Echap"
- mode commande : lancer des commandes. Pour y entrer, taper ":". Pour en sortir "Echap"

## Les bases
### Lancement
- vim : ouvre un nouveau document
- vim [monFichier] : ouvre un fichier existant

### Déplacements
- h, j, k, l : se déplacer à gauche, bas, haut, droite
- 0 : aller en début de ligne
- $ : aller en fin de ligne
- w : se déplacer mot par mot
- ctrl + g : savoir à quelle ligne on se situe (aussi affiché en bas à droite de la fenetre)
- gg : aller au début du fichier
- G : aller à la fin du fichier
- 135G : aller à la ligne 135


### Edition
- i : insérer du texte en mode insertion
- A : Aller en fin de ligne et en mode insertion
- r : remplacer 1 lettre
- u : annuler une modification
  - Ctrl + R : annuler l'annulage !
- U : annuler les modufications d'une ligne entière

- x : supprimer une lettre
- 4x : supprimer 4 lettres à partir du curseur

- dd : supprimer (couper) une ligne
- 3dd : supprimer (couper) 3 lignes
- dw : supprimer (couper) un mot
- 5dw : supprimer (couper) 5 mots
- d$ : supprimer (couper) du curseur jusqu'à la fin de la ligne
- d0 : supprimer (couper) du début de la ligne jusqu'au curseur

- yy : copier la ligne actuelle
- yw : copier le mot actuel
- etc.

- p : coller (si une ligne a été copiée, elle sera collée à la ligne suivante, pas forcément au curseur)
- 5p : coller 5 fois

### Commandes
- :q! : pour quitter sans enregistrer
- :wq : pour quitter en enregistrant
- :w [nomFichier] : enregistrer le fichier, sous le nom nomFichier


## Opérations avancées
### Recherche
- /[motRecherché] : chercher mot. "n" mot suivant, "N" mot précédent
- ?[motRecherché] : pareil mais dans l'autre sens
- % : à faire sur un ()[]{} rechercher la parenthèse ouverte/fermante correspondante
- s/ancienMot/nouveauMot : remplace la première occurence de l'ancienMot par le nouveauMot
- s/ancienMot/nouveauMot/g : remplace toutes les occurence sur la même ligne du curseur
- #,#s/ancienMot/nouveauMot/g : remplace toutes les occurence entre la ligne # et #
- %s/ancienMot/nouveauMot/g : remplace toutes les occurences dans tout le fichier
- %s/ancienMot/nouveauMot/gc : pareil, mais avec une invite pour (yes/no) chaque substitutions

### Fusion de fichier
- v + descendre le curseur : sélectionne du texte
- :w [newFichier] : enregistre la sélection dans un nouveau fichier
- :r [unAutreFichier] : insère le contenu d'un autre fichier à la position du curseur

### Split
- :sp : découoper l'écran horizontalement (le même fichier est ouvert)
- :sp [autreFichier] : découpe l'écran et ouvre un autre fichier
- :vsp : découpe l'écran verticalement
- commandes spéciales :
  - ctrl + w puis ctrl + w: change de viewport
  - ctrl + w puis h, j, k, ou l : change de viewport en haut, bas, gauche, droite
  - ctrl + w puis q : ferme le viewport actuel

### Lancer une commande externe
- :! : lancer une commande externe à vim, sans devoir quitter vim
- Exemple :
  - :!ls : liste les fichiers du dossier actuel


## Les options de Vim
Il est possible d'activer/désactiver des options, et aussi d'installer des plugins

### Dans vim pour 1 seule fois
- :set option : activer une option
- :set nooption : désactiver une option
- :set option=valeur : attribuer une valeur à une option
- :set option? : connaitre l'état d'une option

### Fichier de config
Créer un fichier .vimrc dans le home. Un fichier "modèle" est déjà présent dans /et/vim/vimrc, le mieux c'est de le copier dans home  
On peut ensuite l'éditer en décommentant les options intéressantes.









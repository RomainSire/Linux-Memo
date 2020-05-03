# Les variables

## Déclarer une variable
- nomVariable=Valeur : ne pas lettre d'espace autour du signe "="
- pour du texte, l'entourrer de quotes : 'blabla'
  - 'les simples quotes' : les variables à l'intérieur ne sont pas interprétées : le $nomVariable est affiché
  - "les doubles quotes" : les variables à l'intérieur sont interprétées : la valeur de la variable est affichée
  - `les back quotes` : les variables sont exécutées !
    - exemple :
    - variable=`pwd`
    - echo "le dossier est : variable"
    - on aura le résultat : le dossier est : /home/toto/test
- pour échapper un caractère : antislash \

## Afficher une variable : echo
- echo renvoit dans la console tous les paramètres reçus
- echo Hello World : 2 paramètres reçus, hello et world sont affichés dans la console
- echo "hello world" : 1 seul paramètre reçu, mais hello world sera affiché de la même façon
- echo -e "1ere ligne \n 2eme ligne" : -e et \n permet de sauter des lignes
- echo $variable : afficher une variable. il faut alors ajouter "$" devant la variable !

## Demander la saisie : read
- read nomVariable : affiche un prompt à l'utilisateur, puis stocke le résultat dans la variable
- read var1 var2 : affecter simultanément une valeur à plusieurs variables (séparé par des espaces !)
- read -p 'message à l'utilisateur' nomVariable : affiche un message de prompt
- read -n nombre nomVariable : limiter le nombre de caractère que l'utilisateur peut rentrer
  - Exemple : read -p 'entrer votre trigramme (3 caractères max) : ' -n 3 trigramme
- read -t nombre nomVariable : définir un timeout, après lequel read s'arrête
- read -s nomVariable : ne pas afficher les caractères saisis (pour les mots de passe par exemple..)

## Opérations mathématiques
- Par défaut tout est considéré comme une chaine de caractère.
  - let : Permet de travailler avec des nombres entiers
  - bc : pour les nombres décimaux
- Opérateurs :
  - Addition : +
  - Soustraction : -
  - Multiplication : *
  - Division : /
  - Puissance : **
  - Modulo : %
- Exemple :
  - let "a = 5"
  - let "b = 3"
  - let "c = a + b"
  - echo $c   ==>  ça donnera 8

## Variables d'environnement (= variables globales)
- env : afficher toutes les variables globales de bash. On y trouve par exemple :
  - SHELL : type de shell en cours d'utilisation
  - PATH : vu auparavant : liste des dossiers ou se trouvent les exécutables
  - EDITOR : éditeur par défaut
  - HOME : position du home
  - PWD : dossier actuel
  - OLDPWD : dossier ou on se trouvait auparavant
- On peut utiliser ces variables dans un script en les appelant norlament : $EDITOR par exemple

## Variables des paramètres
Il est possible d'appeler le script avec des paramètres : ./monScript.sh param1 param2 param3
- $# : contient le nombre de paramètres
- $0 : contient le nom du script (exemple : ./monScript.sh)
- $1 : 1er paramètre
- $2 : 2eme paramètre
- ...
- $9 : 9ème paramètre
- Si on a plus que 9 paramètres, on utilisera la commande "shifs" ce qui permet de "décaler les paramètres" :
  - avant le shift $1 correspond au paramètre 1
  - shift
  - après ce shift $1 correspond au paramètre 2


## Les tableaux
- les tableaux commencent à l'indice 0
- la numérotation des indices n'a pas besoin d'être continue
- tab=('valeur0' 'valeur1' 'valeur2') : définir un tableau
- tab[2]='valeur2' : assigner une valeur à une "case" du tableau
- ${tab[2]} : accède à la valeur 2 du tableau tab
- ${tab[*]} : afficher toutes les valeurs du tableau









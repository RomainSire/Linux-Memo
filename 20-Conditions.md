# Les conditions

## Conditions de base : if, elif, else
Attention il doit y avoir des espaces à l'intérieur des crochets des tests !
```bash
if [ test1 ]  
then
  # instructions si le test1 est vrai
elif [ test2 ]
then
  # instructions si le test2 est vrai
elif [ test3 ]
then
  # instructions si le test3 est vrai
else
  # instructions si tous les tests sont faux
fi
```

## Les tests
### Tests sur les chaines de caractères
- $chaine1 = $chaine2 : vérifie si les chaines sont identiques (sensible à la casse)
- $chaine1 != $chaine2 : vérifie la différence de 2 chaines
- -z $chaine : vérifie si la chaine est vide (ou si le paramètre existe..!)
- -n $chaine : vérifie si la chaine est non vide

### Tests sur les nombres
Bash gère les variable comme des chaines de caractères, mais on peut quand même effectuer des tests sur les nombres :
- $num1 -eq $num2 : égalité (en PHP: $num1 == $num2)
- $num1 -ne $num2 : non égalité (en PHP: $num1 != $num2)
- $num1 -lt $num2 : inférieur strict (en PHP: $num1 < $num2)
- $num1 -le $num2 : inférieur ou égal (en PHP: $num1 <= $num2)
- $num1 -gt $num2 : supérieur strict (en PHP: $num1 > $num2)
- $num1 -ge $num2 : supérieur ou égal (en PHP: $num1 >= $num2)

### Tests sur les fichiers
- -e $nomfichier : vérifie si le fichier existe
- -d $nomfichier : vérifie si c'est un dossier
- -f $nomfichier : vérifie si c'est un fichier et pas un dossier
- -L $nomfichier : vérifie si c'est un lien symbolique
- -r $nomfichier : vérifie si le fichier est lisible
- -w $nomfichier : vérifie si le fichier est modifiable
- -x $nomfichier : vérifie si le fichier est exécutable
- $fichier1 -nt $fichier2 : newer than : fichier1 plus récent que fichier2
- $fichier1 -ot $fichier2 : older than : fichier1 plus ancien que fichier2

### OU et ET
- && signifie ET
- || signifie OU
- Exemple :

```bash
if [ test1 ]  && [ test2 ]
then
  # instructions si le test1 ET le test2 sont vrais
fi
```

### Inverser un test : !
La négation d'un test est exprimée grâce au caractère ! placé avant le test.  
Exemple :
```bash
if [ ! -e fichier ]  
then
  echo "le fichier n'existe pas"
fi
```


## Le case (switch case en JS)
```bash
case $variable in
        "valeur1")
              # instructions si la variable est égale à la valeur1
              ;;
        "valeur2" | "valeur3")
              # instructions si la variable est égale à la valeur2 ou à la valeur3
              ;;
        "C*")
              # instructions si la variable commence par un "C" (l'étoile * est le jocker en bash..)
              ;;
        *)
              # instructions exécutées dans tous les autres cas (équivalent du else)
              ;;
esac
```


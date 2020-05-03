# Les boucles

## While : tant que
```bash
while [ test ]
do
   # instructions à faire tant que le test est vrai
done
```

NB : il existe le mot clé "until" qui fonctionne comme "while", mais qui fonctionne de manière opposée

## For : boucle sur une liste de valeur
Attention : fonctionnement différent que pour les autres langages de prog, ça correspond plutot à un foreach en PHP
```bash
for variable in 'val1' 'val2' 'val3'
do
    # instruction à réaliser pour chaque valeur de variable
done
```
Exemple : renommer tous les fichiers du dossier
```bash
#!/bin/bash
for fichier in `ls`
do
    mv $fichier $fichier-old
done
```

Pour avoir une boucle FOR plus classique :
```bash
#!/bin/bash
for i in `seq 1 10`;
do
        echo $i
done
```

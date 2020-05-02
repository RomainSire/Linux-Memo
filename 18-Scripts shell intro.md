# Introduction aux scripts shell
## Définition
Le shell est un environnement console. Il en existe plusieurs :  
- sh: le shell original et le plus ancien
- bash : le plus commun
- ksh, csh, tcsh, zsh : plus perfectionnés mais moins communs

On s'attardera ici sur le bash

## Un script simple
- vim monScript.sh : création du fichier (l'extension .sh est facultative)
- #!/bin/bash : indique quel shell on utilise = sha-bang ou shebang
- on tappe ensuite les commandes (pareil que dans la console !). Exemple: ls
- #Commentaires : les commentaires commencent par #
- enregistrer et quitter

## Exécuter le script
### Donner les droits d'exécution
Pour exécuter un script, il faut qu'il ait les droits d'exécution : ce n'est pas le cas par défaut.
- chmod +x monScript.sh : donne les droits d'exécution
### Exécution du script
- ./monScript.sh : exécute le script grâce à "./" placé devant le nom du script
### Débuggage
- bash -x monScript.sh
### Sa propre commande
Pour exécuter le script sans devoir taper "./" devant, il faut que le programme soit situé dans l'un des dossier spéciaux  
- echo $PATH : affiche la liste de ces dossiers spéciaux
- en root, déplacer le script dans l'un de ces dossiers, et il peut ensuite être lancé seulement en tappant son nom.
- dans /usr/local/bin ou /bin ou encore /usr/bin par exemple..


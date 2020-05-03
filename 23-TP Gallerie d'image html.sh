#!/bin/bash

#---------------------------------------#
# Création d'une gallerie d'images HTML #
#---------------------------------------#

# Nom de la page html qui sera créée.
if [[ -n $1 ]]; then
  htmlFileName=$1
else
  htmlFileName='gallerie'
fi

# Initialisation du fichier html

echo '<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <p>' >> "$htmlFileName.html"


# Créer un dossier ou seront placées les miniatures
if [[ ! -e min ]]; then
  mkdir min
fi

# Sélection des images en utilisant les expressions régulières
images=`find ./ -regex  '.*\(jpg\|jpeg\|png\|gif\)$'`

# Pour chaque image, de la liste
for image in $images; do
  # Création d'une thumbnail de taille max 400x400
  convert $image -thumbnail 300x300 min/$image
  # ajout du lien et de l'image dans le fichier html
  echo "      <a href=\"$image\"><img src=\"min/$image\" alt=\"\"></a>" >> "$htmlFileName.html"
done

# finalisation du fichier html
echo '    </p>
  </body>
</html>' >>  "$htmlFileName.html"



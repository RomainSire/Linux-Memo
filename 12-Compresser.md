# Archiver et Compresser

## Assembler plusieurs fichiers dans une archive : tar
gzip et bzip2 ne permettent de compresser qu'un seul fichier à la fois. Il faut donc d'abord rassembler les fichier dans 1 seul gros fichier avec tar, qu'on pourra ensuite compresser avec gzip ou bzip2  
- Avant tout, placer les fichiers à archiver dans un seul et même dossier (pas obligé, mais plus pratique)
- tar -cvf archive.tar monDossier/ : crée une archive.tar de monDossier
  - \-c : créer une archive tar
  - \-v : afficher le détail des opérations
  - \-f : assembler l'archive dans un fichier
- tar -rvf archive.tar fichierSupplémentaire : ajouter un fichie à une archive
- tar -tf archive.tar : afficher le contenu d'une archive sans l'extraire
- tar -xvf archive.tar : extraire les fichiers de l'archive

## Compresser une archive : gzip et bzip2

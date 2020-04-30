# Archiver et Compresser

## Assembler plusieurs fichiers dans une archive : tar
gzip et bzip2 ne permettent de compresser qu'un seul fichier à la fois. Il faut donc d'abord rassembler les fichier dans 1 seul gros fichier avec tar, qu'on pourra ensuite compresser avec gzip ou bzip2   
Avant tout, placer les fichiers à archiver dans un seul et même dossier (pas obligé, mais plus pratique)  
- tar -cvf archive.tar monDossier/ : crée une archive.tar de monDossier
  - \-c : créer une archive tar
  - \-v : afficher le détail des opérations
  - \-f : assembler l'archive dans un fichier
- tar -rvf archive.tar fichierSupplémentaire : ajouter un fichie à une archive
- tar -tf archive.tar : afficher le contenu d'une archive sans l'extraire
- tar -xvf archive.tar : extraire les fichiers de l'archive

## Compresser une archive : gzip et bzip2
### le plus utilisé : gzip
- gzip archive.tar : compresse l'archive ! (ne crée pas de nouveau fichier, rajoute un .gz à la fin)
- gunzip archive.tar.gz : décompresse l'archive
### meilleure compression mais plus lent : bzip2
- bzip2 archive.tar : compresser
- bunzip2 archive.tar.bz2 : décompresser
### Archiver et compresser en même temps : tar
Rajouter z (pour gzip) ou j (pour bzip2) avant les options de tar.  
Exemples :  
- tar -zcvf archive.tar.gz monDossier/ : crée une archive et la compresse avec gzip
- tar -zxvf archive.tar.gz : décompresse et désarchive avec gzip
- tar -jcvf archive.tar.gz monDossier/ : crée une archive et la compresse avec bzip2
- tar -jxvf archive.tar.gz : décompresse et désarchive avec bzip2
### Afficher un fichier compressé : zcat, zmore, zless
Il est possible de compresser un fichier et non pas seulement une archive.  
Pour afficher ce fichier sans le décompresser avant :
- zcat : équivalent de cat (afficher tout le fichier)
- zless: équivalent de less (afficher page par page)
- zmore : équivalent de more (afficher page par page)

## Décompresser les .zip et .rar
- unzip archive.zip : dézipper. la commande unzip n'est pas forcément installée, le faire si besoin
- unzip -l archive.zip : afficher le contenu sans dézipper
- zip -r archive.zip monDossier/ : zipper un dossier
- unrar e archive.rar : décompresser un rar (pas de tiret avant l'option "e"!)
- unrar l archive.rar : afficher le contenu sans décompresser
- rar est propriétaire donc on ne peut pas créer des archives en .rar








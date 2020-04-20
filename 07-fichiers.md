# Opérations sur les fichiers
## GREP : filtrer les données
Chercher un mot dans un fichier, et afficher toutes les lignes trouvées.  
- grep [texteARechercher] [monFichier]
- grep "plusieurs mots séparés" monFichier : recherche avec espace --> utiliser les guillemets
  - grep -i texte monFicher : ne tient pas compte de la casse
  - grep -n texte monFichier : afficher numéro de ligne
  - grep -v texte monFichier : affiche toutes les lignes qui NE CONTIENNENT PAS le texte
  - grep -r texte dossier : (ou rgrep) "récursif" cherche dans tous les fichiers et sous-dossiers  

Il est possible d'utiliser des expressions régulières pour faire les recherches.
- Dans ce cas, utiliser "grep -E" OU "egrep"
  - grep -E ^alias .bashrc : chercher "alias" qui est placé en début de ligne
  - grep -E [Aa]lias .bashrc : chercher alias ou Alias

## SORT : trier les lignes
- sort monFichier : trier les lignes par ordre alphabétique, et afficher dans le terminal
- sort -o monFichierTrié monFichier : écrit le résultat trié dans un nouveau fichier
- sort -r monFichier : "reverse" trier en sens inverse
- sort -R monFichier : "random" trier aléatoirement
- sort -n monFichier : trier les nombres (par défaut ça trie de manière alphanumérique, avec -n ça va trier de manière croissant)

## WC : compter le nombre de lignes
wc = "world count" : compter le nombre de mots  
Mais ça sert aussi à compter le nombre de lignes ou compter le nombre de caractères
- wc monFichier : renvoie 3 nombres à la suite
  1. nombre de lignes
  2. nombre de mots
  3. nombre d'octets
- wc -l : compter les lignes
- wc -w : compter les mots
- wc -c : compter les octets
- wc -m : compter les caractères

## UNIQ : supprimer les doublons






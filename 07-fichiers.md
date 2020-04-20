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

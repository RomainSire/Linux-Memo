# Les flux de redirection
Principe : rediriger le résultat d'une commande dans un fichier plutot que l'afficher dans le terminal, OU chaîner les commandes.

## Rediriger le résultat dans un fichier : > et >>
- [Commande] > nouveauFichier : le caracrère ">" permet d'enregistrer le résultat de la commande vers un nouveau fichier. Attention, si le fichier existe déjà, il sera écrasé !
- Il est possible de rediriger ves un dossier "poubelle" si on ne veut ni voir, ni sauvegarder le résultat d'une commande : [commande] > /dev/null
- [commande] >> fichier : le ">>" permet d'enregistrer le résultat À LA FIN d'un fichier existant. Le fichier est créé s'il n'existe pas.  

![redirection dans un fichier](https://user.oc-static.com/files/137001_138000/137849.png "redirection dans un fichier")

## Rediriger les erreurs : 2>, 2>>, 2>&1
Il y a en fait, 2 flux de données suite à une commande :
- sortie standard
- sortie d'erreur  
 
 ">" et ">>" permet de rediriger seulement le flux standard, mais les erreurs continuent de s'afficher dans le terminal.  
 Pour rediriger le flux d'erreurs, on utilise : "2>" :
 - [Commande] 2> erreurs.log : redirige les erreurs dans le fichier log
 - [Commande] > fichier.txt 2> erreurs.log : rediriger les 2 flux en même temps dans 2 fichiers séparés.  

De même que précédemment on peut utiliser "2>>" pour écrire à la fin du fichier sans l'écraser.

"2>&1" : fusioner les 2 flux de sortie (standard et erreurs) dans un même fichier.  
Syntaxe :
- [commande] > fichierDestination 2>&1 : mets tous les flux dans le fichier de destination
- [commande] >> fichierDestination 2>&1 : mets tous les flux À LA FIN du fichier de destination  

![redirection des erreurs](https://user.oc-static.com/files/137001_138000/137859.png "redirection des erreurs")

## Lire depuis un fichier ou depuis le clavier : < et <<
### Lire depuis un fichier : <
- [commande] < fichierD'Entrée : la commande reçoit le contenu du fichier d'entrée
### Lire depuis le clavier : <<
- [commande] << MOTCLÉSTOP : la commande reçoit le contenu envoyé par le clavier, jusqu'à ce que le mot clé stop soit tapé.  

Exemple :  
- sort -n << FIN : puis il faut renseigner une série de nombres, à la fin écrire FIN, puis la commande va pouvoir trier les nombres qu'on a rentré.  

NB : on peut bien sûr combiner les "<<" avec les ">>" et autres vus précédemments pour enregistrer les sorties dans des fichiers

![Lire depuis un fichier ou depuis le clavier](https://user.oc-static.com/files/138001_139000/138421.png "Lire depuis un fichier ou depuis le clavier")











# Connexion sécurisée à distance avec SSH

## Sécurité
Telnet est l'ancètre de SSH, mais non scurisé : tout transite en clair !  
SSH sécurise touts les échanges avec un chiffrement asymétrique à la connexion, puis un chiffrement symétrique lors des échanges.  
Fonctionnement :  
  - Le serveur crée une paire de clé publique et privée, et envoie la clé publique au client
  - Le client crée une clé symétrique et la crypte avec la clé publique
  - le client envoie la clé symétrique cryptée au serveur
  - le serveur cécrypte avec la clé privée et obtient donc la clé symétrique
  - les échanges sont ensuite cryptés avec la clé symétrique

## Se connecter avec SSH et PuTTY
### Sur l'ordinateur distant (serveur) :
- sudo apt-get install openssh-server : installer ssh
- sudo /etc/init.d/ssh start : démarrer le serveur ssh
- sudo /etc/init.d/ssh stop : arrêter le serveur ssh
- sudo /etc/init.d/ssh reload : redémarrer le serveur ssh
- sudo nano /etc/ssh/ssh_config : éditer le fichier de configuration ssh

### Sur l'ordinateur client : 
- ssh login@ip.ip.ip.ip  : se connecter en tant qu'utilisateur [login] sur le serveur à l'adresse ip.ip.ip.ip
- ssh login@ip.ip.ip.ip -p port : pareil, mais en passant par un port spécifique. Port ssh par défaut: 22
- le prompt de la console change alors pour correspondre à celui du pc distant (serveur) !  :)
- on est maintenant comme si on était sur le serveur. Toutes les commandes du serveur fonctionnent normalement
- logout ou Ctrl+D : loggout et revenir à la console du pc client

### Si le client est une machine windows
On peut utiliser le logiciel PuTTY (ou autre soft similaire)  
Pas besoin de ce soft avec Windows 10

## Authentification automatique par clé
Cette authentification permet de ne pas avoir à retapper le mot de passe à chaque fois.
### Mise en place sur le pc client Linux
- ssh-keygen -t rsa : mettre "rsa" ou "dsa" selon le type d'algorythme choisi. Permet de créer la paire de clés. Plusieurs questions seront posées. ne rien changer. Mettre une passphrase si le pc client n'est pas forcément très sécurisé ou public..
- cd .ssh : aller dans le dossier .ssh dans le homme
- ls :
  - id_rsa : la clé privée à ne pas diffuser. éventuellement protégée par la passphrase
  - id_rsa.pub : la clé publique à envoyer au serveur
  - known_hosts : la liste des fingerprint de tous les serveurs auxquels on s'est connecté
- ssh-copy-id -i id_rsa.pub login@ip.ip.ip.ip : envoyer la clé publique au serveur
- entrer la mot de passe du serveur. Et la clé est ajoutée au serveur ! :)

Pour se connecter ensuite :
- ssh login@ip.ip.ip.ip
- puis il faut entrer la passphrase locale

Agent SSH : Pour ne pas devoir entrer la passphrase à chaque fois !
- ssh-add : permet de lancer l'agent ssh, il cherche la clé et demande la passphrase
- Ensuite l'agent garde cette passphrase en mémoir et ne la redemande plus..

### Mise en place sur le pc client Windows avec PuTTY
- INSTALLER PuTTy, et non pas seulement la version portable
- utiliser le soft Puttygen pour générer les clés
- rajouter ensuite la clé publique dans le fichier "authorized_keys" du serveur à la main, en se connectant au serveur normalement, et en faisant un copier coller depuis Puttygen !
- ensuite configurer putty pour se connecter avec la clé privée. Dans les options : connection / ssh / Auth : browser pour sélectionner le fichier de clé privé.
- dans les options: Connection / Data, mettre le username par défaut
- mettre la bonne ip de connexion dans le menu principal et enregistre les modifications.
- utuliser ensuite l'agent SSH Pageant installé avec Putty pour enregistrer la passphrase !

# Analyser le réseau et filtrer le trafic avec un pare-feu

## host & whois
- host [nomDeDomaine] : donne l'IP associée
- host [ip] : donne le nom de domaine (ou un autre synonyme)

Une liste LOCALE de DNS est enregistrée sur l'ordinateur : sudo nano /etc/hosts  
Il est possible d'en rajouter. (tous les PC présents sur le réseau local par exemple)  

Info de nom de domaine :
- whois [nomDeDomaine] : obtient les infos sur n'importe quel nom de domaine

## Gérer et analyser le trafic
### Liste des interfaces réseau : ifconfig
- ifconfig : revoie la liste des interfaces réseau et leur info
  - eth0 : correspond à la connexion par câble réseau RJ45
  - lo : boucle locale = connexion à moi même !
  - wlan0 : connexion WiFi
- ifconfig [nomInterface] [up ou down] : permet activer ou désactiver une interface. Renseigner le nom de l'interface à modifier, pui le mot clé up ou down pour l'activer ou la désactiver.
### Statistiques sur le réseau : netstat
- netstat -i : affiche l'activité des différentes interface dans un tableau
- netstat -uta : lister toutes les connexions ouvertes
  - -u : afficher les connexions udp
  - -t : afficher les connexions tcp
  - -a : afficher toutes les connexions qu'importe leur état
  - différentes états sont possibles :
    - ESTABLISHED : connexion établie
    - TIME_WAIT : connexion attent le traitement de tous les paquets avant la fermeture
    - CLOSE_WAIT : le serveur distant a arrêté la connexion (timeout)
    - CLOSED : connexion arrêtée
    - CLOSING : connexion en train de se fermer
    - LISTEN : écoute les connexions entrantes
    

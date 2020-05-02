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
  - -l : afficher seulement les connexion en étât LISTEN
  - -n : pour afficher le numéro de l'ip et du port plutôt que sa description
  - différentes états sont possibles :
    - ESTABLISHED : connexion établie
    - TIME_WAIT : connexion attent le traitement de tous les paquets avant la fermeture
    - CLOSE_WAIT : le serveur distant a arrêté la connexion (timeout)
    - CLOSED : connexion arrêtée
    - CLOSING : connexion en train de se fermer
    - LISTEN : écoute les connexions entrantes
- netstat -lt : liste des connexions en état d'écoute
- netstat -s : statistiques résumées

## Pare-feu : iptables
Principe d'un pare feu : bloquer tous les ports (=les portes!) et en ouvris seulement celle dont on a besoin. C'est une sécurité pour compliquer l'accès à la machine et/ou l'envoi de données par des programmes malveillants.  
- iptables s'utilise toujours en root. Donc autant passer directement en superuser : sudo su
### Afficher les règles : iptables -L
- iptables -L --line-numbers :  affiche les règles. Par défaut, il n'y a pas de règles. Il y a 3 sections :
  - chain INPUT : trafic entrant
  - chain FORWARD : règles de redirection
  - chain OUTPUT : trafic sortant
- iptables -F : !! RESET TOUTES LES RÈGLES
### Prnicipe
- L'ordre des règles est important et se lit de haut en bas
- chaque ligne correspond à une règle, avec les infos :
  - target : ce que fait la règle (ACCEPT par ex)
  - prot : protocole : tcp, udp, icmp (pour les pings)
  - source : IP source
  - destination : IP de destination
  - indique le port après les ":"
### Ajouter et supprimer des règles
- iptables -A (chain) -p (protocole) --dport (port) -j (décision) : syntaxe classique, avec :
  - -A chain : ajoute une règle en fin de liste pour la chai nindiquée (INPUTouOUTPUT, par exemple)
  - -D chain rulenum : supprime la règle n° rulenum pour la chain indiquée
  - -I chain rulenum : insère une règle au milieu de la liste à la position indiquée par rulenum
  - -R chain rulenum : remplace la règle n° rulenum dans la chain indiquée
  - -L : liste les règles
  - -F chain : vide toutes les règles de la chain indiquée
  - -P chain regle : modifie la règle par défaut pour lachain. Cela permet de dire, par exemple, que par défaut tous les ports sont fermés, sauf ceux que l'on a indiqués dans les règles.
- Exemples :
  - iptables -A INPUT -p tcp --dport ssh -j ACCEPT : accepte des données tcp sur le port ssh

[Plus d'infos sur OpenClassrooms](https://openclassrooms.com/fr/courses/43538-reprenez-le-controle-a-laide-de-linux/42264-analyser-le-reseau-et-filtrer-le-trafic-avec-un-pare-feu#/id/r-2283535)


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

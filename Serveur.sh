#!/bin/bash

# Informations sur le serveur distant
remote_username="Julien"
remote_hostname="10.31.32.36"
remote_directory="C:\Users\Julien\Desktop\test"

# Chemin du fichier local à sauvegarder
local_file="test.txt"

# Utilisation de scp pour copier le fichier sur le serveur distant
scp "$local_file" "$remote_username@$remote_hostname:$remote_directory"

echo "Sauvegarde terminée avec succès."

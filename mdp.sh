#!/bin/bash

# Nom du fichier de mots de passe chiffré
password_file="passwords.gpg"

# Vérifier si le fichier de mots de passe existe, sinon le créer
if [ ! -e "$password_file" ]; then
    touch "$password_file"
fi

# Fonction pour ajouter un mot de passe
add_password() {
    echo -n "Entrez le nom d'utilisateur: "
    read username
    echo -n "Entrez le mot de passe: "
    read -s password
    echo

    # Chiffrer et ajouter au fichier
    echo "$username:$password" | gpg --batch --yes --passphrase-fd 0 --output - --symmetric "$password_file" 2>/dev/null >> "$password_file"
    echo "Mot de passe ajouté avec succès."

}

show_passwords() 
{
        cat passwords.gpg 
}



# Menu principal
while true; do
    echo "1. Ajouter un mot de passe"
    echo "2. Afficher les mots de passe"
    echo "3. Quitter"
    echo -n "Choisissez une option: "
    read option

case $option in
        1) add_password;;
        2) show_passwords;;
        3) exit;;
        *) echo "Option invalide";;
    esac
done


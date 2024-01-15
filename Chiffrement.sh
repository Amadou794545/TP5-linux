Lshow() {
   lshow
}

LshowShort() {

        lshow --short
}

HwInfo() {
        hwinfo
}

HwInfoShort() {
        hwinfo --short
}

# Menu principal
while true; do
    echo "1. Pour afficher les composants matériels d’un PC en liste"
    echo "2. afficher la configuration matérielle d’un PC"
    echo "3. Pour afficher un résumé court de la configuration matérielle"
    echo "3. Pour afficher un résumé plus court de la configuration matérielle"
    echo "4. Quitter"
    echo -n "Choisissez une option: "
    read option

case $option in
        1) Lshow;;
        2) LshowShort;;
        3) HwInfo;;
        4) HwInfoShort;;
        4) exit;;
        *) echo "Option invalide";;
    esac
done
#!bin/bash

# 05-05-02-multirenommage.sh
# Renomme les fichiers donnés en paramètre en ajoutant un suffixe -old
# Demande une saisie utilisateur si aucun fichier à modifier n'est indiqué en paramètres.
typeset -a tableau_file

if [[ $# -eq 0 ]]
then
    while [[ -z $rep ]] || [[ $rep != "oui" ]] || [[ $rep != "o" ]]
    do 
        read -p "Voulez-vous renseigner un nom de fichier à modifier ? [oui/non] " rep
        if [[ $rep = "non" ]] || [[ $rep = "n" ]]
        then
            break
        fi
        read -p "Indiquez le nom du fichier à modifier : " file
        tableau_file=("${tableau_file[@]}" "$file") 
    done
else
    tableau_file=("$@")
fi

for fichier in "${tableau_file[@]}"
do
    mv "$fichier" "$fichier-old"
done

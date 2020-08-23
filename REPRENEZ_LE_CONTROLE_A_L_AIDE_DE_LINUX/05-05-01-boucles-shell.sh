#!/bin/bash

# while : boucler "tant que"
while [[ -z $reponse ]] || [[ $reponse != "oui" ]]; do
    # Tant qu'on ne dit pas oui ou que la réponse est vide, on demande une réponse.
    read -p "Dites oui : " reponse
done

# la boucle until fait l'inverse de la boucle while : elle boucle "jusqu'à ce que".

# for : boucler sur une liste de valeurs
# le for shell ne se comporte pas de la même façon qu'un for PHP ou C
for animal in "chien" "souris" "chat"; do
    echo "Animal en cours d'analyse : $animal"
done

liste_fichiers=`ls`
for fichier in $liste_fichiers
do
    echo "Fichier trouvé : $fichier"
done

# un for plus classique
for chiffre in `seq 0 9`
do
    echo "$chiffre"
done

echo "seq de 1 à 9 pas de 3."
for chiffre in `seq 0 3 9`
do
    echo "$chiffre"
done

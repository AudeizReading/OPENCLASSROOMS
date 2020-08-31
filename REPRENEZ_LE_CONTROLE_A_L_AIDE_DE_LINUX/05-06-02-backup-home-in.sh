# ********************************************************************************
# * Script : backup-home-in.sh                                        31/08/2020 *
# * Auteur : AudeizReading@github.com                                            *
# ********************************************************************************
# * Sauvegarde du répertoire utilisateur $HOME à la convenance de l'utilisateur  *
# * Prends un paramètre facultatif : le nom du répertoire où faire la sauvegarde *
# * Sinon on proposera à l'utilisateur de choisir une destination de sauvgarde   *
# *  parmi les suivantes : choix d'un lecteur externe, saisie manuelle du        *
# *  répertoire de sauvegarde, sauvegarde sur un serveur distant ou sauvegarde   *
# *  sur un repository git (option pas encore au point).
# ********************************************************************************

#!/bin/bash

# ****************************
# * Fonctions - Déclarations *
# ****************************
function get_size_folder
{
    # Récup taille d'un folder ($HOME) - Dernière ligne, 1er champ du retour de `du -chS $1`
    # ! Affiche la taille avec unité ! unité à dégager si besoin de comparer... !

    du -chS $1 | tail -n 1 | cut -f 1
}

function save_home
{
    # Valable seulement pour saisie manuelle et lecteur externe
    # N'est pas configuré pour transférer vesr github
    # Sauvegarde $HOME vers une destination donnée en paramètre $1
    # opt -e active une synchro ssh
    # opt -d active l'option dry-run de rsync (simulation de sauvegarde)
    # Pour les fichiers à exclure de la sauvegarde rsync : soit si bcp à exclure -> on crée un fichier d'exclude et on l'importe avec l'option --exclude-from, soit on ajoute autant d'options --exclude que de formats / fichiers à exclure -> dans ces cas-là, indiquer le chemin RELATIF, à "source", des fichiers à exclure (sinon pas d'exclusion). 

    if [[ $# -le 3 ]] && [[ $# -gt 0 ]]
    then
        local optname
        local co_ssh=""
        local dryrun=""        
        while getopts "de" optname; do 
            case "$optname" in
                d)
                    dryrun="--dry-run "
                    ;;
                e)
                    co_ssh="-e ssh "
                    ;;
                *)
                    echo "Cette otion n'est pas gérée"
                    ;;
            esac
        done
        shift $(( $OPTIND - 1 ))
        sudo rsync -avz $dryrun--protect-args --delete-after --backup --backup-dir="$HOME/.delete-bkup/" --suffix="delete-bkup" --exclude=".delete-bkup/" --exclude=".logs-bkup/" --exclude=".git/" --stats $co_ssh$HOME $1 >> $log_file 2>&1
    else
        echo "La fonction \"$FUNCNAME\" est mal employée : trop ou pas assez d'argument(s)."
        exit
    fi
}

function check_dir
{
    # Vérifie si le dossier donné en paramètre $1 existe, sinon le crée et configure ses droits d'utilisation et d'utilisateur 
    # Si $dir_log n'est pas exécutable, aucune redirection possible vers le fichier de log de ce répertoire

    if [[ ! -d $1 ]]
    then
        sudo mkdir "$1"
        sudo chmod 777 "$1"
        sudo chown -R "$USER:$USER" "$1"        
        echo -e "Création du répertoire ${1} car inexistant." >> $log_file 2>&1
    elif [[ $1 == "$dir_log" ]] && [[ -d "$1" ]] && [[ ! -x "$1" ]]
    then
        sudo chmod +x "$1"
        echo -e "Changement de droit d'exécution pour $1, car manquant. Cela cause un bug avec le fichier de log si on ne peut l'écrire dans un répertoire exécutable.\n" >> $log_file 2>&1
    fi
}

function make_header_log
{
    # Génère l'en-tête du fichier de log de la sauvegarde

    local begin_log="* Sauvegarde de $HOME du `date \"+%d/%m/%Y\"` *"
    local star_log="*"
    local -i st=1
    while [[ st -lt ${#begin_log} ]]
    do
        star_log="$star_log*"
        let st++
    done
    echo -e "$star_log\n$begin_log\n$star_log\n" >> $log_file 2>&1
    echo -e "Le répertoire à sauvegarder $HOME a une taille de $size_home.\n" >> $log_file 2>&1
}

function check_save_dest_folder
{
    # Vérifie si la destination de sauvegarde existe, est un fichier, est modifiable ou appartient à l'utilisateur. Vérifie aussi si lecteur dans /mnt ou /media (pb de proprio avec WSL1)

    if ( [[ ! -e "$1" ]] || [[ -f "$1" ]] ) || ( [[ ! -w "$1" ]] || [[ ! -O "$1" ]] )
    then
        local -i RETURN; local warning
        #RETURN=0
        warning=""
        save_dest_folder=""

        if [[ ! -e "$1" ]]; then
            warning="${warning}${1} n'existe pas !\n"
            RETURN=16
            return $RETURN
        fi

        if [[ -f "$1" ]]; then
            warning="${warning}${1} est un fichier. La sauvegarde ne peut qu'être effectuée vers un répertoire valide !\n"
            RETURN=$(( $RETURN + 2 ))
        fi

        if [[ ! -w "$1" ]]; then
            warning="${warning}Vous n'avez pas les droits suffisants pour modifier ${1}.\n"
            RETURN=$(( $RETURN + 4 ))
        fi

        if [[ ! -O "$1" ]]; then
            if [[ "$1" =~ /mnt|media/[e-z] ]]; then
                # Comme je n'arrive pas à changer le propriétaire d'un lecteur externe, une clé USB ici en l'occurrence, sous WSL, je suis obligée de magouiller... À adapter pour un vrai système Linux (chgmt proprio par suid et sgid dans /etc/fstab ou vérifier dans /dev si le lecteur externe n'apparaîtra pas là par hasard...)
                warning="${warning}Vous n'êtes pas le propriétaire de \"$1\". Néanmoins, on a conscience que vous avez besoin d'atteindre un lecteur externe pour sauvegarder.\n"
                save_dest_folder="$1"
                RETURN=$(( $RETURN + 1 ))
            else
                warning="${warning}Vous n'êtes pas le propriétaire du répertoire $1.\nVous n'êtes pas autorisé à effectuer la sauvegarde ici.\nIl s'agit d'une sécurité afin de vous éviter d'effectuer, par mégarde, votre sauvegarde dans les fichiers systèmes, comme dans le répertoire /bin ou /root, par exemple.\n"
                RETURN=$(( $RETURN + 8 ))
            fi
        fi
    else
        save_dest_folder=$1
        warning="Le dossier $1 est conforme pour y effectuer une sauvegarde"
        RETURN=0
    fi

    echo -e "$warning"
    return $RETURN
}

function confirm_save_dest_folder
{
    # Fais confirmer le choix du dossier de sauvegarde, sinon réinitialise la variable prévue pour le répertoire de sauvegarde

    if [[ -n ${save_dest_folder} ]]; then
        read -p "Confirmez-vous le choix du répertoire ${save_dest_folder} pour destination de sauvegarde ? [O/N] : " confirmation

        if ! [[ $confirmation =~ [OoYy]|Oui|oui|OUI|YES|yes|Yes ]]; then
            save_dest_folder=""
            echo -e "Réinitialisation du dossier de sauvegarde ..."
        fi
    fi
}

function ping_remote
{
    # Ping une ip (à donner via $1) 'nb_call' fois, et récupère le nb de paquets revenus (received), si 0 paquet, la connexion a échoué

    local nb_call=5
    ping -c $nb_call $1 | grep received | awk -F',' '{ print $2 }' | awk '{ print $1}'
}

function elide_last_slash
{
    # Enlève le dernier slash d'une expression passée en paramètre si existant
    # Utile si on renseigne un rep de cette façon : /rep/, fait double emploi avec le répertoire de backup qui est préfixé par / (il vaut mieux préfixer backup que de miser sur la saisie utilisateur)

    if [[ $1 =~ /$ ]]; then
        echo "$1" | sed -re "s,/$,,"
    else
        echo "$1"
    fi
}

# *******************************
# * Variables - Initialisations *
# *******************************
size_home=`get_size_folder $HOME`
dir_bkup="/backup/"
dir_log="$HOME/.logs-bkup/"
dir_del_bkup="$HOME/.delete-bkup/"
let nb_log_file=1; while read -r; do let nb_log_file++ ; done< <(find $dir_log -iname "*.log")
log_file="${dir_log}log-bk_`date +%Y%m%d`_${nb_log_file}.log"

# ***************************
# * Main - Script principal *
# ***************************

# Vérification présence $1
if [[ $# -gt 0 ]] && [[ -n $1 ]]; then
   # Vérification de l'existence du répertoire de destination de la sauvegarde
    check_save_dest_folder $1
else
    # Proposer une destination de sauvegarde entre un répertoire saisi manuellement, un lecteur externe, un repo git ou un serveur distant
    echo -e "Choisissez comment effectuer votre sauvegarde :\n"
    select folder in "SAISIE MANUELLE" "LECTEUR EXTERNE" "REPOSITORY GIT" "SERVEUR DISTANT"
    do
        case $REPLY in
            1)
                while [[ -z "$save_dest_folder" ]]
                do
                    read -p "Indiquez le répertoire de sauvegarde : " save_dest_folder
                    check_save_dest_folder "${save_dest_folder[@]}"
                    confirm_save_dest_folder
                done
                ;;
            2)
                echo -e "Veuillez vérifier à avoir monté votre lecteur externe avant de lancer cette opération.\nFaites Ctrl - C pour annuler le script $0 et lancez la commande : \033[3;32;40m\`sudo mkdir /mnt/nom_du_lecteur && sudo mount -t drvfs SOURCE /mnt/nom_du_lecteur\`\033[0m\nAttention, il s'agit de la procédure WSL, adaptez-la si pur Linux ou MAC OS."

                # On rappelle que les lecteurs externes, sous Linux, se situent dans le répertoire /mnt ou /media
                drivers_ext=(`df --output=target | egrep -e ^[/]{1}"mnt"\|"media"`)
                drivers_ext_length=${#drivers_ext[@]}
                
                select driver in "${drivers_ext[@]}"
                do
                    if [[ $REPLY =~ ^[0-9]+$ ]] && [[ $REPLY -le $drivers_ext_length ]]
                    then
                        save_dest_folder=$driver
                    else
                        message="$REPLY : Ce choix est invalide"
                    fi
                    
                    break 1
                done
                ;;
            3)
                # Repo git non encore géré, cela vaudrait sans doute le coup de faire un script spécial à part
                message="\033[4;31;47mCette option n'est pas encore gérée !\033[0m"
                ;;
            4)
                # Attention, n'est pas gérée ici la génération de clés RSA publique/privée et le connexion au serveur (demandera mdp si pas de co ssh avec clé RSA)
                # Code à tester avant de valider définitivement cette partie (pas de serveur distant à dispo...)
                echo -e "L'option \033[1;31;40m$folder\033[0m est toujours en cours de développement. Il faut vérifier toute la partie connexion ssh au serveur avant de valider cette étape."
                while [[ -z "$ip_remote" ]]
                do
                    read -p "Entrez l'adresse IP du serveur auquel se connecter pour y effectuer la sauvegarde : " ip_remote
                done

                while [[ -z "$login_remote" ]]
                do
                    read -p "Entrez le login avec lequel se connecter au serveur pour y effectuer la sauvegarde : " login_remote
                done

                info_co="$login_remote@$ip_remote"

                # Test connexion au serveur
                received=`ping_remote $ip_remote`
                
                # Si la connexion au serveur est établie, on peut commencer la procédure de sauvegarde
                if [[ "$received" -gt 0 ]]; then
                    while [[ -z "$save_dest_folder" ]]
                    do
                        # On demande dans quel dossier faire la sauvegarde, on vérifie sa présence, sinon on le crée, puis on demande confirmation du choix
                        read -p "Indiquez le répertoire de sauvegarde : " save_dest_folder
                        if [[ ! `ssh ${info_co} "test -d ${save_dest_folder[@]}"` ]]
                        then
                            # Si dossier non existant sur remote on le crée
                            ssh ${info_co} "mkdir ${save_dest_folder[@]}"
                        else
                            # Sinon, on demande confirmation pour le choix de répertoire
                            confirm_save_dest_folder
                        fi
                    done
                    save_dest_folder="${info_co}:${save_dest_folder[@]}"
                else
                    message= "Le serveur $ip_remote est injoignable. La sauvegarde ne peut être effectuée"
                fi
                ;;
            *)
                message="$REPLY : option invalide"
                ;;
        esac
        break
    done
fi

# Si aucun message, on peut débuter la sauvegarde sinon on quitte le programme
if [[ -n $message ]]
then
    echo -e "$message"
    exit
fi

# Vérification présence répertoires de log et de backup
check_dir $dir_log
check_dir $dir_del_bkup 

# Génération header du Filelog
make_header_log 

# Si le dernier car du répertoire de sauvegarde est /, on le supprime -> redondance avec début de $dir_bkup
save_dest_folder=`elide_last_slash $save_dest_folder`

# Génération du répertoire dédié au bkup 
save_dest_folder="$save_dest_folder$dir_bkup"

echo -e "La sauvegarde vers $save_dest_folder va commencer."
echo -e "La sauvegarde vers $save_dest_folder va commencer.\nDébut : `date \"+%H:%M:%S le %d/%m/%Y\"`." >> $log_file 2>&1

# Si ip_remote est indiquée alors sauvegarde ssh, sinon sauvegarde normale 
if [[ -n "$ip_remote" ]]
then
    save_home -e $save_dest_folder 
    return_save_home=$?
else
    # Création du répertoire de backup si inexistant (on ne fait pas la vérif de conformité de répertoire dans la partie lecteur ext, c'est pour cela qu'il vaut mieux s'assurer que le dossier est présent avant de synchroniser.)
    check_dir "$save_dest_folder" 
    save_home $save_dest_folder 
    return_save_home=$?
fi

case $return_save_home in
    0) message="Succès de la sauvegarde.";;
    1) message="Erreur de syntaxe et d'utilisation.";;
    2) message="Incompatibilité de protocole.";;
    3) message="Erreurs lors de la sélection des fichiers et des répertoires d'entrée/sortie.";;
    4) message="Action non supportée : une tentative de manipulation de fichiers 64-bits sur une plate-forme qui ne les supporte pas; ou une option qui est supportée par le client mais pas par le serveur.";;
    5) message="Erreur lors du démarrage du protocole client-serveur.";;
    6) message="Démon incapable d'écrire dans le fichier de log.";;
    10) message="Erreur dans la socket E/S.";;
    11) message="Erreur d'E/S fichier.";;
    12) message="Erreur dans le flux de donnée du protocole rsync.";;
    13) message="Erreur avec les diagnostics du programme.";;
    14) message="Erreur dans le code IPC.";;
    20) message="SIGSR1 ou SIGINT reçu.";;
    21) message="Une erreur est retournée par waitpid().";;
    22) message="Erreur dans l'allocation des tampons de mémoire principaux.";;
    23) message="Transfert partiel du à une erreur.";;
    24) message="Transfert partiel du à la disparition d'un fichier source.";;
    25) message="La limite --max-delete a été atteinte.";;
    30) message="Dépassement du temps d'attente maximal lors d'envoi/réception de données.";;
    35) message="Temps d'attente dépassé en attendant une connexion.";;
    255) message="Erreur inexpliquée.";;
esac

echo -e "$message"
echo -e "$message" >> $log_file 2>&1
echo -e "\nFin du programme $0."
echo -e "\nFin de la sauvegarde à `date \"+%H:%M:%S le %d/%m/%Y\"`.\nSauvegarde effectuée avec le programme : $0" >> $log_file 2>&1

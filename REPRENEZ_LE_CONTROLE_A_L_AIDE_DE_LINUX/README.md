# REPRENEZ LE CONTRÔLE A L'AIDE DE LINUX
## 1ère Partie
### Mais c'est quoi, Linux ?
#### Un système d'exploitation
#### La naissance de Linux
#### Les distributions de Linux
#### Résumé personnalisé
On a un aperçu de ce qu'est Linux (un OS) et de comment il démarre sur l'ordinateur (Boot Loader, GRUB) dans le 1er chapitre.

Dans le second chapitre, on traite du projet GNU (Richard STALLMANN 1984, création des programmes), de la création du noyau par Linus TORVALDS (1991), UNIX duquel découle GNU/Linux ainsi que Mac OS.

Les distributions sont abordées dans le 3e chapitre (Slackware, Mandriva, Red Hat, SuSE, Debian...). Debian est la seule distro éditée par des particuliers bénévoles. Un des gros avantages de Debian est son gestionnaire de paquets **apt-get**. Ubuntu est une distribution de Debian. Le cours se déroulera sur Ubuntu.
### Téléchargez Linux c'est gratuit
#### Les deux visages de Linux
#### Télécharger et graver le CD
#### Résumé personnalisé
Dans le 1er chapitre, on nous présente le mode console et le mode graphique de Linux, et donc par conséquent d'Ubuntu. Il y a plusieurs modes graphiques, tous basés sur le programme X. Le gestionnaire de bureau est une surcouche de X, il gère les fenêtres. Il en existe plusieurs. Les plus connus sont Unity, Gnome, KDE et XFCE. Par défaut Ubuntu est livré avec Unity. Si une distro Ubuntu est préfixée alors, la distro est configurée avec un gestionnaire de bureau spécifique (Kubuntu -> KDE, Xubuntu -> XFCE ...). On peut installer plusieurs gestionnaires sur une distro, tous étant compatibles entre eux. Par conséquent, les programmes fonctionnent tous quel que soit le gestionnaire installé. La console reste la même, peu importe le gestionnaire de bureau utilisé.

Le second chapitre explique comment récupérer l'ISO (fichier .iso) et le graver sur DVD (il faudra installer un outil de gravure d'image disque).
### Tester et installer Ubuntu
#### Installation de Linux depuis Windows
#### Premier démarrage d'Ubuntu
#### Installer Ubuntu
#### Résumé personnalisé
Où on apprend que l'on peut tester Linux sans l'installer sur Windows. Pour cela, on utilise le mode Live CD. Ubuntu se chargera à partir du CD qu'on vient de graver dans la mémoire vive, et non par le disque dur.

Le 1er chapitre nous montre comment installer Linux sur Windows. Sauf que le cours date un peu, et depuis, Windows 10 met à disposition une application Ubuntu sur son store. Néanmoins, pour la tester personnellement, il y a encore des petites différences entre WSL et Linux (notamment dans les commandes en CLI).

Le second chapitre nous propose donc de tester Ubuntu sans installation, uniquement en chargeant le DVD.

Le troisième chapitre nous apprend à installer Linux en dur.
On y apprend également que Firefox, à la base, était prévu pour Gnome, mais est parfaitement utilisable sur KDE ou Unity.
Il faut toujours faire une sauvegarde de ses fichiers avant d'installer Linux, car malgré tout il existe un risque infime d'écraser Windows. On ouvre ensuite l'icône d'installation qu'on trouvera sur le bureau, alors qu'on est en mode test de Linux. Ensuite, il suffit de se laisser guider. Néanmoins, il convient d'avoir un minimum d'espace de stockage, d'être branché sur secteur et d'être connecté à Internet (pas en wifi, compliqué à configurer à ce stade quand on est débutant). Deux options peuvent être cochées : * Télécharger les mises à jour pendant l'installation * ainsi que * Installer ce logiciel tiers *. La dernière option nous permettra d'utiliser des logiciels propriétaires non livrés avec Ubuntu tels que ceux lisant du MP3, du Flash (lol, le cours n'est vraiment pas à jour !) etc. À moins que l'on ne préfère garder Ubuntu entièrement Open Source. Ensuite, il faut partitionner son disque, mais c'est l'objet du chapitre suivant.
### Partitionner son disque
#### Défragmentez votre disque
#### Qu'est-ce que le partitionnement
#### Prêts ? Partitionnez !
#### La fin de l'installation
#### Résumé personnalisé
Partitionner son disque consiste à découper son disque virtuellement en plusieurs parties afin de ne pas mélanger les différents OS se trouvant sur la machine. Il est délicat de faire marche arrière une fois le partitionnement réalisé, il faut donc être attentif à ce qui est décrit dans cette partie du cours. Mais avant il faut défragmenter son disque.

La défragmentation ne concerne que les disques durs HDD (mémoire de masse magnétique). Si on a un disque SSD (mémoire flash), il ne faut surtout pas défragmenter son disque dur !. Un disque dur ne doit jamais être ouvert, sous peine d'endommager ses données. la défragmentation consiste à mieux organiser les fichiers sur son disque dur, à les rassembler pour éviter qu'ils ne soient éparpillés. Ainsi le disque dur mettra moins de temps à récupérer les fichiers. Cette réorganisation prépare au partitionnement, si on ne le fait pas, il y a un risque que des fichiers disparaissent lors de cette étape et de se retrouver avec un Windows instable.

Sur chaque partition, les fichiers sont organisés selon ce qu'on appelle un **système de fichiers** , un référencement dans une sorte d'annuaire gigantesque. Il ne peut y avoir qu'un système de fichiers par partition.

Les différents systèmes de fichiers sous Windows sont FAT 16, FAT 32, NTFS (c'est celui utilisé sur les PC les plus récents avec Windows). Ceux de Linux sont **ext2**, **ext3** et **ext4**. **ext4** est plus récent mais beaucoup utilisent encoure **ext3**. Sous Linux, il n'y a pas besoin de faire de défragmentation car les systèmes de fichiers sont optimisés pour cela.

Le cours nous propose le partitionnement suivant :

| Linux | Windows | Documents |
|:------|:-------:|----------:| 
| ext4  | NTFS    | ext4      |

Le but étant que la partition Documents puisse être lue et écrite depuis Windows et Linux. Windows ne reconnaît pas ext, à moins d'installer un programme spécialement pour.

Ceci étant posé, on repart depuis les explications de la fin du chapitre dernier pour passer au partitionnement. Ubuntu propose tout de façon explicite dans ses fenêtres, il suffit de se laisser guider. On peut choisir d'installer Ubuntu à côté de Windows. C'est l'option la plus simple quand on débute, Ubuntu se charge de tout. En revanche on n'aura pas de partition **Documents**. On ne prendra pas l'option de remplacer Windows, pour des raisons évidentes (ça casse tout Windows !), mais on choisira de définir les partitions manuellement; c'est la plus complexe mais c'est celle qui nous laissera créer la fameuse partition où l'on rangera nos documents.

Sous Windows, les disques s'appellent C:, D:, E: ... Sous Linux, c'est différent. Par exemple, un disque peut s'appeler **hda**

* h : La première lettre indique le type du disque (différents selon la connexion à la carte mère) IDE ou SCSI (ou S-ATA). Si c'est un type IDE, alors ce sera un "h", si c'est un type SCSI, alors ce sera "s".
* d : Cette lettre ne change jamais.
* a : C'est cette lettre qui indique les différents disques durs, a pour le 1er, b pour le 2e, c pour le 3e, etc.

Les partitions sont numérotées, on les retrouvera dénominées de la sorte **hda1** ou **hda2** etc, selon leur nombre de créés. Ne pas toucher aux partitions "restore", car le PC est peut-être "tatoué".

De là, une fois le disque choisi, on passe à l'étape suivante qui consiste à réduire la taille de la partition de Windows. Il faut quand même lui laisser un peu de place, sinon on ne pourra plus rien installer par cette voie.

On vient de libérer de la place pour la partition Ubuntu, on peut cliquer sur **Nouvelle table de partition**. On aura le choix ente deux types de partition: primaire (seulement 4 par disques) ou logique (non limitée, peut contenir plusieurs sous-partition). Cocher sur Début pour l'emplacement, afin de la créer au début de l'espace libre. Enfin, on indique le point de montage "/" (équivalent de "C:\" sous Windows). On n'oublie de mentionner le système de fichiers, ni d'allouer de l'espace. On recommence de la même façon pour la partition "Documents", sauf que le point de montage sera "/home". Enfin, il faut créer une partition **swap** d'environ 1Go (1024 Mo). Pour faire simple, il s'agit d'une extension de la mémoire vive sur son disque dur, lorsque la mémoire vive est pleine, Linux continue à fonctionner mais passe par le disque dur, grâce à cette partition (bien préciser que c'est un espace d'échange swap dans "Utiliser comme:", pas besoin d'en préciser le point de montage.

L'installation s'effectue, enfin, en tâche de fond pendant que l'on finalise les derniers détails (fuseau horaire, type de clavier, username & mdp). Il se peut également que le gestionnaire d'installation nous propose de récupérer quelques informations depuis Windows.

Comme partout, on redémarre pour finaliser l'installation. Juste avant l'extinction du PC, il faudra retirer le CD du PC comme demander puis appuyer sur <CR>. C'est pour s'assurer qu'Ubuntu démarrera bien du disque dur et non du CD.

Au prochain démarrage, GRUB demander quel OS utiliser. Pour faire un test mémoire, au cas où on suspecte une défaillance de la mémoire vive, on choisira "Memory Test".
### Découverte du bureau Unity
#### Bienvenue sur le bureau Unity
#### Nautilus, l'explorateur de fichiers
#### Gestion des programmes
#### Résumé personnalisé
Découverte du gestionnaire de bureau Unity livré avec Ubuntu. Si on a installé autre chose, on peut lancer le paquet **ubuntu-desktop** pour l'installer.

Linux est un OS multiutilisateur, plusieurs personnes peuvent utiliser le même ordinateur de façon simultanée (en le contrôlant à distance par Internet, par exemple). C'est pourquoi il est important de se logger/délogger avec cet OS.

L'explorateur de fichier s'appelle Nautilus, il est du même type que l'explorateur Windows.

Pour ajouter et/ou supprimer un programme, il faut se rendre dans la logitèque Ubuntu (ressemble au Store Windows, ou plutôt l'inverse...).

Lorsqu'une mise à jour d'un programme est disponible, on est immédiatement notifié à l'aide de l'icone en haut à droite de l'écran (ressemble au symbole téléchargement mais dans une étoile). On clique dessus et on se laisse guider. On peut aussi configurer le gestionnaire de mises à jour, afin qu'il installe les nouveautés sans nous le demander. Il faut se rendre dans le menu Applications --> Ajouter & Enlever --> Préférences --> Mises à jour --> Installer les mises à jour de sécurité sans confirmation.
### Découverte du bureau KDE
#### Comment obtenir KDE
#### Connexion au bureau KDE
#### Le tableau de bord
#### L'explorateur de fichiers Dolphin
#### Résumé personnalisé
Le gestionnaire de bureau KDE est utilisé par défaut sur Kubuntu. KDE est assez différent de Unity. Pour l'installer plusieurs possibilités soit on se contente du KDE minimal, avec seulement les applications de base, alors le paquet à installer est **kde-minimal**, on l'appelle également environnement de bureau K, applications minimales, soit on prend le KDE complet avec les applications qui sont dédiées à cet environnement et alors le paquet est **kubuntu-desktop**, aussi appelé Kubuntu Plasma Desktop System. Ne nous est montré que l'installation par l'interface graphique.

Il faudra se logger pour accéder à KDE. Les interfaces de login, selon qu'on ait installé KDE par Ubuntu ou qu'on ait installé Kubuntu, sont légèrement différentes visuellement. Néanmoins leur fonctionnement reste identique. L'interface de connexion de Kubuntu s'appelle KDM, pour KDE Display Manager. On peut personnaliser le bureau de **widgets** appelés "Plasmoïdes". La barre des tâches se trouvant en bas de l'écran s'appelle **le tableau de bord**. C'est de là qu'on lance ses applications. On y retrouve le menu K (le bouton Démarrer de Windows 10 y ressemble fortement). Si le menu est en anglais, bah ça ne vous fera pas de mal de l'apprendre. Non, je déconne, on peut changer ses préférences de langues en tapant "lang" dans la barre de recherche, en accédant ensuite au programme "Country & Region Language". Pour que les changements soient pris en compte, il faut se déconnecter puis se connecter à KDE.

Dolphin est l'explorateur de fichiers et Konqueror le navigateur web, il permet aussi de parcourir ses fichiers. L'explorateur QuickAccess ouvre directement le répertoire personnel sans passer par Dolphin. Comme sur Unity, on peut avoir plusieurs bureaux virtuels. La zone de notifications se situe en bas à droite, comme avec Windows 10. Inutile de double-cliquer avec l'explorateur Dolphin. L'équivalent du panneau de configuration sous Windows est "Configuration du système". La logitèque KDE s'appelle "Ubuntu Software Center".
### Installez Linux dans une machine virtuelle
#### Installer VirtualBox
#### Créer une nouvelle machine virtuelle
#### Lancer la machine virtuelle
#### Installation des additions invité
#### Résumé personnalisé
La virtualisation consiste à faire tourner un ordinateur virtuel dans son ordinateur, cela permet de lancer Linux à l'intérieur d'une fenêtre Windows ou vice versa. VirtualBox est un logiciel libre nous permettant de virtualiser un OS dans un autre. L'avantage est que, si Linux est lancé dedans, alors il sera isolé dans la machine virtuelle et ne risque pas d'altérer le fonctionnement de Windows.

On retrouve ce programme sur son site Internet. Il existe en version Windows, Linux et Mac OS X. Bien entendu, la version dans laquelle on lancera la machine virtuelle. À l'installation, laissez les choix par défaut. Il se produira une rupture temporaire de l'accès à Internet, c'est normal, le programme doit établir un pont de connexion entre l'ordinateur et la machine virtuelle. L'interruption est succinte. Puis l'installation se lance toute seule, il ne reste plus qu'à lancer VirtualBox.

Les machines virtuelles consomment de la mémoire vive, de l'espace disque et utiliseront le processeur du PC, il vaut mieux avoir un ordinateur puissant, mais la plupart des ordinateurs modernes n'auront pas de soucis pour utiliser VirtualBox.

Pour créer une nouvelle machine, on clique sur le bouton en haut à gauche **Nouvelle**. On nous demandera de lui donner un nom ainsi que de confirmer l'OS et sa version (Linux, Ubuntu pour ceux au fond qui n'auraient pas suivi). VirtualBix est capable d'émuler une multitude d'OS de Windows à Linux, en passant par Solaris, mais il faut quand même soit le CD d'installation, soit l'image disque pour qu'il arrive. On indique la quantité de RAM qu'on souhaite lui destiner, VirtualBox peut occuper jusqu'à 50% de la mémoire vive d'un ordinateur. Enfin, il ne reste plus qu'à créer le disque dur de la machine virtuelle, laissez donc "Créer un nouveau disque dur" de sélectionné. L'assistant de création nous demande ensuite quel type d'image disque on souhaite créer. Soit image de taille variable, soit image de taille fixe. Il est recommandé de choisir la taille variable, ainsi si le disque a une taille de 8 Go et que 2 Go sont utilisés, alors le fichier fera 2 Go. Autrement, en taille fixe, si le disque virtuel a une taille de 8 Go et que seulement 2 Go sont utilisés, le fichier image fera tout de même 8 Go. On est ensuite invité à nommer le disque virtuel (emplacement) ainsi qu'une taille maximale. 8 Go est une bonne alternative (si on les a).

Avant de lancer la machine virtuelle, il faut donc son image disque (ou CD d'installation), exactement comme si on démarrait l'ordinateur pour y installer Linux. Si on possède le CD, alors l'insérer dans le lecteur, sinon VirtualBox est capable de lire directement une image disque **.iso**, mais pour cela il faudra configurer la machine virtuelle pour qu'elle utilise l'image disque comme un CD. On clique sur la machine virtuelle qu'on vient de créer, puis **Configuration**, sélectionner **Stockage** à gauche, puis la ligne **Vide** sous **Contrôleur IDE**. Enfin, cliquer sur l'icone en forme de dossier tout à droite (à côté de Lecteur CD/DVD : Vide), le gestionnaire de médias virtuels s'ouvre. Il suffit alors de cliquer sur **Ajouter** puis d'indiquer ou se situe l'image ISO téléchargée. On valide et c'est prêt.

On peut enfin démarrer la machine virtuelle (on clique sur son nom, puis **Démarrer** au-dessus, à côté de **Configuration**). Pour sortir de la machine virtuelle (toutes les frappes clavier y seront redirigées), on appuie sur la touche **Ctrl** la plus à droite sur le clavier.

On peut alors installer Ubuntu, sans avoir besoin de créer des partitions sur son disque dur. c'est la magie de la virtualisation.

Les additions invité sont des pilotes spéciaux améliorant les performances de la machine virtuelle, comme de meilleures performances graphiques, une plus grande fluidité des animations et des déplacements des fenêtres; un meilleur suivi de la souris; le partage du presse-papier entre Linux et Windows ainsi que le partage des répertoires (ce qu'on ne peut pas faire en dur, si on n'a pas de partition prévue pour les documents). On se rend dans le menu de la machine virtuelle, une fois démarrée, **Périphériques --> Installer les Additions invité**. Cela provoque l'insertion d'un CD virtuel dans la machine. pour accéder à son contenu, on ouvre le menu **Raccourcis** d'Ubuntu, une fenêtre affichant les fichiers du CD apparaît, cliquer sur **autorun.sh** et **Lancer dans un terminal** lorsqu'on nous demande quoi en faire. Une console s'ouvre et les additions s'installent. Comme d'habitude, il faut relancer Ubuntu pour que les modifications soient prises en compte. Maintenant, on peut partager des fichiers entre WIndows et Ubuntu, toujours dans le menu **Périphériques --> Dossiers Partagés**.
### Quiz 1
#### Compétences évaluées
Décrire le fonctionnement d'un système d'exploitation Linux
#### Question 1
**Comment s'appelle l'outil qui permet de sélectionner le système d'exploitation qu'on souhaite lancer au démarrage ?**
* Le booter
* Le Boot Loader
* L'OS Downloader
* Le rebouteur
#### Question 2
**Vrai ou Faux ? Windows et Linux peuvent cohabiter sur un même ordinateur.**
* Vrai
* Faux
#### Question 3
**Comment s'appelle le fondateur du projet GNU ?**
* Richard Stallman
* Roberto Benigni
* Steve Jobs
* Bill Gates
#### Question 4
**Quel est l'ancêtre commun de Mac OS X et Linux ?**
* Lunix
* Unix
* MS-DOS
* Windows
#### Question 5
**Lequel de ces éléments est une distribution Linux ?**
* Debian
* Grub
* KDE
* Gnome
#### Question 6
**Comment s'appelle l'interface graphique par défaut d'Ubuntu ?**
* Ubuntux
* KDE
* LXDE
* Gnome, Unity, puis Gnome de nouveau selon les versions
#### Question 7
**Qu'est-ce qu'un Live CD ?**
* Un CD qui donne accès à Internet même dans les régions reculées
* Un CD contenant Linux qui apprend de nos habitudes
* Un CD permettant de tester Linux sans l'installer
* Un CD qui s'autodétruit au bout de quelques minutes
#### Question 8
**Quand Linux est installé dans une machine virtuelle qui tourne sous Windows...**
* Une partition spéciale Linux est créée sur son disque dur de façon permanente
* Une partition spéciale Linux est créée sur son disque dur de façon temporaire
* Aucune partition n'est créée
#### Question 9
**Comment s'appelle l'élément logiciel de base sur lequel s'appuient Gnome, XFCE, KDE et Unity pour afficher une interface graphique ?**
* Le GRUB
* Le serveur X
* Le partitionneur graphique
#### Question 10
**Quel est le rôle de la partition swap ?**
* Stocker les outils nécessaires au démarrage de Linux
* Stocker les fichiers téléchargés depuis Internet
* Stocker des données quand la mémoire vive est pleine
## Partie 2
### La console, ça se mange ?
#### Pourquoi avoir inventé la console ?
#### La console, la vraie, celle qui fait peur
#### La console en mode graphique
#### L'accès à distance en SSH avec PuTTY
#### Résumé personnalisé
La console a été inventée d'abord, à la place d'une interface graphique, car on n'avait pas d'autres solutions, à l'époque, au début des années 70, pour communiquer avec l'ordinateur. À l'époque, un écran 2 couleurs était un luxe et la puissance de calcul de ces ordinateurs était insuffisante (en comparaison avec ce que nous connaissons aujourd'hui) pour pouvoir gérer plusieurs composants en même temps, comme la couleur et une souris. La console était donc la seule façon d'utiliser un ordinateur.

Les commandes de la console ont été conçues afin de pouvoir les manipuler souvent, leurs noms sont courts (dans la majorité des cas) les lettres qu'il faut taper sont généralement choisies en fonction de leur proximité les unes par rapport aux autres, sur un clavier QWERTY. Le clavier QWERTY est plus adapté pour accéder aux symbole **\{\]\|\#**.

Il y a des choses que seule la console est en mesure d'accomplir, par exemple savoir combien d'images .jpeg contient un répertoire. On obtient ce résultat en combinant quelques commandes :

    ls -l | grep jpg | wc -l
    510

La console a donc encore son utilité !

La plupart des commandes de la console de Linux sont des copies d'Unix, les programmes ont été réécrits mais leur mode d'emploi est le même. Quelqu'un qui utilisait Unix dans les années 60 sera capable de se débrouiller avec un Linux d'aujourd'hui. Dans les chapitres suivants, c'est ce qu'on verra : les commandes de types Unix. L'avantage, c'est qu'on pourra s'en servir sur les systèmes Linux, mais également sur tous ceux descendant d'Unix (Hein, Mac OS X...). On ouvre un terminal sous Mac OS X avec le raccourci **Cmd + Shift + U** pour ouvrir les utilitaires et on sélectionne Terminal.

Les raccourcis pour accéder à une console Linux sont
* **Ctrl + Alt + F1** : terminal 1 (tty1)
* **Ctrl + Alt + F2** : terminal 2 (tty2)
* **Ctrl + Alt + F3** : terminal 3 (tty3)
* **Ctrl + Alt + F4** : terminal 4 (tty4)
* **Ctrl + Alt + F5** : terminal 5 (tty5)
* **Ctrl + Alt + F6** : terminal 6 (tty6)
* **Ctrl + Alt + F7** : retour au mode graphique

La première chose que demande la ligne de commande c'est de se logger grâce à la commande **login** (log qu'on a créé à l'installation d'Ubuntu). On entre ensuite son mot de passe, c'est la commande **passwd** qui le reçoit. Les lettres n'apparaissent pas pour raison de sécurité. Une fois l'étape franchie, la CLI devrait afficher quelque chose dans le style : **username@computer:~$**.

Pour savoir dans quel terminal on se trouve (puisqu'on peut en ouvrir 6) lors du chargement, il faut lire dans la console les informations inscrites au lancement et chercher un terme commençant par **tty[n°]**. Attention, pour relancer X (le serveur graphique), le raccourci est **Alt + Shift + Backspace** ou **Alt + Impr.Écran + K**, la commande précédente étant jugée vraiment très dangereuse,, cela ne redémarre que l'interface graphique, les consoles continuent de tourner mais on perd tout ce qu'on était en train de faire sur le bureau. Il faut donc être vigilant.

La console est très utile lorsqu'on manipule les serveurs tournant sous Linux et ne possédant pas d'écran ou d'interface graphique. C'est juste plus confortable d'utiliser la console en mode graphique.

Une des grandes force de la console, c'est d'ête accessible à distance par Internet. Il suffit que la machine sur laquelle on souhaite se connecter soit connectée au réseau pour pouvoir y pénétrer depuis n'importe quel autre ordinateur. C'est comme cela d'ailleurs que l'on administre un serveur.

Un serveur est, pour faire simple, un ordinateur tout le temps connecté à Internet. Il permet d'offrir des services divers et variés aux internautes. Par exemple, il y a des serveurs web dont le rôle est de distribuer des pages web. La grande majorité des serveurs tournent sous Linux. Il existe des serveurs Windows, mais ils seraient plus rares et on apprécie en général la stabilité de Linux, ainsi que la possibilité de l'administrer à distance en ligne de commande.

Pour communiquer entre un ordinateur et un serveur, on passe par un protocole. Il en existe énormément, mais pour accéder à la ligne de commande à distance, il y en a deux principaux :
* **Telnet** : le protocole le plus basique, qui présente le gros défaut de ne pas crypter les données échangées.
* **SSH** : c'est le protocole le plus utilisé car il permet de crypter les données et de sécurise la connexion avec le serveur.

Pour accéder à distance à un ordinateur sous Linux connecté au réseau, on a besoin d'un programme spécial capable de restituer la ligne de commande à distance. On n'est pas obligé d'être sous Linux pour ce faire, on peut très bien être sous Windows. Il existe plusieurs programmes capables de se connecter en SSH à serveur Linux, le plus célèbre sous Windows est sûrement PuTTY : il est gratuit, léger et ne nécessite pas d'installation, seulement un exécutable à lancer. On se rend sur le site du logiciel, on le downloade, puis on clique sur **putty.exe**. La fenêtre de configuration s'affiche. Dans la majorité des cas, on n'aura pas besoin d'aller farfouiller dans le volet des options à gauche. La première page est la plus importante, dans le champ **Host Name**, on renseigne le nom d'hôte du serveur (du style : nom.de.domaine.com), ou l'adresse Ip de la machine à laquelle se connecter. Vérifier que la connexion est bien de type SSH, puis cliquer sur le bouton **Open** en bas de la fenêtre. Il est tout à fait possible de se connecter à plusieurs serveurs différents et de conserver le nom d'hôte quelque part, dans la seconde partie de la fenêtre **Saved Sessions** c'est là que ça se passe.

À la première connexion, on nous demander si on veut stocker l'empreinte de ce dernier. C'est une sécurité pour vérifier que le serveur n'a pas changé depuis la dernière connexion et donc pour éviter que quelqu'un se fasse passer pour le serveur auquel on se connecte d'habitude. La fenêtre principale de PuTTY s'affiche alors en nous demandant de nous logger (log du compte administrant le serveur !) et de saisir le mot de passe associé. On alors accès à la console du serveur, comme si on était devant. Dans l'immédiat, on ne devrait pas avoir à se connecter à distance, tout ce qu'on va faire est plutôt situé en local.
### Entrer une commande
#### L'invite de commandes
#### Commandes et paramètres
#### Retrouver une commande
#### Quelques raccourcis clavier pratiques
#### Résumé personnalisé
La première action à entreprendre, c'est d'ouvrir une console en mode graphique. La ligne de type **username@(@=chez)computer:~(dossier dans lequel on se situe, ~=/home)$(niveau d'autorisation sur la machine, $=utilisateur normal,#=superutilisateur)** est ce qu'on appelle une **invite de commande**, c'est un message qui nous invite à entrer une commande. L'invite de commande est paramétrable (-> .bashrc, variable $PS1).

On travaille dans la console en tapant des commandes. Elles sont très nombreuses, tellement qu'on ne peut pas toutes les connaître. Mais c'est plus important de savoir comment s'informer dessus que de toutes les connaître. Pour cela, il suffit de consulter le manuel d'utilisation **man**, ou encore l'aide de la commande **commande --help** ou encore **commande -h** (mais cette dernière n'est pas toujours paramétrée).

La commande **date** donne la date et l'heure.
La commande **ls** donne la liste des fichiers et dossiers du répertoire actuel. Si on n'obtient pas de réponse à cette commande, c'est qu'on est dans un dossier ne contenant aucun fichier.

Une commande est constituée d'un mot et ne contient aucun espace et dans la majorité des cas d'options qu'on appelle **paramètres** (courts ou longs). Les paramètres (comme tout Linux) sont sensibles à la casse.
**ls -a** affiche tous les dossiers, même ceux cachés. Le nom d'un fichier caché commence par un **.**
**ls --all** fait la même chose, sauf qu'on a utilisé son paramètre long.

Parfois, les paramètres nécessitent d'être valorisés (auxquels on affecte une valeur), selon que le paramètre soit long ou court, l'affectation est différente.
* **commande -a valeur**
* **commande --version-longue=valeur**

Il arrive d'oublier le nom d'une commande, mais grâce à l'auto-complétion, Linux nous aide à la retrouver: On tape au moins une lettre de la commande, puis 2 fois sur la touche **Tabulation**. S'il n'y a qu'un seul résultat qui ressort, alors la commande se complètera toute seule, il n'y aura qu'à la valider avec **Entrée**. S'il y a plus possibilités et qu'on accepte de les visualiser (**y**), alors pour naviguer, on utilisera **espace** pour passer à la page suivante, **Entrée** pour aller à la ligne suivante et **q** pour arrêter la liste. Pour naviguer dans l'historique des commandes, on utilise la touche **Flèche Haut** ou **Flèche Bas**. La commande **history** affiche l'ensemble de l'historique, ainsi que leur ordre de frappe. Parfois, ces dernières instructions ne sont pas suffisantes pour accéder à ce dont on a besoin, on peut faire une recherche de terme grâce à la combinaison de touche **Ctrl + R + "terme recherché"**. On rappuie sur **Ctrl + R** jusqu'à ce qu'on trouve ce que l'on cherchait. On valide la sélection avec *Entrée*, attention cela lance la commande dans le terminal!

Quelques raccourcis claviers : 
* **Ctrl + L** : efface le contenu de la console (la commande **clear** fait la même chose)
* **Ctrl + D** : envoie le message **EOF** (end of file) à la console. Si on tape  le raccourci dans une ligne de commande vide, cela fermera la console (la commande **exit** a le même comportement)
* **Shift + PgUp** : permet de remonter dans les messages envoyés par la console.
* **Shift + PgDown** : permet de redescendre dans les messages envoyés par la console.
* **Ctrl + A** : ramène le curseur au début de la commande. La touche **origin** a le même effet.
* **Ctrl + E** : ramène le curseur à la fin de la ligne de commande. La touche **fin** a le même affet.
* **Ctrl + U** : supprime tout ce qui est à gauche du curseur.
* **Ctrl + K** : supprime tout ce qui est à droite du curseur.
* **Ctrl + W** : supprime le premier mot situé à gauche du curseur. Un mot est séparé par des espaces; on s'en sert en général pour supprimer le paramètre situé à gauche du curseur.
* **Ctrl + Y** : si on a supprimé du texte avec un des raccourcis ci-dessus, collera le texte supprimé.
### La structure des dossiers et fichiers
#### Organisation des dossiers
#### pwd & which : où... où suis-je ?
#### ls : lister les fichiers et dossiers
#### cd : changer de dossier
#### du : taille occupée par les dossiers
#### Résumé personnalisé
Les choses ne fonctionnent pas du tout de la même manière sous Linux et sous Windows. Sous Linux, on ne trouve pas de **C:\**, **D:\** etc. Au lieu de séparer chaque disque dur, lecteur de CD, de disquettes, cartes mémoires, Linux place en gros tout au même endroit.

Pour faire simple, il existe deux types de fichiers sous Linux :
* Les fichiers classiques : ce sont les fichiers textes (.txt, .doc, .odt ...), les sons, mais aussi les programmes.
* Les fichiers spéciaux : certains fichiers sont spéciaux car ils représentent quelque chose. Par exemple, le lecteur CD de l'ordinateur est un fichier pour Linux, là où Windows fait la distinction. Pour Linux, **tout** est fichier. C'est une conception très différente.

Dans un système de fichiers, il y a toujours ce qu'on appelle une racine, c'est un *gros dossier de base qui contient tous les autres dossiers et fichiers*. Sous Windows, il y a plusieurs racines. **C:\** est la racine du disque dur, **D:\** celle du lecteur CD (par exemple). Sous Linux, il n'y a qu'une seule racine : **/**. Il n'y a pas de lettre de lecteur car justement, Linux ne donne pas de nom aux lecteurs comme le fait Windows.

Sous Windows, un dossier peut être représenté de la manière suivante : **C:\Program Files\Winzip**. On dit que **Winzip** est un sous-dossier du dossier **Program Files**, lui même situé à la racine. C'est le **backslash (\)** qui sert de séparateur aux noms de dossiers. Sous Linux, c'est le contraire, le **/** sert de séparateur. La racine, le plus haut niveau de dossier, s'appelle juste **/**. Les dossiers sont complètement différents de ceux qu'on peut trouver nativement sur Windows.

Voici la liste des dossiers les plus courants sur Linux:
* **bin** : contient des programmes exécutables susceptibles d'être utilisés par tous les utilisateurs de la machine.
* **boot** : fichiers permettant le démarrage de Linux.
* **dev** : fichiers contenant les périphériques (lecteur de CD par exemple)
* **etc** : fichiers de configuration
* **home** : répertoires personnels des utilisateurs. Chaque utilisateur possède son répertoire personnel.
* **lib** : dossier contenant les bibliothèques partagées (fichiers .so ou .dll) utilisées par les programmes.
* **media** : contient les périphériques amovibles (clés USB, etc.)
* **mnt** : un peu comme **media**, mais pour un usage plus temporaire.
* **opt** : répertoire utilisé pour les *add-ons* de programmes.
* **proc** : contient des informations système.
* **root** : contient le dossier personnel du superutilisateur **root**, un espace spécial lui est dédié.
* **sbin** : contient des programmes systèmes importants.
* **tmp** : dossier temporaire utilisé par les programmes pour stocker des fichiers.
* **usr** : c'est un des plus gros dossiers, dans lequel vont s'installer la plupart des programmes demandés par l'utilisateur.
* **var** : ce dossier contient des données variables, souvent des logs (traces écrites de qui s'est passé récemment sur l'ordinateur).

Cette liste de dossiers est en fait présente sur les OS de type Unix, et pas seulement sous Linux.

Pour connaître le nom du dossier dans lequel on se situe (par exemple, connaître le nom exact que représente ~), on utilise la commande **pwd**. C'est l'abréviation de *Print Working Directory*. Elle ne prend aucun paramètre.

Pour connaître l'emplacement d'une commande on utilise le programme **which**. Elle prend un paramètre, le nom du programme que l'on recherche
	which pwd
En général, sous Linux, les programmes ne possèdent pas d'extension.
**ls** permet de lister les dossiers d'un répertoire donné ou non (celui dans lequl on se trouve si non mentionné). Ubuntu active la coloration des fichiers et dossiers par défaut. Les dossiers apparaissent en bleu foncé, les raccourcis en bleu clairs (le dossier se trouve ailleurs sur le disque). Pour ajouter la coloration automatique, soit on la passe en paramètre, soit on édite le **.bashrc** avec l'instruction suivante **ls --color=auto**. Éditer le **.bashrc** permet de ne pas resaisir à chaque fois l'instruction (cela peut être très pratique !). La commande **ls** accepte un grand nombre de paramètres, les plus utiles sont : 
* **-a** : affiche tous les dossiers et fichiers cachés. Affiche aussi **.**, le dossier courant et **..** si un dossier parent existe.
* **-A** : pareil que **-a**, sauf que n'affiche ni **.**, ni **..**.
* **-F** : indique le type d'élément, utile quand il n'y a pas de coloration syntaxiqye; rajoute un symbole à la fin des éléments pour les spécifier (/ pour un dossier, @ pour un raccourci).
* **-l** : liste détaillant chaque élément du dossier, un élément par ligne et chaque colonne a sa signification; de gauche à droite : droits sur le fichier, nombre de liens physiques, nom du propriétaire du fichier, nom du groupe auquel appartient le fichier, taille du fichier en octets, date de la dernière modification, nom du fichier (ou dossier). Dans le cas d'un raccourci ou lien symbolique, on nous précise vers où pointe le raccourci.
* **-h** : affiche la taille en Ko, Mo, Go, h signifie *Human Readable*.
* **-t** : trier par date de dernière modification.
* **-r** : renverse l'ordre d'affichage

On peut bien entendu combiner plusieurs options entre elles par exemple **ls -larth** qui liste les fichiers, dont les cachés, avec leurs renseignements respectifs dans l'ordre de modification du plus ancien au plus récent. On peut aussi s'épargner la frappe fastidieuse de tous ces paramètres en créant un alias de la commande dans le fichier de configuration **.bashrc** 

Pour se déplacer au sein des répertoires, on utilise la commande **cd** (Change Directory). Elle ne prend qu'un paramètre, le nom du dossier dans lequel on souhaite se rendre. L'invite de commande change pour noter le nouveau répertoire dans lequel on se situe. Pour revenir dans un répertoire parent on tape **cd ..**, pour revenir dans 2 répertoires parents, on tape **cd ../..**. On peut indiquer un chemin **relatif** ou un chemin **absolu**. Un chemin relatif dépend du dossier dans lequel on est, alors qu'un chemin absolu est le nom complet du dossier, on peut indiquer un chemin absolu depuis n'importe quel endroit, contrairement au chemin relatif. Pour retourne au répertoire **home**, on tape **cd ~** ou encore **cd** sans paramètres. Pour éviter de taper un chemin absolu dans son entier, on se sert de la tabulation.

La commande **du** renseigne sur la taille qu'occupe les dossiers du disque. Il y a des paramètres qui permettent de mieux comprendre ce qui nous est sorti.

* **-h** : comme pour **ls**, donne la taille de façon à mieux la comprendre, sans ça la taille est donnée en octets.
* **-a** : donne la taille des fichiers et des dossiers. Par défaut **du** ne donne la taille que des dossiers.
* **-s** : donne la taille totale du dossier dans lequel on lance la commande. Le point donné en sortie indique "le dossier courant".
### Manipuler les fichiers
#### cat & less : afficher un fichier
#### head & tail : afficher le début et la fin d'un fichier
#### touch & mkdir : créer des fichiers et dossiers
#### cp & mv : copier et déplacer un fichier
#### rm : supprimer des fichiers et dossiers
#### Résumé personnalisé
Pour afficher le contenu d'un fichier, il y a deux commandes principales **cat** et **less**.
**cat** affiche tout le fichier qu'on lui passe en paramètre. L'option -n permet de numéroter les lignes affichées en sortie.
**less** affiche le fichier page par page. La commande est très utile sur de gros fichier, car contrairement à **cat** qui affiche le contenu d'un coup, **cat** y va progressivement. Il existe une commande très proche : **more**, à la différence de **less**, elle possède peu de fonctionnalités et est moins puissante et rapide.
**less** prend le nom du fichier à afficher en paramètres. La commande arrête la lecture du fichier en fonction de la taille de l'écran de la console. Elle fonctionne avec quelques raccourcis indispensables:
* **Espace** : affiche la suite du fichier. Fait défiler d'un écran de console.
* **Entrée** : affiche la ligne suivante. Fait défiler ligne par ligne. **Flèche bas** a le même comportement.
* **d** : affiche les onze lignes suivantes. (une moitié d'écran)
* **b** : retourne en arrière d'un écran. **PageUp** a le même comportement.
* **y** : retourne d'une ligne en arrière. **Flèche haut** a le même comportement.
* **u** : retourne en arrière d'une moitié d'écran.
* **q** : arrête la lecture du fichier, met fin à la commande **less**.
* **=** : indique où on est dans le fichier (n° lg + %)
* **h** : affiche l'aide
* **/** : lance le mode recherche, après le slash renseigner le terme que l'on cherche dans le fichier avec **less**. On peut indiquer une regexp. On valide avec **Entrée**
* **n** : après une recherche, va à la prochaine occurrence du terme cherché.
* **N** : pareil que **n** mais dans le sens inverse.
(J'ai l'impression que de nombreuses commandes sont les mêmes que celles qu'on utilise dans Vim)
La casse des caractères est importante.

**head** affiche le début d'un fichier, **tail** affiche la fin. Elles ne permettent pas de se déplacer dans le fichier comme **less** mais juste de récupérer les premières et les dernières lignes.
Par défaut, **head** affiche les 10 premières lignes, mais on peut spécifier le nombre de lignes avec l'option -n.
**tail** affiche aussi les 10 premières lignes par défaut et on peut aussi préciser avec -n le nombre de lignes à afficher. La commande **tail** a plus d'options que **head**, en pas hésiter à consulter l'aide des commandes pour s'en rendre compte. L'option -f (pour follow) demande à **tail** de suivre la fin du fichier au fur et à mesure de son évolution. C'est extrêmement utile pour suivre un fichier de log qui évolue souvent, les nouvelles lignes s'affichent au fur et à mesure. On fait **Ctrl + C** pour sortir de la commande (correspond à **Alt + F4** sous Windows. Si on rajoute l'option -s avec une valeur chiffrée à l'instruction **tail -f**, on peut ains définir le nombre de secondes au bout duquel on demande * tail de suivre l'évolution du fichier. Les nombres décimaux sont autorisés à condition d'utiliser **.** à la place de **,**.

Il n'existe aucune commande spécialement conçue pour créer un fichier vide. En général, on ouvre un éditeur de texte, on enregistre et cela crée notre fichier. **touch**, à la base, sert à modifier le *timestamp* d'un fichier, à modifier la date de sa dernière modification. D'où son nom, on "touche" le fichier pour faire croire à l'ordinateur qu'on vient de le modifier alors qu'on n'a rien changé. L'intérêt de **touch** dans ce chapitre, c'est que si le fichier n'existe pas, alors il sera créé. On peut donc aussi utiliiser **touch** pour créer des fichiers, même si la commande n'est pas prévue pour cela à la base. La commande attend un paramètre, le nom du fichier "à créer". On peut créer plusieurs fichiers en une seule ligne, il suffit de séparer par des espaces les noms de fichiers à générer. Si le nom de fichier contient un espace, il suffit de l'encadrer entre une paire de guillemets (double quote).

**mkdir**, elle, est faite pour créer un dossier (make directory). Elle fonctionne de la même manière que **touch**, on peut créer plusieurs dossiers d'un coup en les séparant d'un espace et pour créer des dossiers intermédiaires inexistants, on utilise l'option -p.

Parmi les opérations de base sur les fichiers, il y a la copie et me déplacement de fichiers.
**cp** permet de copier un ou plusieurs fichiers / dossiers. Il y a plusieurs façons de se servir de la commande (ne pas hésiter à consulter l'aide pour plus de description).
La première : **cp SOURCE DESTINATION**. Le premier paramètre est le nom du fichier à copier, le second le nom de la copie à créer. **DESTINATION** peut être de nature **DIRECTORY**, dans ce cas-là, on peut utiliser la commande de la sorte : **cp SOURCE SOURCE SOURCE SOURCE DIRECTORY**. On peut copier plusieurs sources vers le répertoire de référence. C'est la deuxième façon de l'employer. La troisième façon ressemble à la seconde, sauf qu'on inverse l'ordre des paramètres **cp -t DIRECTORY SOURCE...**.
Avec l'option -R, on fait une copie récursive de SOURCE vers DEST, c'est-à-dire qu'on copie dossiers et sous-dossiers composant la SOURCE. Sinon on ne copie que le 1er niveau de SOURCE.
Le symbole **\*\** est appelé **wildcard** ou **joker**, il permet de remplacer n'importe quel caractère.
Exemple, on souhaite copier tous les fichiers .jpg d'un répertoire : **cp \*.jpg DIRECTORY/**. Le joket est un outil très puissant.

Pour déplacer ou renommer un fichier, on utilise **mv**. L'utilisation est la même que **cp**, les arguments et options se placent de la même façon. Le joker est bien entendu utilisable. Pour renommer un fichier, il suffit de le déplacer dans son répertoire d'origine sous un autre nom : **mv ancien-nom nouveau-nom**, ainsi le fichier aura été renommé sous "nouveau-nom". On peut déplacer et renommer un fichier en même temps. **mv ancien-nom nouveau-dossier/nouveau-nom** déplacera l'ancien fichier vers le nouveau dossier tout en le renommant par le nouveau nom.

Pour supprimer un fichier, on utilise **rm**. Par défaut, la commande ne supprime pas les dossiers, seulement les fichiers. On lui force la main avec l'option **-r**. Attention toute suppression est définitive (pas de récupération possible en corbeille), donc bien faire attention, ne pas hésiter à utiliser le flag **-i** pour demander la confirmation de la suppression, c'est une sécurité supplémentaire, on doit confirmer la suppression par "y" ou "n". Le paramètre à donner à la commande est le chemin (relatif ou absolu) du fichier à détruire. On peut supprimer plusieurs fichiers d'un coup, en les passant en paramètres à la suite, en les séparant par des espaces. **-f** force la suppression, ne demande pas de confirmation même s'il y a un problème, à ne vraiment utiliser que si on sait ce qu'on fait. **-v** est un paramètre que l'on retrouve dans beaucoup de commandes sous Linux. Il permet de demander à la commande d'expliquer ce qu'elle est en train de faire. Il existe la commande **rmdir** qui supprime les dossiers seulement s'ils sont vides.
Si on nous demande d'entrer **rm -rf /\*\** en console, ne pas le faire! Cette commande supprime tout notre disque dur depuis la racine ! On est bon pour une réinstallation TOTALE des OS (Linux et Windows compris). C'est la gestion des droits utilisateurs qui nous protégera d'un suppression intempestive. Il faut être loggé en tant que **root** pour pouvoir détruire des racines auxquelles seul **root** peut accéder. Somme toute, on peut légitimement avoir besoin de **rm -rf *\**, pour supprimer un dossier complet par exemple.

La commande **ln** permet de créer des liens entre des fichiers, elle créé des raccourcis. Sous Linux, on appelle ces raccourcis **liens**. On peut créer deux types de liens : les liens **physiques** et les liens **symboliques**. Ces deux types de lien ne fonctionnent pas de la même manière. Pour comprendre ce qui les différencie, il faut savoir comment un OS tel que Linux gère les fichiers sur le disque dur.

En résumant très grossièrement, chaque fichier, sur un disque dur, est séparé en trois parties :
* Son nom;
* Ses informations de gestion (droits d'accès);
* Son contenu.

La liste des noms de fichiers est stockée à un autre endroit que leur contenu et des informations sur les droits d'accès. Cette séparation aide Linux à s'organiser.

Chaque contenu de fichier se voit attribuer un numéro d'identification appelé **inode**. Chaque nom de fichier est associé à un **inode** (son contenu).

Un lien physique est plus rarement utilisé qu'un lien symbolique, mais il peut quand même se révéler pratique. Un lien physique permet d'avoir deux noms de fichiers qui partagent exactement le même contenu, c'est-à-dire le même inode. Ainsi, que nous passions par un fichier ou son lien physique, on modifie exactement le même contenu. En quelque sorte, le fichier est le même. On peut juste y accéder via deux noms de fichiers différents. On ne peut pas créer de liens physiques sur des répertoires, cela ne fonctionne qu'avec les fichiers, pour faire un "raccourci" vers un répertoire on préfèrera un lien symbolique. La commande **ln** créé des liens physiques par défaut. La syntaxe d'utilisation est la suivante **ln CIBLE HARD-LINK**. Pour vérifier que tout s'est bien passé, faire **ls -li** juste après (si dans même répertoire), l'option -i permet de visualiser les n° d'inodes et donc de confirmer que les 2 fichiers pointent bien vers le même inode. L'option -l ne nous permet que de savoir combien de liens physiques pointent vers le même inode, sans nous dire lequel est l'original duquel est le lien. L'inode est supprimé uniquement lorsque plus aucun nom de fichiers ne pointe dessus. Il faut donc supprimer la cible et le lien physique pour supprimer l'inode (le contenu).

Les liens symboliques ressemblent plus aux "raccourcis" dont on peut avoir l'habitude sous Windows. La plupart du temps on crée des liens symboliques sous Linux pour faire un raccourci et non des liens physiques (qui sont un peu particuliers). Le principe est que l'on crée un lien vers un autre nom de fichier. Cette fois, on point vers le nom de fichier et non vers l'inode directement. On utilise la syntaxe suivante **ln -s CIBLE SOFT-LINK**. Ici, la commande **ls -l** est suffisante pour distinguer un lien symbolique : la première colonne, en sortie, donnera un **l** en 1ere position dans la liste des informations des droits d'accès (donne un **d** si c'est un dossier et rien si c'est un fichier) et la dernière colonne pointe vers la cible originale. Les liens symboliques sont plus faciles à repérer que les liens physiques. Qu'on ouvre la cible ou le lien, le contenu édité sera le même. Si on supprime le lien, rien de fâcheux ne se passe. Si on supprime la cible, alors on ne peut plus éditer le contenu depuis le lien, le contenu n'existant plus. Le lien pointera vers un fichier n'existant plus, donc sera inutile, le lien sera cassé. On parle alors de lien mort. L'avantage c'est qu'on peut créer un lien symbolique sur un répertoire contrairement aux liens physiques.
### Les utilisateurs et les droits
#### sudo : exécuter une commande en root
#### adduser : gestion des utilisateurs
#### addgroup : gestion des groupes
#### chown : gestion des propriétaires d'un fichier
#### chmod : modifier les droits d'accès
#### Résumé personnalisé
Un compte utilisateur a des droits limités dans un environnement Linux. Il s'agit d'une sécurité de ne pas avoir le droit de tout faire par défaut car certaines commandes peuvent être dangereuses pour la stabilité et la sécurité d'un ordinateur. Par exemple, un virus ne peut rien faire si on n'est simplement connecté en utilisateur normal, avec des droits limités.

On peut créer autant d'utilisateurs que l'on veut, eux-mêmes répartis en groupe. Il y a un utilisateur spécial, **root**, appelé aussi *superutilisateur*. Il a tous les droits sur la machine. On ne se connecte à root que lorsque c'est nécessaire. Certaines commandes ne sont accessibles qu'en **root**. Ubuntu est une des rares distro à interdire de se logger en root (en début de session par exemple). On peut y accéder au besoin, mais "on ne peut pas ouvrir Ubuntu en root".

La commande **sudo** permet de devenir **root** le temps d'une instruction. On nous demandera notre mot de passe. La commande **sudo su** permet de rester **root** indéfiniment. On quitte le mode **root** avec l'instruction **exit** ou le raccourci clavier **Ctrl + D**. Certaines distribution permettent d'accéder au compte root seulement avec **su**. En ajoutant **su -**, cela a pour effet de rendre accessibles certains programmes destinés seulement à root et cela nous déplace dans le répertoire de root.

Pour gérer les utilisateurs, on peut mener plusieurs actions (on n'oublie de se mettre en root) :

* Ajouter un utilisateur : **adduser** (si Debian) sinon **useradd** (commandes Unix traditionnelles, moins d'options). Un répertoire personnel est automatiquement créé et le compte préconfiguré. Après le **username**, on nous demandera d'entrer un **password** et de le confirmer. Puis on peut rentrer quelques informations personnelles telles que le nom de famille, le numéro de téléphone, etc.
    
        adduser USERNAME

* Modifier un mot de passe : **passwd**. Si on ne précise pas de quel utilisateur, on souhaite modifier le mot de passe, alors on modifie celui du compte sur lequel on est loggé... Faire très attention à ce détail !
    
        passwd USERNAME

* Supprimer un utilisateur : **deluser** (si Debian) sinon **userdel**. Attention, aucune confirmation ne sera demandée! Toutefois, la commande toute seule ne supprime pas le répertoire personnel /home, on utilise le drapeau **--remove-home**. Ne pas supprimer son propre compte, ou le compte sur lequel on est loggé sous peine de ne pouvoir se reconnecter au nouveau démarrage d'Ubuntu (impossible de se connecter en root !).

        deluser [--remove-home] USERNAME

Attention, avec **useradd**, il faut appeler la commande **passwd** pour créer le mot de passe du compte, sans quoi le compte ne sera pas activé

Chaque utilisateur appartient à un groupe. Si on ne le définit, à la création de l'utilisateur, alors un groupe du même nom que celui de l'utilisateur se crée. L'intérêt des groupes utilisateurs permet de cloisonner les données que l'on souhaite partager, ou non.

On ajoute un utilisateur à un groupe avec la commande **addgroup** (**groupadd** si non Debian)

    addgroup GROUPE

La commande **usermod** permet d'éditer un utilisateur. Elle possède plusieurs paramètres dont :
* **-l** : renomme l'utilisateur (le répertoire personnel ne sera pas renommé);
* **-g** : change de groupe
* **-G** : pour que l'utilisateur appartienne à plusieurs groupes. Noms des groupes à déclarer après l'option en les séparant par des virgules, pas d'espaces entre les virgules, seulement entre les paramètres (les espaces).
* **-a** : conserve les groupes auxquels appartenait l'utilisateur, à combiner avec -G si on ne souhaite qu'ajouter l'utilisateur à des groupes (sinon on perd les groupes).

Pour supprimer un groupe, on utilise **delgroup** (**groupdel** si non Debian)

    sudo delgroup GROUPE	

Seul **root** peut changer le propriétaire d'un fichier.

* **chown** :  change le propriétaire d'un fichier (peut aussi changer le groupe, on ajoute : après le nom du nouveau propriétaire ainsi que le nouveau nom de groupe)
    
    sudo chown NEW-PROP[:NEW-GRP] FILE

* **chgrp** : change le groupe d'un fichier

    sudo chown NEW-GRP FILE

L'option -R affecte récursivement les sous-dossiers

Chaque fichier et chaque dossier possède une liste de droits. Cette liste indique qui a le droit de voir, modifier(/supprimer) ou exécuter un fichier/dossier. On peut trouver cette liste de droits avec la commande ls -l par exemple. Il s'agit de la première colonne en sortie de la commande:

* **d** : indique si l'élément est un dossier
* **l** : indique si l'élément est un lien
* **r** : indique si l'élément est lisible
* **w** : indique si l'élément est modifiable / supprimable
* **x** : indique si l'élément est exécutable si c'est un fichier; si c'est un dossier, indique que l'on peut le traverser, c-à-d voir les sous-dossiers qu'il contient si on le droit de lecture dessus.

Si la lettre apparaît, alors on a les droits, sinon il y a un tiret. Les droits sont découpés en fonction des utilisateurs, le premier triplet correspond au propriétaire du fichier, le deuxième au groupe du fichier et le derniers aux autres utilisateurs du fichier. root a tous les droits !
On n'a pas besoin d'être root pour changer les droits d'un élément.

On peut attribuer des droits avec des chiffres (**chmod** absolu) ou avec des lettres (**chmod** relatif)
À chaque droit correspond un chiffre : 1 pour x, 2 pour w et 4 pour r. On les additionne pour donner le droit voulu. On répète l'action de sorte à se retrouver avec un triplet de droits : 777 donne les droits de lecture / écriture / exécution au proprio, au groupe et aux autres utilisateurs. Attention 000 retire tous les droits à tout le monde, sauf à root.

    chmod 600 file

Avec les lettres, le principe revient un peu au même, sauf qu'on peut paramétrer plus finement les droits.
* **u** : user (propriétaire);
* **g** : group (groupe);
* **o** : other (autres);
* **+** : ajouter le droit;
* **-** : supprimer le droit;
* **=** : affecter le droit;
    chmod u+rx file
L'option **-R** affecte récursivement les modifications.
### Nano, l'éditeur de texte du débutant
#### Résumé personnalisé
Descriptif de l'utilisation de l'éditeur de texte Nano (perso, je suis sur Vim, donc je ne vais pas particulièrement m'étendre sur le sujet Nano). Nano s'inspire de pico, un éditeur de texte plus ancien. Le nom Nano vient du fait que l'éditeur est un tout petit programme (en comparaison avec emacs ou vim).

On nous parle également dans ce chapitre des fichiers de configurations **.bashrc** ou encore **.profile**

On trouve ces fichiers en deux endroits:
- Soit dans le répertoire /etc/programme/fichier-de-config
- Soit dans le répertoire personnel /home/USERNAME/.bashrc (s'il n'existe pas, on peut le créer, ou copier ici celui dans /etc, dans ce cas bien faire attention à être root). Le fichier de config du répertoire utilisateur prend la priorité sur le fichier de /etc/...

Le **.profile** est lu dans chaque nouvelle console dans laquelle on se logge (login/mdp), c'est le cas des consoles qu'on ouvre avec la combinaison **Ctrl+Alt+Fn°** (tty1 à tty6). Le **.bashrc** est lu lorsqu'on ouvre une console dans laquelle on se ne se logge pas, c'est le cas des console qu'on ouvre en mode graphique (Terminal sous Unity, Konsole sous KDE). La subtilité c'est que .profile appelle .bashrc... DOnc il suffit de modifier .bashrc pour modifier les options de toutes les consoles.
### Installer des programmes avec apt-get
#### Les paquets et leurs dépendances
#### Les dépôts
#### Les outils de gestion des paquets
#### apt-get update : mettre à jour le cache des paquets
#### apt-cache search : rechercher un paquet
#### apt-get install : installer un paquet
#### apt-get autoremove : supprimer un paquet
#### apt-get upgrade : mettre à jour tous les paquets
#### Résumé personnalisé
Sous Linux, on n'installe pas un programme comme sous Windows. Ce dont on parlera ici, ne concerne que les distributions Debian. Chaque distro a sa propre façon d'installer un programme. C'est une différence majeure entre les distributions. Sous Ubuntu, on a des paquets à la place des programmes d'installation. Un paquet est une sorte de dossier zippé contenant touts les fichiers du programme. Son extension est **.deb** (pour Debian).
Il y a deux différences notables entre un **.exe** et un **.deb** : il y a une gestion des dépendances du programmes et tous les **.deb** sont rassemblés au même endroit sur un même serveur appelé dépôt (repository) contrairement à Windows où il faut chercher son programme par navigateur.
Un programme sous Linux utilise d'autres programmes ou bout de programmes qu'on appelle bibliothèques. On dit que les programmes dépendent d'autres programmes pour fonctionner : ils ont des dépendances. Sous Debian, chaque paquet indique de quels autres paquets il dépend. Cela permet au système d'aller récupérer les dépendances manquantes automatiquement au besoin.

En fait, il existe un grand nombre de dépôts disposant tous des mêmes paquets afin de gérer l'afflux des nombreux Linuxiens. C'est donc à nous de choisir le dépôt à utiliser. Il est conseiller de choisir le serveur le plus proche géographiquement (pour un téléchargement plus rapide). En France, par défaut, Ubuntu utilise le dépôt **fr.archive.ubuntu.com**. Mais en cas de nouvelle version d'Ubuntu et de ses logiciels, celui-ci est surchargé et devient très lent. La liste des dépôts utilisés est stockée dans un fichier **/etc/apt/sources.list**. Le fichier contient des lignes avec des instructions commençant par **deb** ou **deb-src**. **deb-src** est utile si on souhaite récupéré le code source d'un programme, sinon on utilise majoritairement **deb**. En premier paramètre, on a l'adresse du dépôt, ensuite vient le nom de la distribution (focal pour WSL), puis la section du dépôt dans laquelle regarder. Pour changer le dépôt, il suffit de remplacer tous les **http://archive.ubuntu.com/ubuntu/** par l'adresse du serveur que l'on souhaite. On trouve un dépôt (des milliers existent) par moteur de recherche. On peut aussi faire la modification par l'outil graphique : Ubuntu -> Système -> Administration -> Sources de logiciels. C'est d'ailleurs plus pratique que d'éditer le fichier sources.list.

Les deux programmes de gestion des paquets les plus connus sont **apt-get** et **aptitude**. **aptitude** est plus efficace pour désinstaller des paquets : il désinstalle les dépendances inutilisées. Cependant **apt-get** a évolué et peut le faire aussi.

En général, il faut suivre 3 étapes pour télécharger un paquet :
* **apt-get update** : met à jour le cache; Cela correspond à télécharger la nouvelle liste des paquets proposés par le dépôt. Il ne faut pas nécessairement mettre à jour son cache à chaque fois  que l'on veut télécharger un paquet. On le fait quand on change / ajoute un dépôt à sa liste de dépôts et quand ça fait un moment qu'on n'a pas mis à jour le cache. On update en tant que root.
* **apt-cache search PAQUET** : pour rechercher un paquet dont on ne connait pas exactement le nom; cela évite d'aller chercher sur Internet le nom de son paquet. Pour une plus ample description on fait **apt-get show PAQUET**
* **apt-get install PAQUET** : pour télécharger et installer un paquet. On installe en tant que root, car peut être que le programme a besoin d'accéder à des dépendances ou répertoires seulement accessibles en tant que root. Pas besoin de dézipper ou quoique ce soit, **apt-get** gère l'installation de A à Z.

**apt-get remove PQT** supprime les paquets, **apt-get autoremove PQT** supprime les paquets et les dépendances. Et pour les gens qui ont WSL, pour un nettoyage en bonne et dûe forme, on fait **apt-get remove --auto-remove PQT** (pas d'autoremove).

**apt-get upgrade** met à jour tous les paquets installés sur son système d'un seul coup. Il faut penser à faire un **apt-get update** avant d'upgrader les paquets. Il est conseillé de le faire souvent afin d'avoir le système le plus à jour possible. Cela permet de bénéficier des dernières fonctionnalités des logiciels, mais cela corrige aussi les failles de sécurité qui auraient pu être découvertes.
### RTFM : lisez le manuel !
#### man : afficher le manuel d'une commande
#### Comprendre le SYNOPSIS
#### apropos : trouver une commande
#### D'autres façons de lire le manuel
#### Résumé personnalisé
Ici, on apprend à lire la documentation au sein de Linux. On utilise man, --help et parfois -h (mais vaut mieux utiliser le paramètre long, car il arrive que le paramètre court soit programmé pour une toute autre action).
Pour obtenir un version française du manuel : **apt-get install manpages-fr** (attention, la version française n'est pas forcément à jour !).

La commande **apropos** permet de chercher une commande par mots-clés, c'est un peu l'inverse du **man**. La commande **whatis** permet d'obtenir un court descriptif de la commande qu'on donne en paramètre.
### Rechercher des fichiers
#### locate : une recherche rapide
#### find : une recherche approfondie
#### Résumé personnalisé
**locate**, ou slocate ou encore mlocate, localise le(s) fichier(s) donné en paramètre

    locate linux
    Localise tous les fichiers dans le système en lien avec le mot Linux

La commande effectue sa recherche dans la base de données des fichiers et ne parcourt pas tout le disque. Une fois par jour le système met à jour sa base de données, c'est peut-être pour cela qu'il ne donne pas toujours le résultat attendu, notamment dans le cas d'un fichier nouvellement créé mais non encore inclus dans la-dite base de données. Dans ces cas-là, on peut demander à la base de données de se mettre à jour par la commande **sudo updatedb**.

Il y a aussi **find** qui est plus puissant, de par les options possibles et les actions à exécuter. On peut faire des opérations sur des fichiers. C'est une commande complexe.

On l'utilise de cette façon : find "où" "quoi" "que-faire-avec". Seul le paramètre "quoi" (fichier à rechercher) est obligatoire. Le paramètre "où" nous demande dans quel endroit du disque rechercher, on peut juste lui demander de faire la recherche dans le répertoire /home plutôt que sur tout le disque. Avec "que-faire-avec", on peut demander des actions automatiques, des posts-traitements. L'action la plus courante consiste à afficher la liste des fichiers trouvés.

Rechercher à partir d'un nom : **find -name FILENAME**

Rechercher à partir d'un nom dans mon répertoire home : **find /home -name FILENAME**

Il faut ajouter un wildcard dans le nom (début ou fin ou les deux) si on veut tout les fichiers comportant "FILENAME", sinon ne renvoie qu'exactement FILENAME.

**find ~ -size +10M** Cherche dans mon /home les fichiers > 10 Mo. On utilisera le - pour des recherches "inférieures à".

On peut également rechercher à partir de la date de dernier accès, en jour avec **-atime**, ou du type de fichier avec **-type**. On peut également les formater avec **-printf** (lire le man pour la syntaxe à utiliser). On peut aussi supprimer des fichiers avec **-delete**. Mais bien faire attention, car il n'y aura d'avertissement sur la suppression en cours.

On peut aussi passer une commande à **-exec** :

    find -name "*.jpg" -exec chmod 600 {} \;

Et si on souhaite une confirmation de l'action, on remplace -exec par -ok
### Quiz 2
#### Compétences évaluées
* Parcourir les répertoires et afficher les dossiers
* Exécuter des commandes dans la console
#### Question 1
Quel est l'effet de la combinaison des touches suivante : Ctrl + Alt + F1
* Redémarre l'ordinateur
* Redémarre le serveur X
* Ouvre une console en plein écran
* Ouvre une console dans une fenêtre de l'interface graphique
#### Question 2
Vrai ou Faux ? Xindows est équipé par défaut d'un logiciel qui permet de se connecter à la console d'une machine Linux en SSH
* Vrai
* Faux
#### Question 3
Que signifie le symbole $ juste avant l'invite de commande ?
* Vous n'avez pas acheté votre copie de Linux
* Vous êtes connecté à Internet
* Vous êtes connecté en tant qu'utilisateur normal (et non root)
#### Question 4
Comment pouvez-vous faire une recherche parmi les commandes déjà tapées dans la console
* Ctrl + R
* Ctrl + A
* Ctrl + ?
#### Question 5
Comment lister les fichiers présents dans un répertoire ?
* ls
* pwd
* cd
#### Question 6
Si mon nom d'utilisateur est mateo21 et que je tape "cd ~", dans quel répertoire vais-je me retrouver ?
* /mateo21
* /~
* /home/mateo21
* Une erreur s'affiche car le répertoire ~ n'existe pas
#### Question 7
Quel effet a la commande "rm"
* Elle copie un fichier
* Elle supprime un fichier
* Elle envoie un fichier sur Internet
* Elle met un fichier dans la corbeille
#### Question 8
Quelle commande permet d'afficher les premières lignes d'un fichier
* head
* tail
* top
#### Question 9
Comment exécuter une commande en tant que root sans avoir à se logger en root ?
* sudo
* beroot
* doitnow
* Ce n'est pas possible
#### Question 10
Je ne me souviens plus de la façon dont on utilise la commande chown. Que dois-je faire ?
* Crier sur les forums "A L'AIDE !!!"
* Taper "man chown"
* Taper "help chown"
## Partie 3
### Extraire, trier et filtrer des données
#### grep : filtrer des données
#### sort : trier les lignes
#### wc : compter le nombre de lignes
#### uniq : supprimer les doublons
#### cut : couper une partie du fichier
#### Résumé personnalisé
**grep** cherche un mot ou une regexp dans un fichier et affiche les lignes dans lesquelles le mot a été trouvé.

    grep texte FILENAME
    -i : insensible à la casse
    -n : n° des lignes où le pattern est trouvé
    -v : ignorer un mot
    -r : recherche récursive -> rgrep
    -E : regexp -> egrep

**sort**
D'abord on crée un fichier de nom afin de pouvoir s'entraîner avec la commande (donc, oui je vais le pusher également, mais c'est dans le but de me remettre à niveau en git/vim/shell).

    sort FILENAME
    -o : écrire le résultat dans un fichier 
    sort -o DEST SOURCE
    -r : trier en ordre inverse
    -R : trier aléatoirement
    -n : trier les nombres
On crée aussi un fichier de nombres pour les trier...

**wc**
Commande très utile pour compter les mots, les lignes, les octets ou encore les caractères dans un fichier. Sans option donnée, **wc** affiche le nombre de lignes, le nombre de mots et le nombre d'octets du fichier passé en paramètre.

    wc [OPT]... [FILENAME]...
    -l : compter le nombre de lignes
    -w : compter le nombre de mots
    -c : compter le nombre d'octets
    -m : compter le nombre de caractères

**uniq**
Il s'agit d'une commande permettant de détecter et supprimer les lignes en doublons dans un fichier. On peut rediriger la sortie dans un fichier. La commande ne repère que les lignes successives identiques, donc il faut travailler sur un fichier trié avec **sort**. La syntaxe est la suivante : 

    uniq [OPT]... [INPUT[OUTPUT]]
    -c : compter le nombre d'occurrences
    -d : afficher uniquement les lignes présentes en double
    -u : afficher les lignes uniques

**cut**
Cette commande nous permet de couper du texte au sein d'un fichier. On peut couper selon un nombre de caractères, selon un délimitateur défini ou encore selon un champ ou un ensemble de champs. Attention, la commande a du mal avec les lettres accentuées car elle se réfère au nombre d'octets et non au nombre de caractères. Une lettre accentuée occupe deux octets.

    cut OPTION [FILE]
    -c : couper selon le nombre de caractères
    cut -c 2-5 FILENAME : conserve les caractères 2 à 5
    cut -c -3 FILENAME : coupe à partir du 3e caractère
    cut -c 3- FILENAME : conserve à partir du 3e caractère
    -d : couper selon un délimiteur
    -f : conserve selon un champ (à spécifier par n° d'index)
    cut -d , -f 1 FILENAME : le délimiteur séparant les champs est ",", on ne conserve que le 1er champ
    cut -d , -f 1,3 FILENAME : pareil mais on garde les champs 1 et 3
    cut -d , -f 1-3 FILENAME : pareil mais on garde les champs 1 à 3

On peut utiliser les mêmes façons d'indiquer les caractères pour les champs.
### Les flux de redirection
#### > et >> : rediriger le résultat dans un fichier
#### 2>, 2>> et 2>&1 : rediriger les erreurs
#### \< et \<\< : lire depuis un fichier ou le clavier
#### | : chaîner les commandes
#### Résumé personnalisé
Il est possible de rediriger le résultat d'une commande, que ce soit dans un fichier ou en entrée d'une autre commande. On appelle cela chaîner les flux de redirection.

\> permet de redifiger un flux au début d'un fichier

    cut -d , -f 1 02-03-notes.csv > 02-03-eleves

On vient de rediriger le 1er champ de chaque ligne, champs délimités par une virgule, depuis le fichier 02-03-notes.csv vers le fichier 02-03-eleves. Un fichier n'est pas obligé, sous Linux, d'avoir une extension. Si le fichier n'existait pas, il sera créé, sinon il sera écraser.

On peut aussi vouloir ne pas récupérer la sortie d'une commande, ni la lire. Dans ces cas-là on la redirige dans le trou noir de linux **/dev/null**

    cut -d , -f 1 02-03-notes.csv > /dev/null

\>\> permet de rediriger un flux à la fin d'un fichier. L'avantage c'est que ça n'écrase pas le fichier s'il existe déjà

    cut -d , -f 1 02-03-notes.csv >> 02-03-eleves

Toutes les commandes produisent deux  flux de données différents : 

* la sortie standard
* la sortie d'erreurs

Si tout va bien à la suite du commande, le contenu s'affiche sur la sortie standard, sinon le contenu s'affiche sur la sortie d'erreurs. Par défaut tout s'affiche dans la console.

Pour rediriger la sortie d'erreurs dans un fichier, on utilise 2>

    cut -d , -f 1 fichier_inexistant.csv > 02-03-eleves 2> erreurs.log

Ici, on redirige 2 flux : le standard vers le fichier 02-03-eleves, la sortie d'erreurs vers le fichier erreurs.log. Pour cumuler les erreurs, ne pas oublier d'utiliser 2>>.

Parfois, on ne veut pas séparer les informations dans 2 fichiers. On peut fusionner les sorties en un seul même fichier :

    cut -d , -f 1 fichier_inexistant.csv > 02-03-eleves 2>&1
    
Cela a pour effet de rediriger la sortie d'erreurs sur la sortie standard, elle-même redirigée vers un fichier : tout va donc dans le même fichier. Ne marche pas avec 2>>&1. 2>&1 renvoie les erreurs de la même façon que la sortie standard, donc pour ne pas écraser un fichier, on écrira :

    cut -d , -f 1 fichier_inexistant.csv >> 02-03-eleves 2>&1

À l'inverse, il y a l'entrée. On peut décider d'où vient l'entrée d'une commande.

< permet de lire depuis un fichier

    cat < 02-03-notes.csv

La commande **cat** reçoit le contenu du fichier qu'elle se contente d'afficher dans la console, c'est le shell qui se charge d'y envoyer le contenu. Si on avait utilisé **cat** comme on l'a utilisé jusqu'à présent, donc sans redirection de flux d'entrée, alors **cat** ne reçoit que le nom du fichier en entrée. Elle doit ensuite se charger d'ouvrir le fichier pour renvoyer le contenu. La différence est subtile mais présente.

<< permet de lire depuis le clavier

On peut envoyer le contenu tapé au clavier grâce au double chevron ouvrant. Cela fonctionne avec un mot-clé qu'on indique en début et fin de saisie.
    
    sort -n << FIN
    > 13
    > 132
    > 10
    > 121
    > FIN
    10
    13
    121
    132

    wc -m << FIN
    > Combien de caractères dans cette phrase ?
    > FIN
    42

FIN peut-être remplacé par n'importe quel mot-clé. Ce qui compte, c'est que ce soit le même mot en début et fin de saisie.

Bien entendu, on peut rediriger l'entrée standard depuis un clavier ou un fichier pour rediriger la sortie standard et/ou d'erreurs vers un fichier.

| le pipe chaîne les commandes. C'est-à-dire qu'avec ce symbole, on peut passer la sortie d'une commande vers l'entrée d'une autre. C'est une des plus importantes fonctionnalités de la console.

Comme ce ne serait pas marrant, je ne peux pas réutiliser l'exemple du cours pour m'exercer, à savoir afficher la taille des répertoires liés à Firefox dans mon home. C'est parce que j'utilise la WSL, et que Firefox serait plutôt situé dans /mnt que dans ~ (dans mon cas de figure), et que malgré un sudo en bonne et dûe forme, la permission m'est denied... J'obtiens bien un résultat avec la commande suivante, mais elle arrive dans un laps de temps assez conséquent :

    sudo du / | grep Firefox | sort -nr | head -n 25

J'ai choisi de faire l'exercice avec le terme "perl" à rechercher dans le dossier /usr et d'en lister la taille des 25 plus gros dossiers. La commande que j'ai utilisée est la suivante : 

    du /usr | grep perl | sort -nr | head -n 25

Le dernier exercice consiste à rendre un peu moins verbeux le résultat obtenu avec un pipe. On va combiner la commande cut pour ne garder que le nom du fichier, ainsi que la commande uniq pour ne pas récupérer deux fois le même fichier, donc il faut trier avec sort avant. On doit chercher les fichiers contenant le mot log en leur sein dans le répertoire /var/log. Les informations sont séparées par ":", on va s'en servir comme délimiteur. Le nom du fichier se trouve dans le 1er champ.

    sudo grep -rI log /var/log | cut -d : -f 1 | sort | uniq

Les espaces avant et après le pipe ne sont pas obligatoires, c'est juste une question de lisibilité.
### Surveiller l'activité du système
#### w : qui fait quoi ?
#### ps & top lister les processus
#### Ctrl + C & kill : arrêter un processus
#### halt & reboot : arrêter et redémarrer l'ordinateur
#### Résumé personnalisé
Linux est un système multi-tâches : il peut gérer plusieurs programmes tournant en même temps. Mieux encore, comme c'est un systèmes **multi-utilisateurs**, il est en mesure de gérer en même temps les programmes tournant en même temps lancés par différents utilisateurs. Pour gérer tout cela sous Windows, on utilise la combinaison **Ctrl + Alt + Suppr** (donne accès à l'interface permettant d'ouvrir le gestionnaire de tâches), mais sous Linux on utilise d'autres outils.

La commande **w** montre qui est loggé et qu'y fait ce "qui". Cela permet de voir si une machine est surchargée et à quel point. Si on utilise Linux depuis son ordinateur personnel, on devrait normalement être le seul à l'utiliser. Pour que d'autres personnes puissent s'y connecter via Internet, il faut avoir configuré Linux pour.
(w ne semble pas fonctionner sur WSL comme sur un Linux traditionnel, il considère 0 utilisateur, donc informations vide, alors qu'il indique bien depuis quand la console est ouverte... j'ai testé avec l'émulateur git, c'est encore mieux : il ne reconnaît pas du tout w... et comme il n'y a pas de programmes apt avec git bash... faudra que je me contente de l'illustration du cours).

    $ w
    16:50:30 up  8:50,  2 users,  load average: 0,08, 0,34, 0,31
    USER    TTY      FROM            LOGIN@   IDLE   JCPU   PCPU  WHAT

Descriptif de l'affiche :
* L'heure : **16:50:30** -> **date**
* L'uptime : **up  8:50** -> **uptime**. C'est la durée de fonctionnement de l'ordianteur. Depuis combien de temps il est allumé. En général, l'uptime des serveurs est élevé, on a rarement besoin de les redémarrer. Linux n'a pas besoin d'être rebooté à l'installation de programmes (sauf MàJ noyau). Cela démontrer la robustesse de ce système.
* La charge : **load average: 0,08, 0,34, 0,31** -> **uptime** ou **tload**. La charge est un indice de l'activité de l'ordinateur : charge moyenne depuis 1, 5 et 15 minutes. Il s'agit du nombre moyen de processus (programmes) en train de tourner et nécessitant l'utilisation du processeur. Ce nombre dépend du nombre de processeurs de l'ordinateur. Quand la charge est très élevée pendant une longue période, c'est en général qu'il y a un problème. Si trop de programmes tournent en même temps, l'ordinateur aura du mal à répondre en cas de forte charge. On peut obtenir un graphique de l'évolution de la charge en console grâce à la commande **tload**. On la quitte avec **Ctrl + C**.
* La liste des connectés : **USER    TTY      FROM            LOGIN@   IDLE   JCPU   PCPU  WHAT** -> **who**
    * **USER** : login utilisateur
    * **TTY** : le nom de la console utilisée par l'utilisateur
    * **FROM** : l'adresse IP depuis laquelle l'utilisateur se connecte. Si connexion en local, il n'y a pas vraiment d'adresse IP.
    * **LOGIN@** : l'heure à laquelle l'utilisateur s'est connecté
    * **IDLE** : depuis combien de temps l'utilisateur est inactif (combien de temps il n'a pas lancée de commande)
    * **WHAT** : la commande qui est en train d'être exécutée.

Si on se voit 2 fois dans ce listing, c'est possiblement du au fait qu'on utilise l'interface graphique et une console en même temps.
Outre les utilisateurs, on peut voir quels sont les processus tournant sur la machine. Un processus est un programme qui tourne en mémoire. La plupart des programmes ne fonct tourner qu'un processus en mémoire (une seule version d'eux-mêmes), tel qu'OpenOffice (le cours est tellement à jour qu'on ne peut pas savoir qu'il s'agit de Libre Office à présent, et si ça fait comme au quiz 2, qu'on te pose une question de fonctionnement sur Windows 7 mais qu'on te donne la réponse concernant Windows 10...Hein Windows fall update et outil ssh installé par défaut...on se demande bien pourquoi il y a un chapitre entier sur l'installation de PuTTY et que les infos ne sont pas mises à jour... bref, ça râle). D'autres programmes lancent des copies d'eux-mêmes, Google Chrome fonctionne ainsi, il y a autat de processus en mémoire que d'onglets ouverts dans le navigateur.  
Sur un serveur web, on utilise, en général, Apache. Ce logiciel crée beaucoup de processus pour séparer ses activités. Il en va de même pour les système de gestion de base de données, comme MySQL.  
Dans la liste des processus, il est possible qu'il y ait des programmes que nous n'avons pas lancés, c'est normal c'est l'OS qui s'en est chargé.

**ps** nous donne la liste des processus qui tournent au même moment où on lance la commande. Cette liste n'est pas actualisée en temps réel contrairement à **top**. **ps** sans paramètre nous affiche 4 colonnes : le **PID**, n° d'identification du processus qui sera utile quand on voudra l'arrêter, le **TTY**, le terminal depuis lequel le processus est lancé, le **TIME**, la durée pendant laquelle le processus a occupé le processeur depuis son lancement et le **CMD**, le programme qui a généré le processus. Sans argument, la commande ne retourne que les processus générés par l'utilisateur, dans le terminal ouvert.

    ps -ef -> liste tous les processus
    ps -ejH -> affiche les processus en arbre
    ps -u USERNAME -> affiche les processus de USERNAME

**top** affiche dynamiquement les processus, c'est-à-dire que les processus en cours de fonctionnement sont régulièrement mis à jour. En haut, on retrouve l'uptime et la charge mais aussi la quantité de processeur et de mémoire utilisée. Tous les processus ne peuvent être affichés en même temps, car **top** ne conserve que les premiers afin de faire tenir les informations sur une seule page de console. Par défaut, les processus sont triés par taux d'utilisation du processeur. Les plus gourmands sont en haut de pile. On navigue dans ce programme comme on navigue dans le man ou encore less. **q** pour quitter et **h** pour obtenir l'aide de la commande (top --help ne fonctionne pas ! ). Quelques options du programmes : **B** met en gras certains éléments; **f** ajoute ou supprime des colonnes dans la liste; **F** change la colonne depuis laquelle s'opère le tri (%CPU par défaut); **u** filtre en fonction d'un utilisateur donné; **k** tue un processus, on a besoin du PID pour cela; **s** change l'intervalle de temps entre chaque rafraîchissement de la liste (par défaut, 3 secondes). Cette commande est très utile pour surveiller l'évolution de la charge tout en vérifiant les processus trop gourmands pouvant engendrer des problèmes.

**Ctrl + C**, dans une console, arrête un processus. On demande l'arrêt de la commande lancée. En mode graphique, c'est comme pour Windows, cela copie dans le presse-papier. En console pour copier/coller on sélectionne avec le clic gauche ce qui nous intéresse, on copie en appuyant sur la molette et on colle avec un clic droit. Cela correspond à l'action de fermer une fenêtre en cliquant sur la croix en haut à droite.

**Ctrl + C** ne fonctionne pas toujours pour arrêter une commande, notamment sur les programmes tournant en arrière-plan.**kill** tue un processus, même en arrière plan. Pour cela, il faut récupérer le PID du processus à killer.

    kill PID
    kill -9 PID -> force le processus à s'arrêter

Pour éviter d'avoir un récupérer tous les PID d'un processus, comme quand on utilise Google Chrome qui duplique ses onglets, on peut passer par **killall**:

    killall nom_commande

Si la commande ne renvoie rien, tous s'est bien passé. Sinon c'est soit qu'il n'y avait pas de processus, soit qu'on l'a mal orthographié. Dans ce cas, relancer un **ps** pour obtenir la liste des processus.

Pour arrêter ou redémarrer son ordinateur, on utilise **halt** ou **reboot**, en root. Les commandes utilisent **shutdown** pour procéder avec des paramètres spécifiques.

    sudo halt
    sudo halt --reboot
    sudo reboot

### Exécuter des programmes en arrière-plan
#### "&" et nohup : lancer un processus en arrière-plan
#### Ctrl + Z, jobs, bg & fg : passer un processus en arrière-plan
#### screen : plusieurs consoles en une
#### Résumé personnalisé
On lance un processus en arrière plan quand on a besoin de sa console et que l'opération peut prendre un certain temps et être très "bavarde". Cela a l'avantage d'éviter d'ouvrir une autre console pour faire ce qu'on a besoin.

**&** lance un processus en arrière-plan. On peut aussi rediriger les flux std et err afin d'éviter d'être envahi par les retours. C'est très utile dans les cas où on ne peut qu'ouvrir une seule console.

    $ find / -name "*log" > sortiefind 2>& &
    [1] 18231  -> n° processus en arrière-plan + n° PID

L'inconvénient de cette technique, c'est qu'elle est liée à la console utilisée. Si on la ferme, on perd le processus qui ne pourra s'exécuter jusqu'à la fin. Pour pallier à ça, on utilise la commande **nohup** qui détache le processus de la console de laquelle il a été lancé.

    $ nohup commande
    
    $ nohup cp video.avi copie_video.avi
    nohup: ajout à la sortie de \`nohup.out\`

Les sorties sont renvoyées vers nohup.out, donc pas besoin de rediriger les flux comme avec &. Cette commande est très utile quand on se connecte à un serveur. En effet, on pourra quitter la ligne de commande et se déconnecter tout en effectuant les tâches nécessaires à la maintenance d'un serveur par exemple.

**Ctrl + Z** permet de mettre en pause l'exécution d'un programme. Celui-ci s'arrête et on peut reprendre la main sur la console. À l'issue de la frappe, s'affiche son n° de processus (entre crochets), son état ainsi que le nom de la commande concernée par la mise en pause. Le programme reste quand même en mémoire, mais ne s'exécute plus. Pour relancer le-dit programme en arrière-plan on tape **bg**

    $ bg
    [1]+ top &

La console nous répond qu'elle a repris l'exécution de la commande (top pour l'exemple) en arrière-plan (c'est l'ampersand qui nous le confirme).

On peut envoyer autant de processus en arrière-plan que l'on souhaite, soit en les lançant avec **&** en fin de commande, soit en utilisant **Ctrl + Z** sur la dernière tâche lancée au premier plan, suivi de **bg**.

Pour connaître tous les processus tournant en arrière-plan, la commande **jobs** existe. Elle donne la liste des processus en arrière-plan avec leur numéro de processus, leur état et la commande concernée.

On peut reprendre un processus au premier plan avec **fg**. On précise le numéro de job concerné.
    
    fg %2 -> renvoie au premier plan le job n°2 lancé en background

**screen** est une commande un peu particulière et qui n'est pas toujours installée sur une machine. C'est un multiplicateur de terminal. Ce programme peut gérer plusieurs consoles en une seule, comme si chaque console était une fenêtre. Le programme permet entre autre de mettre en veille prolongée une console.
    
    screen -> Lance l'émulateur de console (peut nécessiter un sudo avant)


    Ctrl + D ou exit -> Quitte le programme
    Ctrl + a puis ? -> Affiche l'aide pour utiliser screen
    Ctrl + a puis v -> Affiche la version de screen
    Ctrl + a puis c -> Crée une nouvelle fenêtre
    Ctrl + a puis w -> Affiche la liste des fenêtres ouvertes
    Ctrl + a puis A -> Renomme la fenêtre actuel, le nom apparaît après avoir basculé de fenêtre
    Ctrl + a puis n -> Passer à la fenêtre suivante
    Ctrl + a puis p -> Passer à la fenêtre précédente
    Ctrl + a puis Ctrl + A -> Revenir à la dernière fenêtre utilisée
    Ctrl + a puis un chiffre de 0 à 9 -> Passer à la fenêtre n° X
    Ctrl + a puis " -> Choisir la fenêtre dans laquelle on veut aller
    Ctrl + a puis k -> Fermer la fenêtre actuelle
    Ctrl + a puis S -> Découper screen en plusieurs parties (split) 
    Ctrl + a puis \<Tab\> -> Passer d'une fenêtre à l'autre en mode split. Si fenêtre de déplacement vide, en créer une nouvelle avec Ctrl + a puis c, en choisir une numérotées
    Ctrl + a puis X -> Ferme une fenêtre splittée
    Ctrl + a puis s -> Détache screen de la console (le bascule en bg)

    screen -r [PID] -> Récupère la session détachée n° PID
    screen -ls -> Liste des screens ouverts

Certaines personnes ont l'habitude de tout faire sur screen, notamment sur les serveurs.  
Il est possible de personnaliser son screen via un fichier de configuration. Il doit être placé dans son répertoire utilisateur (comme pour .bashrc) et s'appeler .screenrc.
### Exécuter un programme à une heure différée
#### date : régler l'heure
#### at : exécuter une commande
#### sleep : faire une pause
#### crontab : exécuter une commande régulièrement
#### Résumé personnalisé
Il est possible de programmer l'exécution d'une ou plusieurs tâches à l'avance. C'est l'objet de ce chapitre. Mais tout d'abord, il faut appréhender la commande **date**, car toute programmation temporelle nécessite de s'appuyer sur son fonctionnement.

Sans paramètre, **date** renvoie la date actuelle, l'heure et le décalage horaire. On peut paramétrer la commande :

    $ date "+%H:%M:%S" -> Affiche 12:36:15

On ajoute **+** pour définir un format et **%** suivi de la variable correspondant au format recherché (**date --help** pour une liste des variables).

    $ date "+Bienvenue en %Y" -> Affiche Bienvenue en 2020

Pour modifier la date du système, il faut penser à se mettre en root. On précise les informations selon les informations suivantes : **MMDDhhmmYYYY** (M -> mois; D -> jour; h -> heure; m -> minutes; Y -> année). Il n'est pas obligatoire de préciser l'année.

    $ sudo date 11101250 -> configure la date système au mercredi 10 novembre (2010, année du cours) 12:50:50

Afin de planifier l'exécution d'une tâche, on utilise **at**. Attention, le programme ne sera exécuté qu'une fois. Pour une planification chronique,  on utilisera **crontab**. La commande s'utilise en deux temps : 
* On indique à quel moment on désire exécuter la commande
* On tape la ou les commande(s) à exécuter à l'heure indiquée, on valide avec **Ctrl +D**

    $ at 14:17
    warning: commands will be executed using /bin/sh
    at> echo "Hello"
    at> date
    at> <EOT> -> Réponse de at quand on tape Ctrl + D
    job 5 at Sat Aug 15 14:17:00 2015

Il y a plusieurs façon d'indiquer la temporalité :

    at 14:17 tomorrow
    at 14:17 08/15/20 -> Date au format US, le mois est mis d'abord
    at now +5 minutes -> Exécution dans 5 minutes à partir de maintenant (minutes, hours, days, weeks, months, years)

À chaque fois, **at** nous donnera un numéro de job. **atq** nous donnera la liste de ces jobs en attente et **atrm** nous laissera suprrimer un des ces jobs en précisant son numéro.

    $ atq
    $ atrm 13 -> sur le job n°13 programmé via at

On peut enchaîner les commandes en les séparant par **;**

    $ touche file; sleep 10; rm -vi file

La commande **sleep** permet de faire une pause entre deux commandes. Par défaut, le chiffre donné en paramètre est évalué en secondes, il faut préciser **m** pour des minutes, **h** pour des heures et **d** pour des jours.
Il est parfois pratique d'être certain qu'une commande s'est bien exécutée avant de lancer la suivant, d'où l'intérêt de marquer une pause. On pourrait tout aussi bien chaîner les commandes avec un opérateur ET


    $ touche file &&  sleep 10 && rm -vi file

De la sorte, on sait que sleep s'exécutera seulement si le code retour de la précédente commande renvoie VRAI ou 0, pareil pour l'exécution de rm, sleep devra renvoyer 0 ou VRAI pour poursuivre la suite de l'enchaînement.

Pour la suite, on va indiquer dans notre .bashrc notre éditeur de fichier par défaut, afin que **crontab** le prenne en compte par la suite. **crontab** gère la liste des programmes régulièrement exécutés, cron les exécute.

    $ echo "export EDITOR=vim" >> ~/.bashrc
    $ crontab -l -> affiche la crontab actuelle (une crontab par user)
    $ crontab -e -> modifie la crontab
    $ crontab -r -> supprime la crontab

Si on a bien configuré son .bashrc alors `crontab -e` devrait s'ouvrir dans son éditeur par défaut (j'ai mis vim, pas nano comme indiqué dans le cours).

Mon fichier crontab m'explique un peu comment m'en servir mais il est tout à fait possible de ne se retrouver qu'avec une seule ligne commentée:

    # m h  dom mon dow   command

Il s'agit de la syntaxe à employer :
* **m** : minutes (0-59)
* **h** : heures (0-23)
* **dom** : *day of month*, jour du mois (1-31)
* **mon** : *month*, mois (0-12)
* **dow** : *day of week*, jour de la semaine (0-6, 0 = dimanche)

Chaque ligne du fichier correspond à une commande, chaque champ est séparé par un espace. Chaque champ est remplacé soit par un chiffre soit par une étoile qui signifie "tous les nombres sont valables". Par exemple pour lancer une commande tous les jours à la même heure, on écrira :

    47 15 * * * touch /home/mateo21/fichier

Chaque jour, quand il sera 15:47, le timestamp du fichier /home/mateo21/fichier sera modifie. On note le path de façon absolu, car on ne peut pas être surs que **cron** s'exécutera dans le répertoire désiré. On ne peut modifier sa crontab qu'en passant par `crontab -e`, d'où l'intérêt d'indiquer un éditeur par défaut. On ne peut pas faire `vim .crontab`, ça ne fonctionne pas. L'avantage c'est que le programme vérifie si le fichier est correctement écrit avant de mettre à jour la crontab. Si il y a une erreur de syntaxe aucun changement ne sera pris en compte. D'ailleurs on le constate en enregistrant et quittant la crontab : un message s'affiche pour nous dire que les changements sont en passe d'être installés (sont pris en compte).

| **crontab** | **signification** |
|:-----------:|:-----------------:|
| `47 * * * * cmd` | Toutes les heures à la 47e mintute, la cmd est lancée |
| `0 0 * * 1 cmd` | Tous les lundis à minuit, la commande est lancée |
| `0 4 1 * * cmd` | Tous les 1er de chaque mois, à 4h du matin, la commande est lancée |
| `0 4 * 12 * cmd` | Tous les jours du mois de décembre à 4h du matin |
| `0 * 4 12 * cmd` | Toutes les heures des 4 décembre |
| `* * * * * cmd` | Toutes les minutes |

Avec **cron**, on ne peut pas planifier en secondes.

Pour chaque champ, on a plusieurs notations possibles :
* 5 (un nombre) : exécuté lorsque le champ prend la valeur 5
* \* :  exécuté tout le temps
* 3,5,10 : exécuté lorsque le champ prend la valeur 3, 5, ou 10. Ne pas mettre d'espace après la virgule.
* 3-7 : exécuté pour les valeurs 3 à 7
* */3 : exécuté tous les multiples de 3

Pour renvoyer le retour de **cron** on peut faire :

    47 15 * * * touch /home/mateo21/fichier >> /home/mateo/cron.log 2>&1
    47 15 * * * touch /home/mateo21/fichier > /dev/null 2>&1

J'ai eu quelques petits soucis à lancer **cron** et **atd** et il semblerait que cela vienne de mon installation WSL. Dans le manuel, **atd** précise qu'il n'est pas compatible avec les systèmes montés en NFS.Comme c'est la cas de WSL, qui est montée sur Windows, qui est monté en NFS, cqfd... Pas de solution à ce jour pour faire fonctionner la commande.  
Pour **cron** et **crontab** et pouvoir utiliser `crontab -e`, plusieurs petites règles à opérer :
Au début de la crontab, placer : `PATH=/usr/sbin:/usr/bin:/sbin:/bin`. **cron** peut rencontrer des soucis à lire la variable $PATH, le mieux c'est de lui préciser ici.  
Ensuite, les noms de scripts ne doivent pas contenir de **.** dans leur nom (mais ça je crois que ça concerne plus cron.d et suivants, ce qui n'est pas l'objet du paragraphe).  
Enfin, chaque commande doit se finir par le symbole nouvelle ligne **\n** sinon la commande n'est pas prise en compte.  
Pour terminer, s'assurer que cron tourne avec un `ps -elf | grep cron` sinon on lance `sudo service cron start`.
### Quiz 3
Compétences évaluées :
* Lire et modifier l'état des processus ouverts
* Transférer des informations via des flux de commandes
#### Question 1
Qu'est-ce que **wc** ne permet pas de faire ?
* Compter le nombre de mots
* Compter le nombre de lignes
* Trier un fichier
#### Question 2
Dans quel cas est-il nécessaire de placer des guillemets autour de l'élément recherché avec **grep** ?
* Lorsque l'élément recherché dépasse 10 caractères
* Lorsque l'élément recherché est une expression régulière
* Lorsque l'élément recherché contient des espaces
#### Question 3
Le symbole **>>** crée-t-il le fichier s'il n'existe pas ?
* Oui
* Non
#### Question 4
Que signifie la redirection **2>&1** ?
* Redirige les erreurs au même endroit que la sortie standard
* Redirige les erreurs dans un fichier
* Ignore les erreurs
#### Question 5
Où sont envoyées les commandes renvoyées par cette commande ? `commande > /dev/null`
* Dans le fichier null situé dans le répertoire /dev
* Dans la corbeille
* Dans le néant absolu, nulle part, rien n'est conservé
#### Question 6
À quoi correspondent les 3 valeurs de charge, comme par exempke 0,08, 0,34, 0,31 ?
* À des moyennes de charges sur des périodes plus ou moins longues
* À la plus haute, la plus basse et la valeur moyenne de la charge
* À la charge de chacun des processeurs
#### Question 7
Comment puis-je avoir la liste de tous les processus lancés par l'utilisateur root qui contienne gnome dans leur nom ?
* ps -ef
* ps -u root
* ps -u root | grep gnome
* ps -U root -p gnome
#### Question 8
Quelle commande met en pause un processus ?
* Ctrl + Z
* Ctrl + C
* halt
* nohup
#### Question 9
Comment renvoyer un processus à l'avant-plan
* fg
* bc
* bg
* top
#### Question 10
Je souhaite exécuter une commande toutes les 5 minutes le week-end, quelle est la bonne planification d'un cron de ce type ?
* /5 * * * 0-1 commande
* */5 * * * 0,6 commande
* */5 * * * 5-6 commande
## Partie 4
### Archiver et compresser
#### tar : assembler des fichiers dans une archive
#### gzip & bzip2 : compresser une archive
#### unzip & unrar : décompresser les .zip et .rar
#### Résumé personnalisé
Les commandes **gzip** et **bzip** ne permettent de compresser qu'un seul fichier à la fois. C'est pour cela que nous devons créer une archive avec **tar** afin de ne former qu'un seul et même fichier. C'est ce gros fichier que nous compresserons par la suite.

Avant de commencer, il faut réunir tous les fichiers à compresser dans un seul et même dossier. Ceci pour éviter tout éparpillement de fichier à la décompression. Ce n'est pas obligatoire, mais c'est une convention.  
C'est ce dossier que l'on va **tar**er. Certains formats, comme jpeg ou png, sont déjà compressés. Il n'y aura pas de problèmes pour les re-compresser, mais on ne les rendra pas plus petits pour autant : ils ont déjà atteint leur taille minimale.

    $ tar -cvf archive.tar source -> Créer une archive dans un fichier (.tar) tout en disant ce qu'il se passe
    $ tar -tf archive.tar -> Affiche le contenu de l'archive sans l'extraire.
    $ tar -rvf archive.tar oubli -> Ajoute un fichier à l'archive
    $ tar -xvf archive.tar -> Extrait les fichiers de l'archives 

Nos fichiers rassemblés dans une archive .tar, on peut maintenant les compresser. **bzip2** est plus efficace niveau compression mais est plus lent que **gzip**, ce qui fait que cet un outil moins utilisé.

    $ gzip archive.tar -> Compresse archive.tar, donne archive.tar.gz
    $ gunzip archive.tar.gz -> Décompresse archive.tar.gz

    $ bzip2 archive.tar -> Compresse archive.tar, donne archive.tar.bz2
    $ bunzip2 archive.tar.bz2 -> Décompresse archive.tar.bz2

Mais le plus beau, c'est que maintenant **tar** est capable d'appeler lui-même **gzip** ou **bzip2**.

    $ tar -zcvf archive.tar source -> Comme -cvf, puis compresse en gzip
    $ tar -jcvf archive.tar source -> Comme -cvf, puis compresse en bzip2
    $ tar -ztf archive.tar.gz -> Affiche le contenu d'un dossier zippé avec gzip
    $ tar -jtf archive.tar.gz -> Affiche le contenu d'un dossier zippé avec bzip2
    $ tar -zxvf archive.tar.gz -> Décompresse puis extrait un dossier zippé avec gzip
    $ tar -jxvf archive.tar.bz2 -> Décompresse puis extrait un dossier zippé avec bzip2

Il est tout à fait possible de compresser un seul fichier, dans ce cas-là, pas besoin de générer un archive, on le compresser directement. On peut afficher le contenu de ce fichier sans le décompresser grâce aux commandes `zcat`, `zmore`, `zless`, équivalents respectifs de `cat`, `less`, `more`, leur emploi est identique, sauf qu'on leur passe un fichier compressé en paramètre.

On se retrouver dans le cas où on reçoit des fichiers compressés .zip et .rar. Bien que ce ne soit pas le plus courant, il faut savoir gérer ces formats. Les programmes utilisés pour ne sont pas installés par défaut sur les distros Linux, il faut alors s'en charger. Il n'y a pas besoin de gérer des archives car ces commandes peuvent compresser plusieurs fichiers à la fois.

    $ unzip archive.zip -> Décompresse le format .zip
    $ unzip -l archive.zip -> Lit le contenu de l'archive (noms des fichiers la composant) sans extraire
    $ zip -r archive.zip source -> Compresse tous les fichiers du dossier "source", sans cela compresse un dossier vide

    $ unrar e archive.tar -> Décompresse .tar Attention les options ne prennent pas de tiret !
    $ unrar l archive.tar -> Liste le contenu de l'archive sans l'extraire

### La connexion sécurisée à distance avec SSH
#### Se connecter à une console à distance
#### De Telnet à SSH
#### Comment sont chiffrés les échanges avec SSH
#### Se connecter avec SSH et PuTTY
#### L'identification automatique par clé
#### Résumé personnalisé
Ce chapitre sera très utile à tous ceux qui ont besoin d'apprendre à gérer un serveur dédié. Personnellement, la lecture de ce chapitre m'a permis de comprendre comment configurer mon compte GitHub pour échanger des repository via le protocole SSH, car j'en avais marre d'indiquer mon username/password que le protocole HTTPS demande à chaque interaction avec le serveur GitHub (En tout cas, c'est bien de connaître les deux façons de travailler). On le répète encore une fois, l'administration de serveur sous Linux se fait quasiment exclusivement à distance, et à l'aide de SSH.

Une des grandes forces de Linux est de pouvoir s'en servir même si on est à des centaines de kilomètres de la machine. C'est un fonctionnement Unix et c'est rendu possible grâce à Internet. Les personnes gérant des serveurs sont appelés administrateurs système, et c'est un métier très recherché.

Un serveur est un ordinateur devant resté allumé 7j/7 et 24h/24 et connecté à Internet, car il offre des services. Un de ces services est de servir des pages d'un site web à un "client" (ordinateur d'où la demande d'accès à la page Internet provient).

En théorie, le PC de la maison n'est pas considéré comme serveur, mais on peut facilement le transformer, à condition de le configurer correctement et d'avoir installé les programmes qui conviennent.

Pour communiquer entre eux en réseau, deux ordinateurs dooivent utiliser le même protocole. Il y en a de nombreux, les plus connus sont : HTTP(S), FTP, IMAP, SSH, TELNET...

Telnet a été concç dans les années 80, il sert à échanger des messages d'une machine à une autre. Le problème de ce protocole, c'est qu'aucune donnée n'est chiffré et par conséquent peut être interceptée par n'importe qui (sachant le faire...) qui écouterait notre réseau. Wireshark est un logiciel Open Source permettant d'écouter ces données.

Pour parer à cela, il suffit de chiffrer les données échangées. On ne peut pas complètement empêcher quelqu'un  d'intercepter nos données, mais si elles sont chiffrées, normalement il ne saurait pas quoi en faire. C'est là qu'intervient le protocole SSH.

Le protocole est assez complexe, somme toute, on peut comprendre simplement son fonctionnement. SSH chiffre les données, mais il existe moults algorithmes de chiffrement. On ne va pas du tout les expliquer ici (il faut de solides connaissances en mathématiques -> programme de terminale S), par contre il faut savoir qu'on classe ces algorithmes en deux catégories : les chiffrements **symétriques** et les chiffrements **asymétriques**.

La méthode la plus simple est le chiffrement symétrique : on utilise une clé (un mot de passe) pour chiffrer et déchiffrer une donnée transférée. Il est nécessaire que la personne qui chiffre et celle qui déchiffre possède la clé. Un message chiffré intercepté ne peut être décodé sans cette clé. Mais à un moment donné, il faut bien donner la clé au réceptionnaire des données avant de les lui transmettre, sinon il ne pourra pas les décoder. Il est hors de question de l'envoyer "en clair" sur le réseau, sous peine de la donner à un pirate... C'est le gros défaut du chiffrement asymétrique : il faut transmettre discrètement la clé... Pour ne pas l'envoyer en clair, il faut la chiffrer et si on réutilise un chiffrement symétrique on va se retrouver confronté au même souci de sécurité. C'est là qu'intervient la méthode de chiffrement asymétrique.

Le chiffrement asymétrique utilise une clé pour chiffrer et une autre pour déchiffrer. Il y a donc **deux clés** :
* Une clé dite **publique**, qui sert à chiffrer
* Une clé dite **privée**, qui sert à déchiffrer

On demande à l'ordinateur de générer une paire de clés : une publique et une privée. La méthode pour chiffrer est différente de celle pour déchiffrer d'où le nom de chiffrement asymétrique : On chiffre avec la clé publique et on déchiffre avec la clé privée. La clé publique peut être transmise par le réseau, c'est pour cela qu'on l'appelle **publique**. Par contre, la clé privée doit absolument rester secrète. L'algorithme de chiffrement le plus connu s'appelle RSA (c'est celui qu'utilise GitHub).

SSH combine chiffrement symétrique et asymétrique :
1. On utilise d'abord le chiffrement asymétrique pour s'échanger discrètement une clé secrète de chiffrement symétrique.
2. Ensuite, on utilise tout le temps la clé de chiffrement symétrique pour chiffrer les échanges.

On n'utilise pas le chiffrement symétrique durant toute la communication des données pour la bonne et simple raison que le chiffrement asymétrique est très groumand en ressources processeurs. Il est 100 à 1000 fois plus lent que le chiffrement symétrique. Le chiffrement asymétrique n'est donc utilisé qu'au début de la communication.

Le serveur envoie la clé publique, en clair, au client, pour que ce dernier puisse chiffrer ses données. Le client génère une clé de chiffrement symétrique qu'il crypte grâce à la clé publique reçue du serveur. Le client envoie alors la clé symétrique chiffréer au serveur. Un pirate peut l'intercepter mais ne peut la déchiffrer car il manque la clé privée connue seulement du serveur. Le serveur déchiffre la clé reçue du client via la clé privée qu'il a conservée. Le client et le serveur connaissent tous deux la clé symétrique et pourtant à aucun moment elle n'a transité en clair sur le réseau. Ils peuvent donc désormais s'envoyer des messages chiffrés de manière symétrique en toute tranquilité. Ce chiffrement est plus rapide et tout aussi sûr que le chiffrement  asymétrique. Le client peut se connecté au serveur avec son identifiant et son mot de passe de façon sécurisée grâce cette technique. C'est ainsi que fonctionne SSH.

Partons du principe que nous n'avons pas de serveur dédié et qu'il faille transformer notre PC en serveur. Pour accéder à son ordinateur depuis un autre lieu, il est indispensable de le configurer pour être serveur. Pour cela, il faut juste installer le paquet **openssh-server**.

    sudo apt-get install openssh-serveur

Normalement, le programme de serveur SSH se lance et se lancera à chaque démarrage. Dans le cas contraire, lancer la commande suivante :

    sudo /etc/init.d/ssh start

Pour l'arrêter

    sudo /etc/init.d/ssh start

On ne devrait pas avoir besoin de le configurer et de toucher au fichier de configuration mais dans le doute :
    
    vim /etc/ssh/ssh_config
    sudo /etc/init.d/ssh reload  -> On relance le serveur après chaque modification de configuration

L'ordinateur est, dorénavant, un serveur SSH. On peut s'y connecter depuis n'importe quel ordinateur sous Linux ou Windows (pour peu que nous ne soyons pas derrière un pare-feu).

Toutes les machines équipées de Linux proposent la commande **ssh** qui permet de se connecter à distance à une autre machine. Sur un second PC (équipé de Linux), ouvrir la console et taper :

    $ ssh login@ip

Où **login** est son login Linux et **ip** l'adresse ip de la machine à laquelle on souhaite accéder. On peut obtenir son ip en allant sur le site www.whatismyip.com ou en tapant `ifconfig` dans la console de son PC pour obtenir son ip (attention sur WSL, `ifconfig` n'est pas installé par défaut, il faut installer `net-tools` pour utiliser la commande). On peut également simuler une connexion réseau en se connectant à son PC depuis son PC, on passe alors par localhost ou l'adresse 127.0.0.1 à la place de **ip**.

Au bout d'un moment, le serveur répond en nous communiquant son empreinte de serveur *(RSA key fingerprint)*. Il s'agit d'un numéro unique identifiant le serveur. Si quelqu'un essaie de se faire passer pour le serveur, ce numéro changer et **ssh** nous préviendra. Si on n'a aucune réponse, vérifier qu'on a bien donné la bonne ip ou que le port 22 n'est pas bloqué.

Une fois l'empreinte reçue, il faut confirmer par **y** qu'elle correspond bien à celle du serveur auquel on veut se connecter. Le serveur devrait nous demander notre mot de passe. On est enfin connecté à son serveur, de façon sécurisée. On peut effectuer toutes les opérations dont on a besoin, exactement comme si on était présent physiquement devant la machine concernée. Penser, alors, à exécuter les commandes avec **nohup** afin de les désolidariser de la console où on se trouve pour qu'elles ne s'arrêtent pas quand on éteindra l'ordinateur, pour que le serveur continue à recevoir les instructions à exécuter. On se déconnecte comme à l'accoûtumée : `logout` ou `CTRL + D`.

Il est possible qu'on n'ait pas d'environnement Linux à disposition, l'alternative est de se connecter depuis Windows à PuTTY... Oh, et c'est ici qu'on nous informe que depuis Windows 10, on peut se connecter en SSH sans installer PuTTY...Ils pouvaient pas le dire dans le chapitre dédié à PuTTY ? Ça m'aurait éviter une réponse fausse au quiz... ayant bêtement suivi le cours, n'ayant pas cherché sur Internet... grrrr

Si dans les chapitres précédents, on avait installé PuTTY via putty.exe, on nous apprend que bah non, il faut le package complet, avec le programme d'installation... Que ce cours est à jour... C'est fou... On ajoute quelques chapitres, pour faire bien, mais on ne corrige absolument pas les conneries restantes... Je n'aime pas, je n'aime pas, je n'aime pas !

Dans le volet Session, on remplit **Host Name**, ou l'adresse ip, connection type : SSH port 22 (à modifier si le port 22 n'est pas disponible) et Save dans la partie Saved Session, pour ne pas avoir à retaper les informations, puis OPen, pour ouvrir la connection. Comme en ligne de console, on nous répond en nous fournissant l'empreinte du serveur, seulement pour la 1ere connexion, et il faut confirmer (ou non). Le serveur nous demande alors notre login et notre mot de passe. Nous voilà connecté à la machine. Pour se déconnecter : **logout** ou **CTRL + D**.

Il y a plusieurs façons de s'authentifier sur un serveur :
- Par mot de passe
- Par clés publique et privée du client

L'authentification par clé permet d'éviter qu'on nous demande à chaque connexion son mot de passe. Cette authentification est plus complexe à mettre en place, mais elle est plus pratique que de s'authentifier à chaque fois avec son mot de passe.

Sur Linux, pour s'authentifier en SSH, il faut d'abord mener une série d'actions sur le client et après sur le serveur, on enverra le résultat.

    # Machine client
    $ ssh-keygen -t rsa -> Génération d'une clé publique et d'une clé privée

Plusieurs messages s'afficheront et il nous sera demandé quelques précisions. Le client génère une paire de clés, qu'il faut ensuite sauvegarder dans des fichiers, un pour la clé publique, un pour la clé privée. On nous propose une valeur par défaut, on peut la changer mais ce n'est pas conseillé. Ensuite, on nous demande une **passphrase**. C'est une phrase de passe qui servira à chiffrer la clé privée pour une meilleure sécurité. Soit on tape **Entrée** sans rien écrire et la clé ne sera pas chiffrée, soit on tape une phrase de son choix pour chiffrer la clé.

Il faut maintenant envoyer la clé publique au serveur. La clé publique, si on n'a rien modifié, devrait se trouver dans `~/.ssh/id_rsa.pub`. La clé privée, quant à elle, se situe dans `~/.ssh/id_rsa`. Elle est normalement chiffrée si on a utilisé une phrase de passe. On se rend dans le dossier .ssh : `cd /.ssh`. Il y a 3 fichiers :
* **id_rsa** : qui contient la clée privée
* **id_rsa.pub** : qui contient la clé publique qu'il faut envoyer au serveur
* **known_hosts** : c'est la liste des fingerprint que le PC client tient à jour. Ça lui permet de se souvenir de l'identité des serveurs et de nous avertir si un jour un serveur est remplacé par un autre.

L'opération consiste à envoyer la clé publique au serveur et à l'ajouter à son fichier **authorized_keys**. Le serveur y garde une liste des clés qu'il autorise à se connecter.

Pour ce faire on utilise la commande suivante, où login est le login linux et l'ip l'ip du serveur :

    ssh-copy-id -i id_rsa.pub login@ip

On rentre son mot de passe Linux, puis la clé est ajoutée à **~/.ssh/authorized_keys**. On nous invite à ouvrir le fichier **authorized_keys** pour vérifier que l'opération s'est bien déroulée. On peut maintenant se connecter au serveur :

    ssh login@ip

Alors, on nous demande la phrase de passe pour déchiffrer la clé privée. Il existe une solution pour ne pas avoir à entrer sa phrase de passe à chaque fois : l'agent SSH. C'est un programme qui tourne en arrière-plan en mémoire, il retient les clés privées pendant toute la durée de notre session. Il suffit de lancer **ssh-add** : 

    ssh-add

On nous demandera d'entrer une fois la phrase de passe pour déchiffrer la clé publique. Et on pourra se connecter au serveur en ssh, sans mot de passe ni phrase de passe.

On peut également s'authentifier avec PuTTY. Avec le programme d'installation, on devrait avoir le programme **PuTTYgen** (se trouve dans le gestionnaire d'installation PuTTY), c'est avec lui que l'on va générer notre pare de clés publique/privée. On le lance. En bas de fenêtre on peut choisir ses paramètres : algorithme et puissance de chiffrement. Les valeurs par défaut semblent convenir (à vérifier, vu le niveau de mise à jour du cours) RSA 1024 bits (GitHub conseille 4096 bits, d'où mon doute). Cliquer sur le bouton **Generate**. Il faut bouger la souris dans la fenêtre pour l'aider à générer la paire. Une fois que c'est fait, la clé publique s'affiche et on peut entrer une phrase de passe à ce moment. On enregistre la clé publique avec **Save private key**, et on lui donne l'extension **.pub**. On enregistre ensuite la clé privée et on lui donnera **.ppk** pour extension.

Comme avec Linux, il faut envoyer la clé publique au servir pour qu'il nous autorise à nous connecter par clé. Il n'y a pas de commande pour le faire automatiquement par Windows, il faut ajouter la clé à la main dans le fichier **authorized_keys**.

On ouvre PuTTY, tout en ayant encore PuTTYgen ouvert, et on se connecte au serveur comme auparavant avec son mot de passe. On se rend dans le dossier du serveur  **~/.ssh** (s'il n'est pas créé, on le crée) et on rajoute notre clé à la fin du fichier **authorized_keys** (si inexistant, il sera crée) :

    echo "n° de ma clé publique" >> authorized_keys

La clé publique est encore affichée dans PuTTYgen, pour la récupérer, on la copie depuis et on la colle dans la console en faisant **Shift + Inser**.  
On se déconnecte et on relance PuTTY. On peut fermer PuTTYgen. On va configurer PuTTY pour qu'il se connecte avec la clé. Dans le volet, aller à la section **Window > Translation**. Régler la valeur de la liste déroulante à **UTF-8**. Cela va régler les problèmes d'accent en console. Ensuite, on se rend dans la section **Connection > SSH > Auth**. Il faut indiquer le fichier de la clé privée, on le recherche avec **Browse**. Ensuite, on va dans la section **Connection > Data** et on entre son login dans le champ *Auto-login username*. On retourne à l'accueil via la section **Session**, on entre l'ip du serveur dans le champ **Host Name**, puis on donne un nom à son serveur et enfin on sauvegarde les paramètres avec **Save**. Il n'y aura plus qu'à cliquer sur le nom du serveur et **Open** pour se connecter à partir de ce moment. On devrait voir PuTTY utiliser automatiquement notre pseudo, puis nous demander notre phrase de passe. Pour ne pas la rentrer à chaque fois, il faudra passer par un agent SSH. Celui installé avec PuTTY s'appelle **Pageant**. Il est recommandé de le lancer automatiquement au démarrage de l'ordinateur. Normalement lorsque Pageant est lancé, il a son icône qui s'affiche dans la barre des tâches (comme avec Winamp), on clique droit sur l'icône, et on choisit **Add key**, il faudra renseigner l'endroit où se trouve la clé privée (.ppk). On refait un clic droit sur l'icône pour se connecter avec **Saved Sessions**.

Si l'agent SSH Pageant est pratique, il vaut mieux l'arrêter si on doit s'absenter un long moment de son ordinateur et que quelqu'un puisse potentiellement s'en servir, afin d'éviter de la laisser pénétrer dans ses serveurs.

On peut modifier le raccourci qui lance Pageant pour que celui-ci charge notre clé privée automatiquement. Clic droit sur l'icône > Propriétés. Dans le champ cible, rajouter à la fin en paramètre le chemin de la clé privée à charger, par exemple :

    "C:\Program Files\PuTTY\pageant.exe" c:\cle.ppk

### Transférer des fichiers
#### wget : téléchargement de fichiers
#### scp : copier des fichiers sur le réseau
#### ftp & sftp : transférer des fichiers
#### rsync : synchroniser des fichiers pour une sauvegarde
#### Résumé personnalisé
### Analyser le réseau et filtrer le trafic avec un pare-feu
#### host & whois : qui êtes-vous
#### ifconfig & netstat : gérer et analyser le trafic réseau
#### iptables : le pare-feu de référence
#### Résumé personnalisé
### Compiler un programme depuis les sources
#### Essayez d'abord de trouver un paquet .deb
#### Quand il n'y a pas d'autre solution : la compilation
#### Résumé personnalisé
### Quiz 4
## Partie 5
### Vim l'éditeur de texte du programmeur
#### Installer Vim
#### Les modes d'édition de Vim
#### Opérations basiques (déplacement, écriture, enregistrement...)
#### Opérations standard (copier, coller, annuler...)
#### Opérations avancées (split, fusion, recherche...)
#### Les options de Vim
#### Résumé personnalisé
### Introduction aux scripts shell
#### Qu'est-ce qu'un shell ?
#### Notre premier script
#### Exécuter le script bash
#### Résumé personnalisé
### Afficher et manipuler des variables
#### Déclarer une variable
#### echo : afficher une variable
#### read : demander une saisie
#### Effectuer des opérations mathématiques
#### Les variables d'environnement
#### Les variables des paramètres
#### Les tableaux
#### Résumé personnalisé
### Les conditions
#### if : la condition la plus simple
#### Les tests
#### case : tester plusieurs conditions à la fois
#### Résumé personnalisé
### Les boucles
#### while : boucler "tant que"
#### for : boucler sur une liste de valeurs
#### Résumé personnalisé
### Les fonctions
#### Qu'est-ce qu'une fonction ?
#### Comment déclarer une fonction ?
#### Résumé personnalisé
### TP : générateur de galerie d'images
#### Objectifs
#### Solution
#### Améliorations
#### Résumé personnalisé
### Quiz 5

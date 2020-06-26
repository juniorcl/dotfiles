#!/usr/bin/bash
clear

Menu ()
{
    echo "#####################################################"
    echo "#####################################################"
    echo "##                                                 ##"
    echo "##              DotFile Juniorcl                   ##"
    echo "##                                                 ##"
    echo "#####################################################"
    echo "#####################################################"
    echo
    echo "[1] -> Ubuntu"
    echo "[2] -> Arch Linux"
    echo "[3] -> Manjaro"
    echo
    echo -n "Let's go! Choose your distro: "
    read option

    case $option in
        1) Ubuntu ;;
        2) ArchLinux ;;
        3) Majaro ;;
        0) exit ;;
        *) "Are you kidding?? This option isn't avaliable!"; echo Menu ;;
    esac
}

Ubuntu ()
{
    echo "Nice! Initializing the setup."
    source Ubuntu/start.sh
}

ArchLinux ()
{
    echo "Nice! Initializing the setup."
    source ArchLinux/start.sh
}

Manajro ()
{
    echo "Nice! Initializing the setup."
    source Manjaro/start.sh
}

Menu
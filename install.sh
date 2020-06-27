#!/bin/bash
clear

export DOTFILES="$HOME/Github/dotfiles"

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
    echo "[1] --> Ubuntu"
    echo "[2] --> Arch Linux"
    echo "[3] --> Manjaro"
    echo
    echo -n "Let's go! Choose your distro: "
    read option

    case $option in
        1) Ubuntu ;;
        2) ArchLinux ;;
        3) Manjaro ;;
        0) echo; echo "Ok! Let's go D:"; sleep 1; exit ;;
        *) echo; echo "Are you kidding?? \nThis option isn't avaliable! \nTry again man!!"; sleep 1; echo; Menu ;;
    esac
}

Ubuntu ()
{
    echo
    echo "Nice! Initializing Ubuntu setup.."
    sleep 1
    source $DOTFILES/ubuntu/setup.sh
}

ArchLinux ()
{
    echo
    echo "Nice! Initializing ArchLinux setup.."
    sleep 1
    source $DOTFILES/archlinux/setup.sh
}

Manjaro ()
{
    echo
    echo "Nice! Initializing Manjaro setup.."
    sleep 1
    source $DOTFILES/manjaro/setup.sh
}

Menu
#!/bin/bash
clear

export DOTFILES="$HOME/Github/dotfiles"

Menu ()
{
    echo -e "\e[1;35m#####################################################\e[0m"
    echo -e "\e[1;35m##              \e[0mConfig My Fuck1\"g OS \e[91mS2            \e[35m##"
    echo -e "#####################################################\e[0m"
    echo
    echo -e "\e[93m[1] -->\e[0m Ubuntu"
    echo -e "\e[93m[2] -->\e[0m Arch Linux"
    echo -e "\e[93m[3] -->\e[0m Manjaro"
    echo
    echo -n "Let's go! Choose your distro: "
    read option

    case $option in
        1) Ubuntu ;;
        2) ArchLinux ;;
        3) Manjaro ;;
        0) echo; echo "Ok! Let's go D:"; sleep 1; exit ;;
        *) echo; echo "Not an avaliable option! Try again!!"; sleep 1; echo; Menu ;;
    esac
}

Ubuntu ()
{
    echo
    echo -e "\e[1mNice! Initializing Ubuntu setup.\e[0m"
    sleep 1
    source $DOTFILES/ubuntu/setup.sh
    echo

    echo -e "\e[1mInstall DevPack? [y/N]\e[0m"
    read RESP
    echo

    if [ $RESP == "y" ]; then
    
        echo -e "\e[1mOk! Initializing DevPack\e[0m"
        sleep 1
        source $DOTFILES/ubuntu/devpack.sh
    
    else
        
        echo -e "\e[1mInstalation finished!\e[0m"

    fi

}

ArchLinux ()
{
    echo
    echo -e "\e[1mNice! Initializing ArchLinux setup.\e[0m"
    sleep 1
    source $DOTFILES/archlinux/setup.sh
}

Manjaro ()
{
    echo
    echo -e "\e[1mNice! Initializing Manjaro setup.\e[0m"
    sleep 1
    source $DOTFILES/manjaro/setup.sh
}

Menu
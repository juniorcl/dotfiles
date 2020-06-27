#!/bin/bash
clear


echo "################################################"
echo "################################################"
echo "##                                            ##"
echo "##          Manajaro Installer Setup          ##"
echo "##                                            ##"
echo "################################################"
echo "################################################"
echo
echo
sleep 1

## Preprocessing
################
echo "Starting preprocessing.."
sleep 1
sudo pacman -Syu
sudo pacman -S base-devel
echo

## Changing Bash to ZSH
#######################
echo "Changing Bash to ZSH.."
sleep 1
cp $DOTFILES/manjaro/zsh/.zshrc ~/.zshrc
chsh -l /usr/bin/zsh
echo

## Pyenv Install
################
echo "Instaling Pyenv.."
sleep 1
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

#instalation for zsh shell
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
echo

## Intalling yay
################
echo "Instaling yay.."
sleep 1
git clone https://github.com/Jguer/yay.git ~/.yay
cd ~/.yay
makepkg -si 
cd ~/
echo

## Instaling vscode
####################
echo "Instaling vscode.."
sleep 1
yay -S visual-studio-code-bin
echo

## Instaling Firefox in pt-br
##############################
echo "Instaling Firefox in Brazilian Portuguese.."
sleep 1
sudo pacman -S --noconfirm firefox firefox-i18n-pt-br
echo

## Instaling hack font
#######################
echo "Instaling Hack Font.."
sleep 1
sudo pacman -S --noconfirm ttf-hack
echo

## UnInstaling Midori Brownser
###############################
echo "UnInstaling midori.."
sleep 1

if [ -e "$(which midori 2> /dev/null)" ]
then
    echo "UnInstaling midori Browser.."
    echo
    sudo pacman -Rs --noconfirm midori
    echo "Midori Uninstalled!"
	sleep 1

else
    echo "Midori ins't installed!"
	sleep 1
fi
echo

## Instaling qBitorrent
########################
echo "Instaling qBittorrent.."
sleep 1
sudo pacman -S --noconfirm qbittorrent
echo

## Install Materia Theme
########################
echo "Instaling Materia Theme.."
sleep 1
yay -S --noconfirm materia-gtk-theme
echo

## Install R
############
echo "Instaling R language.."
sleep 1
sudo pacman -S --noconfirm r
yay -S --noconfirm rstudio-desktop-bin
echo

## Install VLC
##############
echo "Instaling VLC.."
sleep 1
sudo pacman -S vlc
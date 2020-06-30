#!/bin/bash
clear

Topic()
{
    echo -e "\e[1;35m::\e[0m \e[1m$1\e[0m"
}

subTopic()
{
    echo -e "\e[1;93m >>\e[0m \e[1m$1\e[0m"
}

## Preprocessing
################
Topic "General Instalations"
subTopic "Instaling base-devel.."
sudo pacman -S --noconfirm base-devel
echo

## Instaling ZSH and setting up ZSH
###################################
Topic "Zsh"
subTopic "Instaling Zsh.."
sudo pacman -S --noconfirm zsh
echo

subTopic "Copying .zshrc to ~/.zshrc.."
cp $DOTFILES/manjaro/zsh/.zshrc ~/.zshrc
echo

subTopic "Setting Zsh as default.."
chsh -l /usr/bin/zsh
echo

## Pyenv Install
################
Topic "Pyenv"
subTopic "Clonando pyenv.."
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo

subTopic "Define environment variable PYENV_ROOT.."
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo

subTopic "Add pyenv init to your shell.."
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
echo

## Intalling yay
################
Topic "Yay"
subTopic "Cloning yay.."
git clone https://aur.archlinux.org/yay.git ~/.yay
echo

subTopic "Instaling yay.."
cd ~/.yay
makepkg -si 
cd ~/
echo

## Instaling vscode
####################
Topic "Visual Studio Code"
subTopic "Instaling vscode.."
yay -S visual-studio-code-bin
echo

## Instaling Firefox in pt-br
##############################
Topic "Firefox"
subTopic "Instaling firefox.."
sudo pacman -S --noconfirm firefox
echo

subTopic "Instaling Firefox in Brazilian Portuguese.."
sudo pacman -S firefox-i18n-pt-br
echo

## Instaling hack font
#######################
Topic "Hack Font"
subTopic "Instaling hack font.."
sudo pacman -S --noconfirm ttf-hack
echo

## UnInstaling Midori Brownser
###############################
Topic "Midori"

if [ -e "$(which midori 2> /dev/null)" ]
then
    subTopic "Uninstaling midori Browser.."
    sudo pacman -Rs --noconfirm midori
    subTopic "Midori Uninstalled!"
	
else
    subTopic "Midori is not installed!"

fi
echo

## Uninstaling Parole Media
########################### 
Topic "Parole"

if [ -e "$(which parole 2> /dev/null)" ]
then
    subTopic "Uninstaling Parole Media Player.."
    sudo pacman -Rs --noconfirm midori
    subTopic "Parole Uninstalled!"
	
else
    subTopic "Parole is not installed!"

fi
echo

## Instaling qBitorrent
########################
Topic "qBitorrent"
subTopic "Instaling qBittorrent.."
sudo pacman -S --noconfirm qbittorrent
echo

## Install Materia Theme
########################
Topic "Materia Theme"
subTopic "Instaling Materia Theme.."
yay -S materia-gtk-theme
echo

## Install R
############
Topic "R Language"
subTopic "Instaling R.."
sudo pacman -S --noconfirm r
echo

subTopic "Instaling RStudio.."
yay -S --noconfirm rstudio-desktop-bin
echo

## Install VLC
##############
Topic "VLC Media Player"
subTopic "Instaling vlc.."
sudo pacman -S vlc
echo

## Install ferdi
################
Topic "Ferdi"
subTopic "Instaling Ferdi.."
yay -S ferdi-bin
echo

## Install Telegram desktop
###########################
Topic "Telegram Desktop"
subTopic "Instaling Telegram.."
sudo pacman -S --noconfirm telegram-desktop
echo

## Install Keepassxc
####################
Topic "Keepassxc"
subTopic "Instaling Keepassxc.."
sudo pacman -S --noconfirm Keepassxc
echo

## Install Dropbox
##################
Topic "Dropbox"
subTopic "Instaling Dropbox.."
yay -S dropbox
echo
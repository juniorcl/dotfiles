#!/bin/bash
clear

Topic()
{
    echo -e "\e[1;35m::\e[0m \e[1m$1\e[0m"
}

yellowArrows()
{
    echo -e "\e[1;93m >>\e[0m \e[1m$1\e[0m"
}

## Preprocessing
################
Topic "General Instalations"
yellowArrows "Instaling base-devel.."
sudo pacman -S --noconfirm base-devel
echo

## Instaling ZSH and setting up ZSH
###################################
Topic "Zsh"
yellowArrows "Instaling Zsh.."
sudo pacman -S --noconfirm zsh
echo

yellowArrows "Copying .zshrc to ~/.zshrc.."
cp $DOTFILES/manjaro/zsh/.zshrc ~/.zshrc
echo

yellowArrows "Setting Zsh as default.."
chsh -l /usr/bin/zsh
echo

## Pyenv Install
################
Topic "Pyenv"
yellowArrows "Clonando pyenv.."
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo

yellowArrows "Define environment variable PYENV_ROOT.."
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo

yellowArrows "Add pyenv init to your shell.."
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
echo

## Intalling yay
################
Topic "Yay"
yellowArrows "Cloning yay.."
git clone https://aur.archlinux.org/yay.git ~/.yay
echo

yellowArrows "Instaling yay.."
cd ~/.yay
makepkg -si 
cd ~/
echo

## Instaling vscode
####################
Topic "Visual Studio Code"
yellowArrows "Instaling vscode.."
yay -S visual-studio-code-bin
echo

## Instaling Firefox in pt-br
##############################
Topic "Firefox"
yellowArrows "Instaling firefox.."
sudo pacman -S --noconfirm firefox
echo

yellowArrows "Instaling Firefox in Brazilian Portuguese.."
sudo pacman -S firefox-i18n-pt-br
echo

## Instaling hack font
#######################
Topic "Hack Font"
yellowArrows "Instaling hack font.."
sudo pacman -S --noconfirm ttf-hack
echo

## UnInstaling Midori Brownser
###############################
Topic "Midori"

if [ -e "$(which midori 2> /dev/null)" ]
then
    yellowArrows "Uninstaling midori Browser.."
    sudo pacman -Rs --noconfirm midori
    yellowArrows "Midori Uninstalled!"
	
else
    yellowArrows "Midori is not installed!"

fi
echo

## Uninstaling Parole Media
########################### 
Topic "Parole"

if [ -e "$(which parole 2> /dev/null)" ]
then
    yellowArrows "Uninstaling Parole Media Player.."
    sudo pacman -Rs --noconfirm midori
    yellowArrows "Parole Uninstalled!"
	
else
    yellowArrows "Parole is not installed!"

fi
echo

## Instaling qBitorrent
########################
Topic "qBitorrent"
yellowArrows "Instaling qBittorrent.."
sudo pacman -S --noconfirm qbittorrent
echo

## Install Materia Theme
########################
Topic "Materia Theme"
yellowArrows "Instaling Materia Theme.."
yay -S materia-gtk-theme
echo

## Install R
############
Topic "R Language"
yellowArrows "Instaling R.."
sudo pacman -S --noconfirm r
echo

yellowArrows "Instaling RStudio.."
yay -S --noconfirm rstudio-desktop-bin
echo

## Install VLC
##############
Topic "VLC Media Player"
yellowArrows "Instaling vlc.."
sudo pacman -S vlc
echo

## Install ferdi
################
Topic "Ferdi"
yellowArrows "Instaling Ferdi.."
yay -S ferdi-bin
echo

## Install Telegram desktop
###########################
Topic "Telegram Desktop"
yellowArrows "Instaling Telegram.."
sudo pacman -S --noconfirm telegram-desktop
echo

## Install Keepassxc
####################
Topic "Keepassxc"
yellowArrows "Instaling Keepassxc.."
sudo pacman -S --noconfirm Keepassxc
echo

## Install Dropbox
##################
Topic "Dropbox"
yellowArrows "Instaling Dropbox.."
yay -S dropbox
echo
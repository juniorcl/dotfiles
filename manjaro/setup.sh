#!/bin/bash
clear

## Preprocessing
################
cho -e "\e[1;35m==>\e[0m \e[1mGeneral Instalation\e[0m"
echo -e " \e[93m->\e[0m \e[1mInstaling base-devel..\e[0m"
sudo pacman -S --noconfirm base-devel
echo

## Instaling ZSH and setting up ZSH
###################################
echo -e "\e[1;35m==>\e[0m \e[1mZsh\e[0m"
echo -e " \e[93m->\e[0m \e[1mInstaling Zsh..\e[0m"
sudo pacman -S --noconfirm zsh
echo

echo -e " \e[93m->\e[0m \e[1mCopying .zshrc to ~/.zshrc..\e[0m"
cp $DOTFILES/manjaro/zsh/.zshrc ~/.zshrc
echo

echo -e " \e[93m->\e[0m \e[1mSetting Zsh as default..\e[0m"
chsh -l /usr/bin/zsh
echo

## Pyenv Install
################
echo -e "\e[1;35m==>\e[0m \e[1mPyenv\e[0m"
echo -e " \e[93m->\e[0m \e[1mClonando pyenv..\e[0m"
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo

echo -e " \e[93m->\e[0m \e[1mDefine environment variable PYENV_ROOT..\e[0m"
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo

echo -e " \e[93m->\e[0m \e[1mAdd pyenv init to your shell..\e[0m"
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
echo

## Intalling yay
################
echo -e "\e[1;35m==>\e[0m \e[1mYay\e[0m"
echo -e " \e[93m->\e[0m \e[1mCloning yay..\e[0m"
git clone https://aur.archlinux.org/yay.git ~/.yay
echo

echo -e " \e[93m->\e[0m \e[1mInstaling yay..\e[0m"
cd ~/.yay
makepkg -si 
cd ~/
echo

## Instaling vscode
####################
echo -e "\e[1;35m==>\e[0m \e[1mVscode\e[0m"
echo -e " \e[93m->\e[0m \e[1mInstaling vscode..\e[0m"
yay -S visual-studio-code-bin
echo

## Instaling Firefox in pt-br
##############################
echo -e "\e[1;35m==>\e[0m \e[1mFirefox\e[0m"
echo -e " \e[93m->\e[0m \e[1mInstaling firefox..\e[0m"
sudo pacman -S --noconfirm firefox
echo

echo -e " \e[93m->\e[0m \e[1mInstaling Firefox in Brazilian Portuguese..\e[0m"
sudo pacman -S firefox-i18n-pt-br
echo

## Instaling hack font
#######################
echo -e "\e[1;35m==>\e[0m \e[1mHack Font\e[0m"
echo -e " \e[93m->\e[0m \e[1mInstaling hack font..\e[0m"
sudo pacman -S --noconfirm ttf-hack
echo

## UnInstaling Midori Brownser
###############################
echo -e "\e[1;35m==>\e[0m \e[1mMidori\e[0m"

if [ -e "$(which midori 2> /dev/null)" ]
then
    echo -e " \e[93m->\e[0m \e[1mUninstaling midori Browser..\e[0m"
    sudo pacman -Rs --noconfirm midori
    echo -e " \e[93m->\e[0m \e[1mMidori Uninstalled!\e[0m"
	
else
    echo -e " \e[93m->\e[0m \e[1mMidori is not installed!\e[0m"

fi
echo

## Uninstaling Parole Media
########################### 
echo -e "\e[1;35m==>\e[0m \e[1mParole\e[0m"

if [ -e "$(which parole 2> /dev/null)" ]
then
    echo -e " \e[93m->\e[0m \e[1mUninstaling Parole Media Player..\e[0m"
    sudo pacman -Rs --noconfirm midori
    echo -e " \e[93m->\e[0m \e[1mParole Uninstalled!\e[0m"
	
else
    echo -e " \e[93m->\e[0m \e[1mParole is not installed!\e[0m"

fi
echo

## Instaling qBitorrent
########################
echo -e "\e[1;35m==>\e[0m \e[1mqBitorrent\e[0m"
echo -e " \e[93m->\e[0m \e[1mInstaling qBittorrent..\e[0m"
sudo pacman -S --noconfirm qBittorrent
echo

## Install Materia Theme
########################
echo -e "\e[1;35m==>\e[0m \e[1mMateria Theme\e[0m"
echo -e " \e[93m->\e[0m \e[1mInstaling Materia Theme..\e[0m"
yay -S materia-gtk-theme
echo

## Install R
############
echo -e "\e[1;35m==>\e[0m \e[1mR Language\e[0m"
echo -e " \e[93m->\e[0m \e[1mInstaling R..\e[0m"
sudo pacman -S --noconfirm r
echo

echo -e " \e[93m->\e[0m \e[1mInstaling RStudio..\e[0m"
yay -S --noconfirm rstudio-desktop-bin
echo

## Install VLC
##############
echo -e "\e[1;35m==>\e[0m \e[1mVLC\e[0m"
echo -e " \e[93m->\e[0m \e[1mInstaling vlc..\e[0m"
sudo pacman -S vlc
echo
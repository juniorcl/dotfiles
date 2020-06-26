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

## Changing Bash to ZSH
#######################
echo "Changing Bash to ZSH.."
cp $GITHUBDIR/dotfiles/manjaro/zsh/.zshrc ~/.zshrc
chsh -l /usr/bin/zsh
echo

## Pyenv Install
################
echo "Installing Pyenv.."
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

#instalation for zsh shell
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
echo

## Intalling yay
################
echo "Installing yay.."
git clone https://aur.archlinux.org/yay.git ~/.yay
cd .yay
makepkg -si
cd ~/
echo

## Installing vscode
####################
echo "Installing vscode.."
yay -S visual-studio-code-bin
echo

## Installing Firefox in pt-br
##############################
echo "Installing Firefox in Brazilian Portuguese.."
sudo pacman -S --noconfirm firefox firefox-i18n-ptbr
echo

## Installing hack font
#######################
echo "Installing Hack Font.."
sudo pacman -S --noconfirm ttf-hack
echo

## Uninstalling Midori Brownser
###############################
if [ -e "$(which midori 2> /dev/null)" ]
then
    echo "Uninstalling midori Browser.."
    echo
    sudo pacman -Rs --noconfirm midori
    echo "Midori Uninstalled!"

else
    echo "Midori ins't installed!"
fi
echo

## Installing qBitorrent
########################
echo "Installing qBittorrent.."
sudo pacman -S --noconfirm qbittorrent
echo

## Install Materia Theme
########################
echo "Installing Materia Theme.."
yay -S --noconfirm materia-gtk-theme
echo

## Install R
############
echo "Installing R language.."
sudo pacman -S --noconfirm r
yay -S --noconfirm r-studio-desktop-bin
echo

## Install VLC
##############
echo "Installing VLC.."
sudo pacman -S vlc

echo "Now It'll install the vlsub extension.."
echo
git clone https://github.com/exebetche/vlsub.git $HOME/Github/vlsub
VLSUBLUA="$HOME/.local/share/vlc/lua"

if [ -d "$VLSUBLUA" 2> /dev/null ]
then
	echo "The $VLSBLUA/extensions exits.."
	echo "Coping extension to $VLSUBLUA/extensions.."
	cp $GITHUBDIR/vlsub/vlsub.lua $VLSUBLUA/extensions
	echo "The extensions was successfully copied!"

else
	echo "The $VLSBLUA doesn't exits.."
	echo "Creating $VLSBLUA.."
	mkdir $HOME/.local/share/vlc/lua

	echo "Creating $VLSBLUA/extensions.."
	mkdir $HOME/.local/share/vlc/lua/extensions

	echo "Copying vlsub.lua to $VLSBLUA/extension"
	cp $GITHUBDIR/vlsub/vlsub.lua $VLSUBLUA/extensions
	echo "The extensions was successfully copied!"

fi
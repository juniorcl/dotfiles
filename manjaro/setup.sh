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
cp manjaro/zsh/.zshrc ~/.zshrc
chsh -l /usr/bin/zsh

## Pyenv Install
################
echo "Installing Pyenv.."
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

#instalation for zsh shell
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

## Intalling yay
################
echo "Installing yay.."
git clone https://aur.archlinux.org/yay.git ~/.yay
cd .yay
makepkg -si
cd ~/

## Installing vscode
####################
echo "Installing vscode.."
yay -S visual-studio-code-bin

## Installing Firefox in pt-br
##############################
echo "Installing Firefox in Brazilian Portuguese.."
sudo pacman -S --noconfirm firefox firefox-i18n-ptbr


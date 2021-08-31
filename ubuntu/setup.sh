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

## Instalation Vim
##################
Topic "Vim"
subTopic "Instaling Vim.."
sudo apt install vim
echo

## Instalation Vscode
####################
Topic "VScode"
subTopic "Instaling VScode.."
sudo snap install --classic code
echo

## Instalation VLC
##################
Topic "VLC"
subTopic "Instaling VLC.."
sudo snap install vlc
echo

## Instalation Pyenv
####################
Topic "Pyenv"
subTopic "Installing Dependencies"
sudo apt-get update; sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
echo

subTopic "Installing"
curl https://pyenv.run | bash
echo

subTopic "Restating the Shell"
exec $SHELL
echo

## Instalation KeePassXC
########################
Topic "KeePassXC"
subTopic "Instaling KeePassXC"
sudo snap install keepassxc
echo

## Instalation Slack
####################
Topic "Slack"
subTopic "Instaling Slack"
sudo snap install slack --classic
echo

## Instalation spotify
######################
Topic "Spotify"
subTopic "Instaling Spotify"
sudo snap spotify
echo

## Instalation R
################
Topic "R"
subTopic "Instaling R.."
sudo apt install r-base
echo

## Instalation qBittorrent
##########################
Topic "qBittorrent"
subTopic "Instaling qBittorrent"
sudo apt install qbittorrent
echo

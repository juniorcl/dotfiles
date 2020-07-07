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
subTopic "Instaling Vim"
sudo apt install vim

## Instalation Vscode
####################
Topic "VScode"
subTopic "Instaling VScode.."
sudo snap install --classic code

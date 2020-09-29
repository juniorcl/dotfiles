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

## Instaling npm
################
Topic "nvm"
subTopic "Instaling nvm"
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
echo

## Instaling yarn
#################
Topic "Yarn"
subTopic "Instaling curl"
sudo apt install curl
echo

subTopic "Configuring the repository"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
echo

subTopic "Updating and Instaling"
sudo apt update && sudo apt install yarn
echo

## Instaling Insomnia
#####################
Topic "Insomnia"
subTopic "Instaling"
sudo snap install insomnia
echo
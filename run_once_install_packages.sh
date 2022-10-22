#!/bin/sh

# Update apt index
sudo apt update

# Install FiraCode font
sudo apt install -y fonts-firacode

# Install Fish
sudo apt-add-repository --yes ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish
cat /etc/shells
echo "\n ✨ Enter the password of your user, then your shell: \n"
chsh

# Install Oh My Fish
cd ~/
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
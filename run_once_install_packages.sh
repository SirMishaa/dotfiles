#!/bin/sh

# Update apt index
sudo apt update

# Install FiraCode (Nerd) font
echo "\n✨ Installing FiraCode fonts: \n"
sudo apt install -y fonts-firacode

# Install Fish
echo "\n✨ Installing Fish: \n"
sudo apt-add-repository --yes ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish
cat /etc/shells
echo "\n ✨ Enter the password of your user, then your shell: \n"
chsh

# Install Oh My Fish
echo "\n✨ Installing Oh My Fish: \n"
cd ~/
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install batman
omf theme batman

# Install Bat.rs (better cat)
echo "\n✨ Installing Bat.rs (better cat): \n"
sudo apt install bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

# Install Fzf
echo "\n✨ Installing Fzf fuzzy tool: \n"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install Starship.rs prompt
echo "\n✨ Installing Starship.rs prompt: \n"
curl -sS https://starship.rs/install.sh | sh
echo "starship init fish | source" >> ~/.config/fish/config.fish

# Setup Git
echo "\n✨ Set up git: \n"
git config --global user.name "Mishaa"
git config --global user.email mishaa.pro@proton.me
git config --global init.defaultBranch main
#!/bin/fish

# Install ASDF
echo "\n✨ Installing ASDF: \n"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
source ~/.asdf/asdf.fish

# Install Fisher and ASDF fish plugin
echo "\n✨ Installing Fisher and Fish-asdf plugin: \n"
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install rstacruz/fish-asdf

# Install NodeJS latest version
echo "\n✨ Installing NodeJS using ASDF: \n"
asdf plugin add nodejs
asdf install nodejs latest
asdf global nodejs latest
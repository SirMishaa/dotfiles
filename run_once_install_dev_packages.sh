#!/bin/fish

# Install ASDF
echo "\n✨ Installing ASDF: \n"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
source ~/.asdf/asdf.fish
mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions

# Install NodeJS latest version
echo "\n✨ Installing NodeJS using ASDF: \n"
asdf plugin add nodejs
asdf install nodejs latest
asdf global nodejs latest
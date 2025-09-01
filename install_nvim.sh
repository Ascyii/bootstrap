#!/bin/bash
cd ~/programs
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
tar xf nvim-linux-x86_64.tar.gz
ln -sf ~/programs/nvim-linux-x86_64/bin/nvim ~/programs/bin
echo 'export EDITOR="nvim"' >> ~/.bashrc
echo 'alias nvim="$HOME/programs/bin/nvim"' >> ~/.bashrc
if [ -d "$HOME/.config/nvim" ]; then
	echo "Neovim configuration already exists."
else
	git clone https://github.com/ascyii/nvim ~/.config/nvim
fi

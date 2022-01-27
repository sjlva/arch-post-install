#!/bin/bash

sudo pacman -S neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
pip install neovim
sudo pacman -S nodejs npm
sudo pacman -S ruby perl ripgrep fd fzf xclip
npm install -g neovim

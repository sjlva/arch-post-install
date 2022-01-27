!#/bin/bash

cd $HOME
git clone https://github.com/sjlva/dotfiles.git
cd dotfiles
stow i3 alacritty nvim ranger rofi tmux
cd $HOME

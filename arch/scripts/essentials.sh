#!/bin/bash

cd $HOME
sudo pacman -S git base-devel firefox stow nitrogen ripgrep perl ruby fd tk
sudo pacman -S powerline-fonts ttf-nerd-fonts-symbols-mono ttf-jetbrains-mono

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

cd $HOME

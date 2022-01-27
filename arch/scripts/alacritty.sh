#!/bin/bash

cd $HOME

git clone https://github.com/alacritty/alacritty.git
cd alacritty

curl --proto 'https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source $HOME/.cargo/env

rustup override set stable
rustup update stable

sudo pacman -S cmake gcc freetype2 fontconfig pkg-config make libxcb libxkbcommon python 

cargo build --release

sudo tic -xe alacritty,alacritty-direct extra/alacritty.info

sudo cp target/release/alacritty /usr/local/bin
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database

sudo mkdir -p /usr/local/share/man/man1
gzip -c extra/alacritty.man | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null
gzip -c extra/alacritty-msg.man | sudo tee /usr/local/share/man/man1/alacritty-msg.1.gz > /dev/null

cd ..
rm -rf alacritty

cd $HOME

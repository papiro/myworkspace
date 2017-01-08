#!/bin/sh

# Configuring vim
cp ../configs/vim/.vimrc ~/ &
sudo mkdir -p ~/.vim/after/syntax
sudo cp ../configs/vim/syntax/*.vim ~/.vim/after/syntax
sudo cp --parents ../configs/vim/colors/*.vim ~/.vim


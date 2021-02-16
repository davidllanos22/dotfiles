#!/bin/bash

dotfiles=/mnt/c/dotfiles

# Remove default files
#sudo rm -rf ~/nvim
sudo rm -rf ~/.bashrc
sudo rm -rf ~/.tmux.conf
sudo rm -rf ~/.aliases

# Create symlinks
ln -sf $dotfiles/.bashrc ~/.bashrc
ln -sf $dotfiles/.tmux.conf ~/.tmux.conf
ln -sf $dotfiles/.aliases ~/.aliases


echo "Dotfiles installed."

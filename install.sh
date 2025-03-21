#!/bin/bash
DOTFILES_DIR=~/dotfiles

# Create symlinks
ln -sf $DOTFILES_DIR/.bashrc ~/.bashrc
ln -sf $DOTFILES_DIR/.vimrc ~/.vimrc
ln -sf $DOTFILES_DIR/.gitconfig ~/.gitconfig

# Helix Config
mkdir -p ~/.config
ln -sf $DOTFILES_DIR/helix ~/.config/helix

echo "Dotfiles installed!"

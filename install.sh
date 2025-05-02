#!/bin/bash
DOTFILES_DIR=~/dotfiles

# Create symlinks
ln -sf $DOTFILES_DIR/.bashrc ~/.bashrc
ln -sf $DOTFILES_DIR/.bash_aliases ~/.bash_aliases
ln -sf $DOTFILES_DIR/.gitconfig ~/.gitconfig

ln -sf $DOTFILES_DIR/.config/alacritty ~/.config/alacritty
ln -sf $DOTFILES_DIR/.config/fastfetch ~/.config/fastfetch
ln -sf $DOTFILES_DIR/.config/helix ~/.config/helix
ln -sf $DOTFILES_DIR/.config/hypr ~/.config/hypr
ln -sf $DOTFILES_DIR/.config/ml4w ~/.config/ml4w
ln -sf $DOTFILES_DIR/.config/ml4w-hyprland-settings ~/.config/ml4w-hyprland-settings
ln -sf $DOTFILES_DIR/.config/rofi ~/.config/rofi
ln -sf $DOTFILES_DIR/.config/waybar ~/.config/waybar
ln -sf $DOTFILES_DIR/.config/starship.toml ~/.config/starship.toml



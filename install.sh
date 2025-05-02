#!/bin/bash

echo "Linking dotfiles..."

DOTFILES_DIR="$HOME/dotfiles"

# Symlink home dotfiles
ln -sf "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/.bash_aliases" "$HOME/.bash_aliases"
ln -sf "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"

# Symlink config files
mkdir -p "$HOME/.config"

ln -sf "$DOTFILES_DIR/.config/alacritty" "$HOME/.config/alacritty"
ln -sf "$DOTFILES_DIR/.config/fastfetch" "$HOME/.config/fastfetch"
ln -sf "$DOTFILES_DIR/.config/helix" "$HOME/.config/helix"
ln -sf "$DOTFILES_DIR/.config/hypr" "$HOME/.config/hypr"
ln -sf "$DOTFILES_DIR/.config/ml4w" "$HOME/.config/ml4w"
ln -sf "$DOTFILES_DIR/.config/ml4w-hyprland-settings" "$HOME/.config/ml4w-hyprland-settings"
ln -sf "$DOTFILES_DIR/.config/rofi" "$HOME/.config/rofi"
ln -sf "$DOTFILES_DIR/.config/waybar" "$HOME/.config/waybar"
ln -sf "$DOTFILES_DIR/.config/starship.toml" "$HOME/.config/starship.toml"

echo "Done!"

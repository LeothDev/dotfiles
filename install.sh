#!/bin/bash

set -e  # Exit on error

DOTFILES_DIR="$HOME/dotfiles"
CONFIG_DIR="$HOME/.config"
BACKUP_DIR="$HOME/backups/.dotfiles_backup_$(date +%Y%m%d%H%M%S)"

PACKAGES=(fastfetch helix alacritty git starship exa wl-clipboard bat grim slurp libnotify glow silicon jrnl)

echo "==> Backing up existing dotfiles to $BACKUP_DIR"
mkdir -p "$BACKUP_DIR"

backup_and_link() {
    local src="$1"
    local dest="$2"

    if [ -e "$dest" ] || [ -L "$dest" ]; then
        echo "Backing up $dest"
        mkdir -p "$(dirname "$BACKUP_DIR/${dest#$HOME/}")"
        mv "$dest" "$BACKUP_DIR/${dest#$HOME/}"
    fi

    ln -sf "$src" "$dest"
    echo "Linked $src → $dest"
}

echo "==> Linking home dotfiles..."
backup_and_link "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
backup_and_link "$DOTFILES_DIR/.bash_aliases" "$HOME/.bash_aliases"
backup_and_link "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"

echo "==> Linking config files..."
mkdir -p "$CONFIG_DIR"

CONFIGS=(alacritty fastfetch helix hypr ml4w ml4w-hyprland-settings rofi waybar glow silicon jrnl)
for item in "${CONFIGS[@]}"; do
    backup_and_link "$DOTFILES_DIR/.config/$item" "$CONFIG_DIR/$item"
done

backup_and_link "$DOTFILES_DIR/.config/starship.toml" "$CONFIG_DIR/starship.toml"

echo "==> Dotfiles linked!"

# OPTIONAL: Install packages
read -rp "Install basic packages? (${PACKAGES[*]}) [y/N]: " INSTALL_PACKAGES
if [[ "$INSTALL_PACKAGES" =~ ^[Yy]$ ]]; then
    sudo pacman -Syu --needed "${PACKAGES[@]}"
fi

# === SSH Key Setup ===
if [ ! -f "$HOME/.ssh/id_rsa" ]; then
    echo "==> No SSH key found. Creating a new one..."
    mkdir -p "$HOME/.ssh"
    ssh-keygen -t rsa -b 4096 -C "your-email@example.com" -f "$HOME/.ssh/id_rsa" -N ""
    eval "$(ssh-agent -s)"
    ssh-add "$HOME/.ssh/id_rsa"
    echo "==> SSH key generated."

    echo ""
    echo "🔑 Public key (copy this to GitHub > Settings > SSH Keys):"
    echo ""
    cat "$HOME/.ssh/id_rsa.pub"
    echo ""
else
    echo "✅ SSH key already exists."
fi

echo "🎉 Setup complete. Enjoy your environment!"

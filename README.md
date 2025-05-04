## 🛠️ My Dotfiles

A minimal, clean and practical dotfiles setup for Linux (EndeavourOS🚀/Arch) with Hyprland, Helix, and a productive CLI workflow.
I use them to quickly set up my environment across machines.

## ✨ Features

📦 Features
- 🐧 Clean Arch-based config (EndeavourOS)

- 🧩 Hyprland setup with waybar, rofi, etc.

- ⚡ Terminal-first workflow (Helix, Alacritty, Fastfetch, Starship)

- 🧠 Smart Bash aliases

- 🔐 SSH key creation (if none exists)

- 📂 Auto-backup of existing config before symlinking

- 📜 Easy installation script 


## 🚀 Installation

# Clone this repo:
```bash
git clone https://github.com/LeothDev/dotfiles.git $HOME/dotfiles
cd ~/dotfiles
```

# Run the installer:
```bash
chmod +x install.sh
./install.sh
```

> The script will:
1. Backup any conflicting dotfiles to ~/.dotfiles_backup_TIMESTAMP
2. Create symlinks to everything in place
3. Optionally install a few base packages
4. Create an SSH key for GitHub if you don't already have one (Set your GitHub email)

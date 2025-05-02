#    _               _              
#   | |__   __ _ ___| |__  _ __ ___ 
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__ 
# (_)_.__/ \__,_|___/_| |_|_|  \___|
# 

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# -----------------------------------------------------
# LOAD CUSTOM .bash_aliases if exists
# -----------------------------------------------------
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# -----------------------------------------------------
# Fastfetch if in Hyprland
# -----------------------------------------------------
# if [[ $(tty) == *"pts"* ]]; then
#     # fastfetch --pipe false --kitty-direct "~/Pictures/Screenshots/screenshot-20250502-033708.png"
#     fastfetch
# else
#     echo
#     echo "Start Hyprland with command Hyprland"
# fi

alias ml4w-hyprland='~/.config/ml4w/apps/ML4W_Hyprland_Settings-x86_64.AppImage'
eval "$(starship init bash)"

export PATH="/opt/android-studio/bin:$PATH"

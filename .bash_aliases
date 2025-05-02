# System
alias update="sudo pacman -Syu"
alias cleanup="sudo pacman -Rns $(pacman -Qtdq)"
alias cls="clear"
alias usage="du -sh * | sort -h"
# alias meminfo="free -m -l -t"
# alias ports="sudo lsof -i -P -n | grep LISTEN"

# Handy
alias h="history"
alias j="jobs -l"
alias now="date +'%T'"
alias path="echo -e ${PATH//:/\\n}"

# Quick
alias off="shutdown -h now"

# Navigation
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"

# Files
alias ls="exa --icons -F -H --group-directories-first --git -1"
alias ll="ls -alF"
alias l.="ls -d .*"

# Utils
alias please="sudo $(fc -ln -1)"
# alias mkdircd="function _mkdircd() { mkdir '$1' && cd '$1'; }; _mkdircd"
alias extract="function _extract() { tar -xvzf '$1'; }; _extract"

# Bluetooth
alias blue-on="sudo systemctl start bluetooth"
alias blue-off="sudo systemctl stop bluetooth"


# Dev Tools
alias hx="helix"
alias ping="ping -c 4"
alias fastping="ping -c 100 -s.2"

# Productivity
alias todo="helix ~/Documents/TODO.md"
alias uni="cd ~/Documents/University"
alias dot="cd ~/dotfiles"

# Grep
alias grep="grep --color=auto"

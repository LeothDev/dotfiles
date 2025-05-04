# System
alias update="sudo pacman -Syu"
alias cleanup="sudo pacman -Rns $(pacman -Qtdq)"
alias cls="clear"
alias usage="du -sh * | sort -h"
# alias meminfo="free -m -l -t"
# alias ports="sudo lsof -i -P -n | grep LISTEN"
alias yep="sudo pacman -S $1"
alias nop="sudo pacman -R $1"

# Handy
alias h="history"
alias j="jobs -l"
alias now="date +'%T'"
alias path="echo -e ${PATH//:/\\n}"

# Quick
alias bye="shutdown -h now"

# Navigation
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"

# Files
alias cat="bat"
alias ls="exa --icons -F -H --group-directories-first --git -1"
alias ll="ls -alF"
alias l.="ls -d .*"

# Utils
alias please="sudo $(fc -ln -1)"
# alias mkdircd="function _mkdircd() { mkdir '$1' && cd '$1'; }; _mkdircd"
alias untar="function _extract() { tar -xvzf '$1'; }; _extract"

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
alias grep="rg --color=auto"

# Git
alias g="git"
alias gs="git status -sb"
alias ga="git add ."
alias gc="git commit -v"
alias gca="git commit --amend"
alias gp="git push"
alias gl="git pull"
alias gb="git branch"
alias gd="git diff"
alias gnew="git checkout -b"
alias gsave="git stash -u" # Save your changes before committing
alias gpop="git stash pop" # Restore your stash changes
alias glog="git log --oneline --graph --decorate --all"
alias gundo="git reset --soft HEAD~1" # Undo last commit but keep changes
alias gwip="ga && git commit -m [WIP] && gp"
alias gdone="ga && git commit -m UPDATE && gp"
alias gpurge="git clean -fd && git reset --hard" # Dangerous, deletes files and directories and resets all changes to last commit
alias gwho="git config user.name && git config user.email"

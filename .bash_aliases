# System
alias update="sudo pacman -Syu"
alias cleanup="sudo pacman -Rns $(pacman -Qtdq)"
alias cls="clear"
alias usage="du -sh * | sort -h"
# alias meminfo="free -m -l -t"
# alias ports="sudo lsof -i -P -n | grep LISTEN"
alias yup="sudo pacman -S"
alias nop="sudo pacman -R"

# Handy
alias h="history"
alias j="jobs -l"
alias now="date +'%T'"
alias path="echo -e ${PATH//:/\\n}"

# Quick
alias bye="shutdown -h now"

# Navigation
alias cmkdir="mkdir $1 && cd $1"
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"

# Files
alias open='xdg-open'
alias cat="bat"
alias ls="exa --icons -F -H --group-directories-first --git -1"
alias ll="ls -alF"
alias l.="ls -d .*"

# Utils
# alias mkdircd="function _mkdircd() { mkdir '$1' && cd '$1'; }; _mkdircd"
# alias untar="function _extract() { tar -xvzf '$1'; }; _extract"
alias untar="tar -xvzf"

# Bluetooth
alias blue-on="sudo systemctl start bluetooth"
alias blue-off="sudo systemctl stop bluetooth"


# Dev Tools
alias silconf="hx ~/.config/silicon/config"
alias hx="helix"
alias ping="ping -c 4"
alias fastping="ping -c 100 -s.2"

# Productivity
# alias jw='jrnl dev < echo @werewolf.sh'
alias gtodo="helix ~/Documents/TODO.md"
alias stodo="glow ~/Documents/TODO.md"
alias code="cd ~/Code"
alias dev="cd ~/Code/dev"
alias uni="cd ~/Code/uni"
alias edu="python ~/Code/uni/eduroam-linux-Radius-22.py"
alias dot="cd ~/dotfiles"

# Grep
alias grep="rg --color=auto"

# Git
alias g="git"
alias gs="git status -sb"
alias ga="git add ."
alias gc="git commit -m"
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


# Python
alias venv="python -m venv .venv"
alias onvenv="source ./.venv/bin/activate"


# YT
alias mkv2mp4='ffmpeg -i "$1" -c copy "${1%.mkv}.mp4"'
alias rec="asciinema rec"
alias play="asciinema play"
alias recs='cd ~/Videos/YT/recordings'

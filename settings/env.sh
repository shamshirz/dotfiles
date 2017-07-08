#!/bin/bash

# I'm expecting a $dots var to be something like ~/git/dotfiles or something

export GOPATH=~/.golang
export PATH=$GOPATH/bin:$PATH

# Owner
export USER_NAME="aaron"
export wk_dir="~/Git"
export PATH=$PATH:/usr/local/bin

# FileSearch
#function f() { find . -iname "*$1*" ${@:2} }
#function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Aliases

alias upDot="sh $dots/update-settings.sh"

alias aws='cd ~/.aws/'
alias pgres='cd /usr/local/var/postgres'
alias ls="ls -G"
alias log="git log --pretty=oneline --abbrev-commit"
alias gs="git status"
alias ru="git remote update"
alias gc="git commit"

echo "Welcome back"
cat $dots/settings/aaron.txt
echo $(date)

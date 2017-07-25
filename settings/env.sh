#!/bin/bash

# I'm expecting a $dots var to be something like ~/git/dotfiles or something

# Source your super secret stuff that didn't make it into the repo
touch $dots/settings/secret.sh
source $dots/settings/secret.sh

export GOPATH=~/.golang
export PATH=$GOPATH/bin:$PATH

# Owner
export USER_NAME="aaron"
export AWS_USERNAME="aaron"
export wk_dir="~/Git"
export PATH=$PATH:/usr/local/bin
export DOCKER_VOLUMES=/Users/aaron/Documents/docker_volumes


# FileSearch
#function f() { find . -iname "*$1*" ${@:2} }
#function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Aliases

alias upDot="sh $dots/update-settings.sh"

alias pgres='cd /usr/local/var/postgres'
alias ls="ls -G"
alias log="git log --pretty=oneline --abbrev-commit"
alias gs="git status"
alias ru="git remote update"
alias gc="git commit"
alias clb="git fetch --prune origin"

alias mypsql="psql -h 127.0.0.1 -d postgres -U postgres -d crowbar_test"

echo "Welcome back"
cat $dots/settings/aaron.txt
echo $(date)

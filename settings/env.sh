#!/bin/bash

# I'm expecting a $dots var to be something like ~/git/dotfiles or something

# Source your super secret stuff that didn't make it into the repo
touch $dots/settings/secret.sh
source $dots/settings/secret.sh

export GOPATH=~/.golang
export PATH=$GOPATH/bin:$PATH

# Owner
export USER_NAME=aaron
export AWS_USERNAME=aaron
export wk_dir="~/Git"
export PATH=$PATH:/usr/local/bin
export DOCKER_VOLUMES=/Users/aaron/Documents/docker_volumes

# Erlang (specifically iex shell history)
export ERL_AFLAGS="-kernel shell_history enabled"

# FileSearch
#function f() { find . -iname "*$1*" ${@:2} }
#function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Aliases

alias up-dot="sh $dots/update-settings.sh"

alias ls="ls -G"
alias log="git log --pretty=oneline --abbrev-commit"
alias gs="git status"
alias ru="git remote update"
alias gc="git commit"
alias clb="git fetch --prune origin"
alias git-undo="git reset HEAD~"
alias git-redo="git commit -c ORIG_HEAD"
alias howgif=echo "ffmpeg -i in.mov -s 600x400 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > out.gif"
alias mypsql="psql -h 127.0.0.1 -d postgres -U postgres -d crowbar_test"
alias pg-start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg-stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg-status="ps aux | grep postgres"

# Docker stuff
alias docker-clean="docker rm $(docker ps -qa --no-trunc --filter "status=exited")"

echo "Welcome back"
cat $dots/settings/aaron.txt
echo $(date)

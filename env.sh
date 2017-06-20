#!/bin/zsh

# I'm expecting a $dots var to be something like ~/git/dotfiles or something

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

alias zshconfig="vim $dots/zshrc_dot_me"
alias envconfig="vim $dots/env.sh"
alias upDot="sh $dots/update.sh"

alias start-pg='pg_ctl -l $PGDATA/server.log start'
alias stop-pg='pg_ctl stop -m fast'
alias restart-pg='pg_ctl reload'
alias pgStart='brew services restart postgresql'

alias aws='cd ~/.aws/'
alias pgres='cd /usr/local/var/postgres'
alias ls="ls -G"
alias log="git log --pretty=oneline --abbrev-commit"
alias gs="git status"
alias ru="git remote update"
alias gc="git commit"


echo "Welcome back"
cat $dots/aaron.txt
echo $(date)


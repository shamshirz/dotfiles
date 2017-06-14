#!/bin/zsh

# Owner
export USER_NAME="aaron"

# FileSearch
#function f() { find . -iname "*$1*" ${@:2} }
#function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Aliases

alias zshconfig="vim ~/.zshrc"
alias envconfig="vim ~/env.sh"

alias start-pg='pg_ctl -l $PGDATA/server.log start'
alias stop-pg='pg_ctl stop -m fast'
alias restart-pg='pg_ctl reload'
alias pgStart='brew services restart postgresql'

alias config='cd ~/Documents/Git/dynamoConfig'
alias aws='cd ~/.aws/'
alias pgres='cd /usr/local/var/postgres'
alias ls="ls -G"
alias log="git log --pretty=oneline --abbrev-commit"
alias gs="git status"
alias ru="git remote update"
alias gc="git commit"
alias trump="cd ~/Documents/Git/trump-money-maker"
alias proj="cd ~/Documents/Git"
alias upDot="sh ~/dotfiles/update.sh"

# Gradle
export GRADLE_HOME="/Users/aaron/Library/Gradle/gradle-2.12"
export PATH=$PATH:$GRADLE_HOME/bin

# Spring
export SPRING_HOME=/Users/aaron/Library/Spring/spring-1.3.3.RELEASE
export PATH=$PATH:$SPRING_HOME/bin

# local bin (for Visual Studio)
export PATH=$PATH:/usr/local/bin

echo "Welcome back"
cat ~/dotfiles/aaron.txt
echo $(date)


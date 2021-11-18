#!/bin/bash

# I'm expecting a $dots var to be something like ~/git/dotfiles or something

# Source your super secret stuff that didn't make it into the repo
touch $dots/settings/secret.sh
source $dots/settings/secret.sh

export GOPATH=~/.golang
export PATH=$GOPATH/bin:$PATH
# add rust binaries that I've created (rust corvus-cli)
export PATH=/Users/aaron/.cargo/bin:$PATH
export PATH=$PATH:/usr/local/bin

# Owner
export USER_NAME=aaron
export AWS_USERNAME=aaron
export AWS_REGION=us-east-1
export wk_dir="~/Git"
export DOCKER_VOLUMES=/Users/aaron/Documents/docker_volumes

# Erlang (specifically iex shell history)
export ERL_AFLAGS="-kernel shell_history enabled"

# FileSearch
#function f() { find . -iname "*$1*" ${@:2} }
#function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

#convert .mov into .gif
function gifme() {
  filename=$(basename "$1")
  name="${filename%.*}"
  ffmpeg -i $1 -filter:v scale=400:-1 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > $name.gif
}

opr () {
  gh pr create --web \
    --label "house platform" \
    --label "squad siege"
}
hprs () {
  gh pr list --web \
    --label "house platform"
}


# Aliases
alias retire="corvus-cli crowbar retire $(git_current_branch)"
alias up-dot="sh $dots/update-settings.sh"

alias ls="ls -G"
alias log="git log --pretty=oneline --abbrev-commit"
alias gs="git status"
alias ru="git remote update"
alias gc="git commit"
alias clb="git fetch --prune origin"
alias git-undo="git reset HEAD~"
alias git-redo="git commit -c ORIG_HEAD"
alias gwip="git add .; git commit --no-verify -m \"WIP - REMOVE ME\";"
alias standup="log --since yesterday --oneline --author avotre"
alias retro="log --since '1 week' --oneline --author avotre"
alias gforgot="git diff HEAD^ HEAD"
alias amend="git add .; git commit --amend --no-edit"
alias graph="git log --graph --decorate --oneline"

# Elixir
alias mps="mix do graphql, phx.server"
alias imps="mix graphql && iex -S mix phx.server"
alias callers="mix xref callers"
alias mtc="mix test --cover"
alias docs="mix docs && open doc/index.html"
alias ex_test="mix test.watch --stale --formatter ExUnitNotifier --formatter ExUnit.CLIFormatter"
alias credo="mix credo --config-name=currently_passing"

# Elm
alias elma="elm-analyse -s --port=3379"

alias howgif="echo 'ffmpeg -i in.mov -s 601x400 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > out.gif'"
alias mypsql="psql -h 127.0.0.1 -d postgres -U postgres -d crowbar_test"
alias pg-start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg-stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg-status="ps aux | grep postgres"

# Postgres stuff
# brew services restart postgresql


# Docker stuff
# alias docker-clean="docker rm $(docker ps -qa --no-trunc --filter "status=exited")"


echo "Welcome back"
cat $dots/settings/aaron.txt
echo $(date)

# brew location for asdf
. $(brew --prefix asdf)/asdf.sh

# set config location for vs-code
export XDG_CONFIG_HOME=~/.config

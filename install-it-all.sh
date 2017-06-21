#!/bin/bash

cd $dots/settings

echo "Going to install everything now, hold your butt"
for script in ../install/*.sh; do "$script"


# This comes from the Brewfile
brew tap Homebrew/bundle
brew bundle


# Elm is pretty easy
npm install -g elm


# Update the zshrc
ln -s zshrc_dot_me ~/.zshrc

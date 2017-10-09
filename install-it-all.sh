#!/bin/bash

echo "🔥🔥 Going to install everything now, hold your butt 🔥🔥"

cd $dots/settings
for script in ../install/*.sh; do "$script"


echo "🔥 Installing Brew things 🔥"
brew tap Homebrew/bundle
brew bundle


echo "🔥 Installing Global Npm 🔥"
npm install -g elm elm-format yarn


echo "🔥 Linking the local 'zshrc_dot_me' to the one '~./zshrc' 🔥"
ln -s zshrc_dot_me ~/.zshrc

echo "🔥🔥 Victory! 🔥🔥"

#!/bin/zsh

codeSettings=~/dotfiles/vs-settings.json

echo "Brew dump"
brew bundle dump -f

echo "VS Code settings - $codeSettings"
cp ~/Library/Application\ Support/Code/User/settings.json $codeSettings


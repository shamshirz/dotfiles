#!/bin/zsh

echo "Installing Visual Studio Code"
curl "vsCodeUrl" -o ~/Downloads/vscode.zip

unzip ~/Downloads/VSCode-darwin-stable.zip -d ~/Applications/

open "/Applications/Visual Studio Code.app"

# Install the 'code' command
# Annoyingly couldn't automate this step!
# You need to open the command pallete (cmd + shift + p)
# Type "Shell Command: Install" and select.

echo "Run pallete command -> 'Install shell' "

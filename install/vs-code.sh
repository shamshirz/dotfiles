#!/bin/zsh

echo "Installing Visual Studio Code"
curl "https://go.microsoft.com/fwlink/?LinkID=620882" -o ~/Downloads/vscode.zip

unzip ~/Downloads/VSCode-darwin-stable.zip -d ~/Applications/

open "/Applications/Visual Studio Code.app"

# Install the 'code' command
# Annoyingly couldn't automate this step!
# You need to open the command pallete (cmd + shift + p)
# Type "Shell Command: Install" and select.

echo "Run pallete command -> 'Install shell' within VS code"
echo "Then you can run the add package script"

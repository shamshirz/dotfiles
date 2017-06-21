#!/bin/bash

echo "Installing packages and elm-format globally"

code --install-extension PeterJausovec.vscode-docker
code --install-extension mjmcloug.vscode-elixir
code --install-extension robertohuertasm.vscode-icons

# Elm extension can auto format if we DL the npm module
code --install-extension sbrink.elm
npm install -g elm-format

# Next add docker

echo "Visual Studio is lookin' Good!"

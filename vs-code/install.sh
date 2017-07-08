#!/bin/bash

echo "Installing Visual Studio Code"

# The terminal executable is named 'code' and I couldn't automate the install of that
# So run this script. Manually run the Visual Studio Code command
# Then rerun

if hash code 2>/dev/null; then
  MYDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  EXTENSIONS=$MYDIR/extensions.config
  SETTINGS=$MYDIR/settings.config

  echo "code exists, so we can install extensions"
  <$EXTENSIONS xargs -n 1 code --install-extension
  
  echo "Install elm-format globally"
  npm install -g elm-format

  echo "Copy my settings into lib/app/code"
  cp -f $SETTINGS ~/Library/Application\ Support/Code/User/settings.json

else

  echo "Installing Visual Studio Code"
  curl "https://go.microsoft.com/fwlink/?LinkID=620882" -o ~/Downloads/vscode.zip

  unzip ~/Downloads/VSCode-darwin-stable.zip -d ~/Applications/

  open "/Applications/Visual Studio Code.app"

  echo "Add the 'code' cli manually then rerun this script"
  echo "In vsCode, run pallete command (cmd + shift + p) -> 'Install shell'"

  exit 0
fi

echo "Visual Studio is lookin' Good!"


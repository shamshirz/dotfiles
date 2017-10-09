#!/bin/bash

echo "🌀🌀 Installing Visual Studio Code 🌀🌀"

# The terminal executable is named 'code' and I couldn't automate the install of that
# So run this script. Manually run the Visual Studio Code command
# Then rerun

if hash code 2>/dev/null; then
  MYDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  EXTENSIONS=$MYDIR/extensions.config
  SETTINGS=$MYDIR/settings.config
  SNIPPETS=$MYDIR/snippets/*

  echo "🌀 Looks like the CLI installed correctly"
  <$EXTENSIONS xargs -n 1 code --install-extension
  
  echo "🌀 Copy my settings into lib/app/code"
  cp -f $SETTINGS ~/Library/Application\ Support/Code/User/settings.json

  echo "🌀 Copy my snipets into lib/app/code"
  cp -f $SNIPPETS ~/Library/Application\ Support/Code/User/snippets/
  
else

  echo "🌀 Installing Visual Studio Code"
  curl "https://go.microsoft.com/fwlink/?LinkID=620882" -o ~/Downloads/vscode.zip

  unzip ~/Downloads/vscode.zip -d ~/Applications/

  open "/Applications/Visual Studio Code.app"

  echo "🌀 If I failed to unzip, then download manually from here - https://go.microsoft.com/fwlink/?LinkID=620882"
  echo "🌀 Add the 'code' cli manually then rerun this script"
  echo "🌀 In VS-Code, run pallete command (cmd + shift + p) -> type 'Shell Command'"

  exit 0
fi

echo "🌀🌀 Visual Studio is lookin' Good! 🌀🌀"

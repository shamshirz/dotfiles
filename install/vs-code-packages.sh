#!/bin/bash

echo "Attempting to install vs-code packages"

if hash code 2>/dev/null; then
  echo "code exists, so we can install the packages"
  <$dots/settings/vs-code-package-list.txt xargs -n 1 code --install-extension
  
  echo "Install elm-format globally"
  npm install -g elm-format
else
  echo "code isn't on the path, make sure it's installed and you've run the 'shell install' command"
  exit 0
fi

# Next add docker

echo "Visual Studio is lookin' Good!"

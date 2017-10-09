#!/bin/bash

if hash docker 2>/dev/null; then
  echo "🐋 Docker already Installed. Continuing…"
else
  echo "🐋 Getting Docker CE"
  curl "https://download.docker.com/mac/stable/Docker.dmg" -o ~/Downloads/Docker.dmg

  hdiutil attach ~/Downloads/Docker.dmg

  cp -ir /Volumes/Docker/Docker.app /Applications

  sudo hdiutil unmount /Volumes/Docker

  echo "🐋 Docker successfully installed"
fi

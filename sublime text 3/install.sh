#!/bin/bash

# Calls linker to set up User directory for Sublime Text 3

CURRENTDIR="$(pwd)"

src=${CURRENTDIR}/User
target="/Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/"

linker=../linker.sh

if [[ ! -e $linker ]]; then
  echo "$linker script not found"
  exit
fi

. $linker "$src" "$target"
#!/bin/bash

# Calls linker to set up User directory for Visual Studio Code

CURRENTDIR="$(pwd)"

src=${CURRENTDIR}/User
target="/Users/$USER/Library/Application Support/Code/User"

linker=../linker.sh

if [[ ! -e $linker ]]; then
  echo "$linker script not found"
  exit
fi

. $linker "$src" "$target"
#!/bin/bash

# Symlinks one thing with another. Easy!

if [[ $# -eq 0 ]]; then
  echo "Usage: linker.sh src target"
  exit
fi

src="$1"
target="$2"

if [[ ! -e $src ]]
then
  echo "src not found"
  exit
fi

function symlink {
  ln -nsf "$1" "$2"
}


if [[ -e $target ]]; then
  read -p "config already exists. Do you wish to overwrite? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Removing existing symlink"
    rm -r "$target"
  else
    echo "Not overwriting"
    exit
  fi
fi

echo "symlinking $src to $target"
symlink "$src" "$target"

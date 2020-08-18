#!/bin/bash -e

if [ -f brew_list.txt ]; then
  xargs brew install < brew_list.txt
fi

if [ -f brew_cask_list.txt ]; then
  xargs brew cask install < brew_cask_list.txt
fi

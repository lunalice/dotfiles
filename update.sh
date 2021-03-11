#!/bin/bash -e

brew leaves > ./brew_list.txt
brew list -1 --cask > ./brew_cask_list.txt

# # 未完成なので使わない事
# cp ~/.zshrc ./.zshrc
# cp ~/.zplug ./.zplug
# cp ~/.vim ./.vim
# cp ~/.vimrc ./.vimrc
# cp ~/.bash_profile ./.bash_profile
# cp ~/.bashrc ./.bashrc

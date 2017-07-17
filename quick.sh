#!/bin/bash

git clone --recursive https://github.com/catatsuy/dotfiles.git ~/dotfiles

(cd ~/dotfiles && ./setup.sh)

git clone --recursive https://github.com/catatsuy/dot.zsh.git ~/.zsh

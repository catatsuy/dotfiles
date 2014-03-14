#!/bin/bash

git clone --recursive git://github.com/catatsuy/dotfiles.git ~/dotfiles

(cd ~/dotfiles && make)

git clone --recursive git://github.com/catatsuy/dot.zsh.git ~/.zsh

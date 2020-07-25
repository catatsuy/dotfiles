#!/bin/bash

# symbolic link
ln -sf ~/dotfiles/.tmux.conf        ~/.tmux.conf
ln -sf ~/dotfiles/.zshenv           ~/.zshenv
ln -sf ~/dotfiles/.vimrc            ~/.vimrc
ln -sf ~/dotfiles/global.gitignore  ~/.gitignore
ln -sf ~/dotfiles/dircolors-solarized/dircolors.256dark  ~/.dircolors
ln -sf ~/dotfiles/.screenrc         ~/.screenrc

# git config
git config --global core.editor vi
git config --global color.ui auto
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global merge.ff false
git config --global core.autocrlf input
git config --global core.excludesfile ~/.gitignore
git config --global core.pager "less -R --tabs=4"
# git config --global ghq.root ~/src

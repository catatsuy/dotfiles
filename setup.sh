#!/bin/bash

# symbolic link
ln -sf ~/dotfiles/.tmux.conf        ~/.tmux.conf
ln -sf ~/dotfiles/.zshenv           ~/.zshenv
ln -sf ~/dotfiles/.vimrc            ~/.vimrc
ln -sf ~/dotfiles/dircolors-solarized/dircolors.256dark  ~/.dircolors
ln -sf ~/dotfiles/.screenrc         ~/.screenrc

ln -sf ~/dotfiles/global.gitignore ~/.gitignore

# git config
git config --global core.editor vi
git config --global color.ui auto
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global merge.ff false
git config --global core.autocrlf input
git config --global core.pager "less -R --tabs=4"
# git config --global ghq.root ~/src

# cf: https://blog.gitbutler.com/how-git-core-devs-configure-git/
git config --global branch.sort -committerdate
git config --global tag.sort version:refname
git config --global init.defaultBranch main
git config --global diff.algorithm histogram
git config --global diff.colorMoved plain
git config --global diff.mnemonicPrefix true
git config --global diff.renames true
git config --global push.default simple
git config --global push.autoSetupRemote true
git config --global push.followTags true
git config --global fetch.prune true
git config --global fetch.pruneTags true
git config --global fetch.all true

git config --global help.autocorrect prompt
git config --global commit.verbose true
git config --global rerere.enabled true
git config --global rerere.autoupdate true
git config --global core.excludesfile ~/.gitignore
git config --global rebase.autoSquash true
git config --global rebase.autoStash true
git config --global rebase.updateRefs true

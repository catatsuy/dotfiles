dotfiles
==================================

## Fast introduction

    curl -L https://raw.github.com/catatsuy/dotfiles/master/quick.sh | bash

## Mac

Homebrew:

    xcode-select --install
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

Brewfile:

    brew bundle

不足分

 * [Google 日本語入力](http://www.google.co.jp/ime/)
 * [iTerm2 - Mac OS Terminal Replacement](http://www.iterm2.com/#/section/downloads)
 * [XQuartz](https://xquartz.macosforge.org/landing/)
 * [サクサク引ける Rubyリファレンスマニュアル](http://miyamae.github.io/rubydoc-ja/)
 * [MacTeX - TeX Users Group](http://tug.org/mactex/)
 * [Mac App Store - StuffIt Expander](https://itunes.apple.com/jp/app/stuffit-expander/id405580712)

## Debian

    ./debian.sh

## Vagrant

    config.vm.provision "shell", path: "dotfiles/debian.sh"

## Ruby/Perl

    ./setup.sh

## .zsh

https://github.com/catatsuy/dot.zsh

## .gitignore

https://github.com/github/gitignore

## .aspell.conf

Emacs のスペルチェック

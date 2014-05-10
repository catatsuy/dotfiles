dotfiles
==================================

## Fast introduction

    curl -L https://raw.github.com/catatsuy/dotfiles/master/quick.sh | bash
    # not installed curl
    wget -O - https://raw.github.com/catatsuy/dotfiles/master/quick.sh | bash

## Mac

Homebrew:

    xcode-select --install
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

Brewfile:

    brew bundle

不足分

 * [iTerm2 - Mac OS Terminal Replacement](http://www.iterm2.com/#/section/downloads)
 * [XQuartz](https://xquartz.macosforge.org/landing/)
 * [サクサク引ける Rubyリファレンスマニュアル](http://miyamae.github.io/rubydoc-ja/)
 * [MacTeX - TeX Users Group](http://tug.org/mactex/)
 * [Mac App Store - StuffIt Expander](https://itunes.apple.com/jp/app/stuffit-expander/id405580712)

## Debian

    ./debian.sh

## Git

    git config --global user.name "catatsuy"
    git config --global user.emali "catatsuy@catatsuy.org"

### GitHub の .ssh/config

    Host github.com
      HostName github.com
      User git
      Port 22
      IdentityFile ~/.ssh/id_rsa.github
      Compression yes

## Vagrant

    config.vm.provision "shell", path: "dotfiles/debian.sh"

## Ruby/Perl/Node.js

    ./setup.sh

## .zsh

https://github.com/catatsuy/dot.zsh

## .gitignore

https://github.com/github/gitignore

## .aspell.conf

Emacs のスペルチェック

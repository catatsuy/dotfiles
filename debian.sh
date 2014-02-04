#!/bin/bash

sudo apt-get install -y debconf-utils less lsof lv nkf openssl sudo rsync unzip dstat hdparm linux-headers-`uname -r` tree curl

sudo apt-get install -y autoconf automake libtool build-essential pkg-config subversion git git-svn tig vim-nox screen zsh tmux

update-alternatives --set editor /usr/bin/vim.nox

sudo apt-get install -y ntp

# for ruby
aptitude -y install libssl-dev
aptitude -y install libreadline5 libreadline-gplv2-dev
aptitude -y install zlib1g zlib1g-dev

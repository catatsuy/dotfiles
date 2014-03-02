#!/bin/bash

# common tools
sudo apt-get install -y debconf-utils less lsof lv ncurses-term nkf ntpdate openssl openssh-server sudo rsync time unzip dstat iptstate hdparm linux-headers-`uname -r` tree

sudo apt-get install -y autoconf automake libtool build-essential pkg-config subversion git git-svn tig vim-nox screen zsh tmux

# network tools
sudo apt-get install -y bind9-host curl dnsutils ethtool iftop ngrep tcpdump telnet whois

update-alternatives --set editor /usr/bin/vim.nox

sudo apt-get install -y ntp

# for ruby
apt-get install -y libssl-dev
apt-get install -y libreadline5 libreadline-gplv2-dev
apt-get install -y zlib1g zlib1g-dev

#!/bin/bash

aptitude update

# common tools
aptitude install -y debconf-utils less lsof lv ncurses-term nkf ntpdate openssl openssh-server sudo rsync time unzip dstat iptstate hdparm linux-headers-`uname -r` tree

aptitude install -y autoconf automake libtool build-essential pkg-config subversion git git-svn tig vim-nox screen zsh tmux

# network tools
aptitude install -y bind9-host curl dnsutils ethtool iftop ngrep tcpdump telnet whois

update-alternatives --set editor /usr/bin/vim.nox

aptitude install -y ntp

# for ruby
aptitude install -y libssl-dev
aptitude install -y libreadline5 libreadline-gplv2-dev
aptitude install -y zlib1g zlib1g-dev
aptitude install -y libffi-dev

#!/bin/bash

aptitude update

# common tools
aptitude install -y debconf-utils less lsof lv ncurses-term nkf openssl sudo rsync time unzip dstat iptstate tree daemontools

aptitude install -y autoconf automake libtool build-essential pkg-config git tig vim-nox screen zsh tmux

# network tools
aptitude install -y curl ethtool iftop ngrep tcpdump telnet whois

update-alternatives --set editor /usr/bin/vim.nox

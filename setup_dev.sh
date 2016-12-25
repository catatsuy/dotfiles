#!/bin/bash

# rbenv
if [ ! -d ${HOME}/.rbenv ]; then
  git clone https://github.com/sstephenson/rbenv.git $HOME/.rbenv
  mkdir -p $HOME/.rbenv/plugins
  git clone https://github.com/sstephenson/ruby-build.git $HOME/.rbenv/plugins/ruby-build
  git clone https://github.com/sstephenson/rbenv-default-gems.git $HOME/.rbenv/plugins/rbenv-default-gems
fi

# plenv
if [ ! -d ${HOME}/.plenv ]; then
  git clone https://github.com/tokuhirom/plenv.git $HOME/.plenv
  mkdir -p $HOME/.plenv/plugins
  git clone https://github.com/tokuhirom/Perl-Build.git $HOME/.plenv/plugins/perl-build
fi

# nodenv
if [ ! -d ${HOME}/.nodenv ]; then
  git clone https://github.com/nodenv/nodenv.git $HOME/.nodenv && cd $HOME/.nodenv && ./src/configure && make -C src
  mkdir -p $HOME/.nodenv/plugins
  git clone https://github.com/nodenv/node-build.git $HOME/.nodenv/plugins/node-build
fi

#!/bin/bash

aptitude update

aptitude install -y automake pkg-config libpcre3-dev zlib1g-dev liblzma-dev

git clone https://github.com/ggreer/the_silver_searcher.git /tmp/ag
cd /tmp/ag

./build.sh --prefix=$HOME/local
make install

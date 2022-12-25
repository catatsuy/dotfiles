#!/bin/bash

# code --list-extensions
pkglist=(
  1dot75cm.RPMSpec
  ahmadalli.vscode-nginx-conf
  bmewburn.vscode-intelephense-client
  brunnerh.insert-unicode
  bungcip.better-toml
  chrislajoie.vscode-modelines
  Compilenix.vscode-zonefile
  EditorConfig.EditorConfig
  espresso3389.unicode-normalizer
  foxundermoon.shell-format
  GitHub.vscode-pull-request-github
  golang.go
  hangxingliu.vscode-nginx-conf-hint
  hashicorp.terraform
  jeff-hykin.better-shellscript-syntax
  letrieu.expand-region
  marchrock.vscode-ghq
  mosapride.zenkaku
  ms-azuretools.vscode-docker
  ms-vscode-remote.remote-containers
  ms-vscode-remote.remote-ssh
  ms-vscode-remote.remote-ssh-edit
  ms-vscode-remote.remote-wsl
  ms-vscode-remote.vscode-remote-extensionpack
  ms-vscode.wordcount
  mujichOk.vscode-project-name-in-statusbar
  patricklee.vsnotes
  raynigon.nginx-formatter
  rebornix.ruby
  redhat.vscode-yaml
  shardulm94.trailing-spaces
  streetsidesoftware.code-spell-checker
  thomas-baumgaertner.vcl
  tuttieee.emacs-mcx
  william-voyek.vscode-nginx
  wingrunr21.vscode-ruby
  ziyasal.vscode-open-in-github
  zxh404.vscode-proto3
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done

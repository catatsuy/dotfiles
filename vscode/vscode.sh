#!/bin/bash

# code --list-extensions
pkglist=(
  ayrtonmassey.emacs-region
  bungcip.better-toml
  foxundermoon.shell-format
  jeff-hykin.better-shellscript-syntax
  letrieu.expand-region
  ms-vscode-remote.remote-containers
  ms-vscode-remote.remote-ssh
  ms-vscode-remote.remote-ssh-edit
  ms-vscode-remote.remote-wsl
  ms-vscode-remote.vscode-remote-extensionpack
  ms-vscode.Go
  patricklee.vsnotes
  shardulm94.trailing-spaces
  shd101wyy.markdown-preview-enhanced
  yzhang.markdown-all-in-one
  ziyasal.vscode-open-in-github
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done

#!/bin/bash

# code --list-extensions
pkglist=(
  1dot75cm.RPMSpec
  ayrtonmassey.emacs-region
  bungcip.better-toml
  EditorConfig.EditorConfig
  foxundermoon.shell-format
  GitHub.vscode-pull-request-github
  jeff-hykin.better-shellscript-syntax
  letrieu.expand-region
  marchrock.vscode-ghq
  mauve.terraform
  ms-azuretools.vscode-docker
  ms-vscode-remote.remote-containers
  ms-vscode-remote.remote-ssh
  ms-vscode-remote.remote-ssh-edit
  ms-vscode-remote.remote-wsl
  ms-vscode-remote.vscode-remote-extensionpack
  ms-vscode.Go
  patricklee.vsnotes
  shardulm94.trailing-spaces
  shd101wyy.markdown-preview-enhanced
  streetsidesoftware.code-spell-checker
  william-voyek.vscode-nginx
  yeannylam.recenter-top-bottom
  yzhang.markdown-all-in-one
  ziyasal.vscode-open-in-github
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done

#!/bin/bash

# code --list-extensions
pkglist=(
  1dot75cm.RPMSpec
  ayrtonmassey.emacs-region
  bmewburn.vscode-intelephense-client
  brunnerh.insert-unicode
  bungcip.better-toml
  chrislajoie.vscode-modelines
  Compilenix.vscode-zonefile
  EditorConfig.EditorConfig
  espresso3389.unicode-normalizer
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
  mujichOk.vscode-project-name-in-statusbar
  patricklee.vsnotes
  raynigon.nginx-formatter
  rebornix.ruby
  redhat.vscode-yaml
  shardulm94.trailing-spaces
  shd101wyy.markdown-preview-enhanced
  streetsidesoftware.code-spell-checker
  thomas-baumgaertner.vcl
  vscoss.vscode-ansible
  william-voyek.vscode-nginx
  wingrunr21.vscode-ruby
  yeannylam.recenter-top-bottom
  yzhang.markdown-all-in-one
  ziyasal.vscode-open-in-github
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done

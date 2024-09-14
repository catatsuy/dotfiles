dotfiles
==================================

## Fast introduction

```
curl -L https://raw.githubusercontent.com/catatsuy/dotfiles/master/quick.sh | bash
# not installed curl
wget -O - https://raw.githubusercontent.com/catatsuy/dotfiles/master/quick.sh | bash
```

## Git

```
git config --global user.name "catatsuy"
git config --global user.email "catatsuy@catatsuy.org"

git config --global alias.sb '!git diff -w | bento -branch -model "gpt-4o-mini"'
git config --global alias.sc '!git diff -w --staged | bento -commit -model "gpt-4o-mini"'
git config --global alias.rd '!branch=$(basename $(git symbolic-ref refs/remotes/origin/HEAD)); git rebase origin/$branch'
git config --global alias.rv '!git diff -w | bento -review -language Japanese'
git config --global alias.lt '!git tag | sort -V | tail -n 1'
```

### .ssh/config

```
Host github.com
  HostName github.com
  User git
  Port 22
  IdentityFile ~/.ssh/id_rsa.github

Host *
  ServerAliveInterval 5
  ServerAliveCountMax 12
```

## vscode

```
{Application App}/Contents/Resources/app/bin/code
```

## .zsh

https://github.com/catatsuy/dot.zsh

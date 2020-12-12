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

## .zsh

https://github.com/catatsuy/dot.zsh

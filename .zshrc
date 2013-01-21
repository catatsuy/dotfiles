autoload -U compinit
compinit

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

bindkey -e

setopt nolistbeep

PROMPT="%n@%m%% "
RPROMPT="[%~]"

alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias open='gnome-open'
alias emacs='XMODIFIERS=@im=none emacs'
alias acroread='env UBUNTU_MENUPROXY= acroread'
export PATH=$PATH:$HOME/local/bin:/usr/local/texlive/2011/bin/i386-linux:/usr/local/apache/bin:/usr/local/php/bin:/usr/local/ruby/bin:/usr/local/mongodb:$HOME/.rbenv/bin

eval "$(rbenv init -)"
source ~/perl5/perlbrew/etc/bashrc

setopt auto_pushd
setopt pushd_ignore_dups
setopt list_packed

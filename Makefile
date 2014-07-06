all:
	make ln
	make git

ln:
	ln -sf ~/dotfiles/.tmux.conf        ~/.tmux.conf
	ln -sf ~/dotfiles/.zshenv           ~/.zshenv
	ln -sf ~/dotfiles/.vimrc            ~/.vimrc
	ln -sf ~/dotfiles/global.gitignore  ~/.gitignore
	ln -sf ~/dotfiles/.aspell.conf      ~/.aspell.conf
	ln -sf ~/dotfiles/dircolors-solarized/dircolors.256dark  ~/.dircolors
	ln -sf ~/dotfiles/.screenrc         ~/.screenrc
	ln -sf ~/dotfiles/.emacs            ~/.emacs
	ln -sf ~/dotfiles/.gemrc            ~/.gemrc

git:
	git config --global core.editor vi
	git config --global color.ui auto
	git config --global color.diff auto
	git config --global color.status auto
	git config --global color.branch auto
	git config --global merge.ff false
	git config --global core.autocrlf input
	git config --global core.excludesfile ~/.gitignore
	git config --global core.pager "less -R --tabs=4"
	git config --global ghq.root ~/src

rbenv:
	ln -s ~/dotfiles/rbenv-default-gems  ~/.rbenv/default-gems

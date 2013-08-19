all:
	make ln
	make gitignore

ln:
	ln -s ~/dotfiles/.tmux.conf         ~/.tmux.conf
	ln -s ~/dotfiles/.zshenv            ~/.zshenv
	ln -s ~/dotfiles/.vimrc             ~/.vimrc
	ln -s ~/dotfiles/global.gitignore   ~/.gitignore
	ln -s ~/dotfiles/.aspell.conf       ~/.aspell.conf
	ln -s ~/dotfiles/dircolors-solarized/dircolors.256dark  ~/.dircolors

gitignore:
	git config --global core.excludesfile ~/.gitignore

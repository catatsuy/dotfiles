all:
	make ln
	make gitignore

ln:
	ln -s ~/Documents/dotfiles/.tmux.conf     ~/.tmux.conf
	ln -s ~/Documents/dotfiles/.zshenv        ~/.zshenv
	ln -s ~/Documents/dotfiles/.vimrc         ~/.vimrc
	ln -s ~/Documents/dotfiles/dot.gitignore  ~/.gitignore
	ln -s ~/Documents/dotfiles/.aspell.conf   ~/.aspell.conf

gitignore:
	git config --global core.excludesfile ~/.gitignore

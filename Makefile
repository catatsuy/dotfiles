all:
	make ln
	make gitignore

ln:
	ln -sf ~/dotfiles/.tmux.conf        ~/.tmux.conf
	ln -sf ~/dotfiles/.zshenv           ~/.zshenv
	ln -sf ~/dotfiles/.vimrc            ~/.vimrc
	ln -sf ~/dotfiles/global.gitignore  ~/.gitignore
	ln -sf ~/dotfiles/.aspell.conf      ~/.aspell.conf
	ln -sf ~/dotfiles/dircolors-solarized/dircolors.256dark  ~/.dircolors
	ln -sf ~/dotfiles/.screenrc         ~/.screenrc
	ln -sf ~/dotfiles/.gemrc            ~/.gemrc

gitignore:
	git config --global core.excludesfile ~/.gitignore

rbenv:
	ln -s ~/dotfiles/rbenv-default-gems  ~/.rbenv/default-gems

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

force:
	ln -sf ~/dotfiles/.tmux.conf         ~/.tmux.conf
	ln -sf ~/dotfiles/.zshenv            ~/.zshenv
	ln -sf ~/dotfiles/.vimrc             ~/.vimrc
	ln -sf ~/dotfiles/global.gitignore   ~/.gitignore
	ln -sf ~/dotfiles/.aspell.conf       ~/.aspell.conf
	ln -sf ~/dotfiles/dircolors-solarized/dircolors.256dark  ~/.dircolors

gitignore:
	git config --global core.excludesfile ~/.gitignore

rbenv:
	ln -s ~/dotfiles/rbenv-default-gems  ~/.rbenv/default-gems

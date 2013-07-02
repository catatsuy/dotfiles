all:
	make ln
	make gitignore

ln:
	ln -s .tmux.conf     ~/.tmux.conf
	ln -s .zshenv        ~/.zshenv
	ln -s dot.gitignore  ~/.gitignore
	ln -s .aspell.conf   ~/.aspell.conf

gitignore:
	git config --global core.excludesfile ~/.gitignore

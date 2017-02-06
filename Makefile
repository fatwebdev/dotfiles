vimrc:
	cp ./vim/.vimrc ~/.vimrc
nvimrc:
	cp ./nvim/init.vim ~/.config/nvim/init.vim
nvim_install:
	brew install neovim/neovim/neovim
nvim_python:
	pip2 install --upgrade neovim
	pip3 install --upgrade neovim

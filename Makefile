vimrc:
	cp ./vim/.vimrc ~/.vimrc
nvimrc:
	cp ./nvim/init.vim ~/.config/nvim/init.vim
nvim_install:
	brew install neovim/neovim/neovim
nvim_python:
	pip2 install --upgrade neovim
	pip3 install --upgrade neovim
nvim_plug:
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

set number
set clipboard+=unnamedplus

set expandtab
set tabstop=2
set shiftwidth=2

set list
set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'arakashic/nvim-colors-solarized'

" Initialize plugin system
call plug#end()

" Number of colors
set termguicolors
set t_Co=256
syntax enable
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme solarized
set background=light

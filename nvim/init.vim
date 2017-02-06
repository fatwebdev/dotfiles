set number
set clipboard+=unnamedplus

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'arakashic/nvim-colors-solarized'

" Initialize plugin system
call plug#end()

" Theme
set termguicolors
set t_Co=256
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
" set background=light
colorscheme solarized

syntax enable

" Show whitespace
set list
set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×
" Set tabsize
set expandtab
set tabstop=2
set shiftwidth=2

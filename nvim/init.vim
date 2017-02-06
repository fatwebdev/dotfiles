set number
set clipboard+=unnamedplus

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'arakashic/nvim-colors-solarized'
Plug 'vim-airline/vim-airline'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

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

" NERDTree
nnoremap <Bs> :<C-u>NERDTreeToggle<CR>

let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=0
" Disable display of the 'Bookmarks' label and 'Press ? for help' text
let NERDTreeMinimalUI=1
" Use arrows instead of + ~ chars when displaying directories
let NERDTreeDirArrows=1
let NERDTreeBookmarksFile= $HOME . '/.vim/.NERDTreeBookmarks'

" Deoplete.
let g:deoplete#enable_at_startup = 1

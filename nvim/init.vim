set number
set clipboard+=unnamedplus

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'arakashic/nvim-colors-solarized'
Plug 'vim-airline/vim-airline'

Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'neomake/neomake'

Plug 'othree/html5.vim'
Plug 'digitaltoad/vim-pug'
Plug 'slim-template/vim-slim'

Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'
Plug 'wavded/vim-stylus'
Plug 'hhsnopek/vim-sugarss'

Plug 'moll/vim-node'
Plug 'kchmck/vim-coffee-script'
Plug 'pangloss/vim-javascript'
Plug 'facebook/vim-flow'
Plug 'mxw/vim-jsx'
Plug 'jbgutierrez/vim-babel'
Plug 'mattn/webapi-vim'

Plug 'elzr/vim-json'

" Initialize plugin system
call plug#end()

" Leader key
let mapleader=","

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
" Set column size
set colorcolumn=80
" Wrap long lines
set wrap
" Don't break words when wrapping
" Only available when compiled with the +linebreak feature
set linebreak
" Show ↪ at the beginning of wrapped lines
if has("linebreak")
  let &sbr = nr2char(8618).' '
endif


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

" Neomake
autocmd! BufWritePost,BufEnter * Neomake

" Ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
nnoremap <Leader>p :CtrlP<CR>

" Flow
let g:flow#autoclose = 1

" JSX
let g:jsx_ext_required = 0

" rus to eng
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" <Esc><Esc> Clear the search highlight in Normal mode
nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>

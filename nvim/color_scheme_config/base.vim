set number
set clipboard+=unnamedplus

set expandtab
set tabstop=2
set shiftwidth=2

" Number of colors
set t_Co=256

set list
set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×

" Wrap long lines
set wrap

" Don't break words when wrapping
" Only available when compiled with the +linebreak feature
set linebreak

" Show ↪ at the beginning of wrapped lines
if has("linebreak")
  let &sbr = nr2char(8618).' '
endif

" Number of column to be highlighted
" Only available when compiled with the +syntax feature
set colorcolumn=80

" <Esc><Esc> Clear the search highlight in Normal mode
nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

filetype on

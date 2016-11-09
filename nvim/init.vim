set nocompatible
set runtimepath+=~/dotfiles/nvim/
set hidden
" Backup и swp files
  " Don't create backups
  set nobackup
  " Don't create swap files
  set noswapfile

function! ColorschemeConfig(filename)
  let l:filename = "color_scheme_config/" . a:filename . ".vim"
  exec "runtime " . l:filename
endfunction

function! PluginConfig(filename)
  let l:filename = "plugin_config/" . a:filename . ".vim"
  exec "runtime " . l:filename
endfunction

function! LangConfig(filename)
  let l:filename = "lang_config/" . a:filename . ".vim"
  exec "runtime " . l:filename
endfunction

let mapleader=","

filetype off

augroup vimrcEx
  autocmd!

  call ColorschemeConfig("base")
  call ColorschemeConfig("status_line")

  call PluginConfig("plug")
  call PluginConfig("NERDTree")
  call PluginConfig("neomake")
  call PluginConfig("emmet")
  call PluginConfig("ctrlp")
  call PluginConfig("crunch")
  call PluginConfig("deoplete")

  call LangConfig("jsx")
augroup END

" colorscheme wwdc16
syntax enable
set background=dark
colorscheme solarized

filetype plugin indent on

set foldmethod=manual

let g:UltiSnipsUsePythonVersion = 3

" Set async completion.
"let g:monster#completion#rcodetools#backend = "async_rct_complete"

" With deoplete.nvim
"let g:monster#completion#rcodetools#backend = "async_rct_complete"

aug omnicomplete
  au!
  au FileType css,sass,scss,stylus,less setl omnifunc=csscomplete#CompleteCSS
  au FileType html,htmldjango,jinja,markdown setl omnifunc=emmet#completeTag
  au FileType javascript,jsx setl omnifunc=tern#Complete
  au FileType python setl omnifunc=pythoncomplete#Complete
  au FileType xml setl omnifunc=xmlcomplete#CompleteTags
aug END

let g:deoplete#sources#omni#input_patterns = {
\   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
\}

let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

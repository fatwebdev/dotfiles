" PlugInstall
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

  " NerdTree
  Plug 'https://github.com/scrooloose/nerdtree.git'

  " wwdc16 Colorscheme
  " Plug 'lifepillar/vim-wwdc16-theme'
  Plug 'altercation/vim-colors-solarized'

  Plug 'editorconfig/editorconfig-vim'

  Plug 'sjl/tslime.vim'

  " Neomake
  Plug 'neomake/neomake'
  Plug 'jaawerth/nrun.vim'

  " Ctrl p
  Plug 'ctrlpvim/ctrlp.vim'

  " Calc
  Plug 'arecarn/crunch.vim'

  " Git
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'

  " Auto close brackets
  Plug 'jiangmiao/auto-pairs'

  " Complete
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  " Plug 'osyo-manga/vim-monster'
  Plug 'Shougo/context_filetype.vim'
  Plug 'Shougo/neopairs.vim'

  " Snips
  Plug 'sirver/ultisnips'
  " Plug 'Shougo/neosnippet.vim'
  " Plug 'honza/vim-snippets'
  Plug 'ervandew/supertab'

  " Search
  Plug 'mileszs/ack.vim'

  " Ruby
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-endwise'

  " Babel
  Plug 'jbgutierrez/vim-babel'
  Plug 'mattn/webapi-vim'

  " Clojure
  Plug 'guns/vim-clojure-highlight'
  Plug 'guns/vim-clojure-static'
  Plug 'guns/vim-slamhound'
  Plug 'tpope/vim-classpath'
  Plug 'tpope/vim-fireplace'
  Plug 'tpope/vim-salve'
  Plug 'venantius/vim-eastwood'
  Plug 'venantius/vim-cljfmt'
  Plug 'vim-scripts/paredit.vim'

  " Haskell
  Plug 'neovimhaskell/haskell-vim'

  " JSX
  Plug 'mxw/vim-jsx'

  " JSON
  Plug 'elzr/vim-json'

  " JavaScript
  Plug 'pangloss/vim-javascript'
  Plug 'facebook/vim-flow'

  " CoffeScript
  Plug 'kchmck/vim-coffee-script'

  " Node
  Plug 'moll/vim-node'

  " Emmet
  Plug 'mattn/emmet-vim'

  " HTML
  Plug 'othree/html5.vim'

  " Slim
  Plug 'slim-template/vim-slim'

  " Jade
  Plug 'digitaltoad/vim-pug'

  " CSS
  " Plug 'lepture/vim-css'

  " Stylus
  Plug 'wavded/vim-stylus'

  " SugarSS
  Plug 'hhsnopek/vim-sugarss'

  " Elm
  Plug 'lambdatoast/elm.vim'

  " PHP
  Plug 'StanAngeloff/php.vim'

call plug#end()

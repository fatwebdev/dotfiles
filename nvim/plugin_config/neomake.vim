if findfile('.eslintrc', '.;') ==# ''
  let g:neomake_javascript_enabled_makers = ['standard', 'eslint']
endif

let g:neomake_jsx_enabled_makers = ['eslint']
let g:neomake_javascript_enabled_makers = ['eslint']
" let g:neomake_verbose = 3

autocmd! BufWritePost,BufEnter * Neomake
nnoremap <silent><leader>nc :ll<CR>
nnoremap <silent><leader>nn :lnext<CR>
nnoremap <silent><leader>np :lprev<CR>

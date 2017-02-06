"if findfile('.eslintrc', '.eslintrc.js', '.;') ==# ''
"  let g:neomake_javascript_enabled_makers = ['standard', 'eslint', 'flow']
"endif
"
"let g:neomake_jsx_enabled_makers = ['eslint', 'flow']
"let g:neomake_javascript_enabled_makers = ['eslint', 'flow']
" let g:neomake_verbose = 3

" let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/eslint'

let g:neomake_javascript_eslint_exe = nrun#Which('eslint')
let g:neomake_javascript_enabled_makers = ['eslint']

autocmd! BufWritePost,BufEnter * Neomake
nnoremap <silent><leader>nc :ll<CR>
nnoremap <silent><leader>nn :lnext<CR>
nnoremap <silent><leader>np :lprev<CR>

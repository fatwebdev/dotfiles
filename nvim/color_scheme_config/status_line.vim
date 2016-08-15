" Status line
function! FileSize()
	let bytes = getfsize(expand("%:p"))
	if bytes <= 0
		return ""
	endif
	if bytes < 1024
		return bytes . "B"
	else
		return (bytes / 1024) . "K"
	endif
endfunction

function! CurDir()
	return expand('%:p:~')
endfunction

" Last window always has a status line
set laststatus=2
" Content of the status line
" Only available when compiled with the +statusline feature
set statusline=\ 
" Buffer number
set statusline+=%n:\ 
" File name
set statusline+=%t
" Modified flag
set statusline+=%m
set statusline+=\ \ 
" Paste mode flag
set statusline+=%{&paste?'[paste]\ ':''}
" File encoding
set statusline+=%{&fileencoding}
" Type of file
" Only available when compiled with the +autocmd feature
set statusline+=\ \ %Y
" Column number
set statusline+=\ %3.3(%c%)
" Current line / number of lines in buffer
set statusline+=\ \ %3.9(%l/%L%)
" Percentage through file in lines
" set statusline+=\ \ %2.3p%%
" File size
set statusline+=\ \ %{FileSize()}
" Truncate here if line is too long
set statusline+=%<
" Path to the file
set statusline+=\ \ CurDir:%{CurDir()}

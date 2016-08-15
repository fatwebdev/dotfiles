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

augroup vimrcEx
	autocmd!

	call ColorschemeConfig("base")
	call ColorschemeConfig("status_line")

	call PluginConfig("plug")
	call PluginConfig("NERDTree")
	call PluginConfig("neomake")

	call LangConfig("jsx")
augroup END

let mapleader=","

colorscheme wwdc16

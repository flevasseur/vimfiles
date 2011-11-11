"statusline
set laststatus=2
set statusline=  " clear the statusline for when vimrc is reloaded

function! GetCWD()
	return expand(":pwd")
endfunction

function! IsHelp()
	return &buftype=='help'?' (help) ':''
endfunction

function! GetName()
	return expand("%:t")==''?'<none>':expand("%:t")
endfunction

set statusline=%3*[%1*%{GetName()}%3*]%3*
set statusline+=%7*%{&modified?'\ (modified)':'\ '}%3*
set statusline+=%{fugitive#statusline()}
set statusline+=%5*%{IsHelp()}%3*
set statusline+=%6*%{&readonly?'\ (read-only)\ ':'\ '}%3*
set statusline+=%3*fenc:%4*%{strlen(&fenc)?&fenc:'none'}%3*\ \ 
set statusline+=%3*ff:%4*%{&ff}%3*\ \ 
set statusline+=%3*ft:%4*%{strlen(&ft)?&ft:'<none>'}\ \ 
set statusline+=%3*tab:%4*%{&ts}
set statusline+=%3*,%4*%{&sts}
set statusline+=%3*,%4*%{&sw}
set statusline+=%3*,%4*%{&et?'et':'noet'}\ \ 
set statusline+=%<%3*pwd:%4*%{getcwd()}\ \ 
set statusline+=%9*%=
set statusline+=%3*col:%4*%c\ \ 
set statusline+=%3*line:%4*%l\ \ 
set statusline+=%3*total:%4*%L\ 



" Set pathogen
"call pathogen#runtime_append_all_bundles()
call pathogen#infect()
call pathogen#helptags()

" This must be first, because it changes other options as side effect
set nocompatible

" change the mapleader from \ to ,
let mapleader=","

" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>wq :wq!<cr>

" It hides buffers instead of closing them. This means that you can have unwritten changes to a file and open a new file using :e, without being forced to write or undo your changes first. Also, undo buffers and marks are preserved while the buffer is open. This is an absolute must-have.
set hidden

set nowrap        	" don't wrap lines
set tabstop=4     	" a tab is four spaces
set backspace=indent,eol,start
                  	" allow backspacing over everything in insert mode
set autoindent    	" always set autoindenting on
set copyindent    	" copy the previous indentation on autoindenting
set number        	" always show line numbers
set shiftwidth=4  	" number of spaces to use for autoindenting
set shiftround    	" use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     	" set show matching parenthesis
set ignorecase    	" ignore case when searching
set smartcase     	" ignore case if search pattern is all lowercase,
                  	"    case-sensitive otherwise
set smarttab      	" insert tabs on the start of a line according to
                  	"    shiftwidth, not tabstop
set hlsearch      	" highlight search terms
set incsearch     	" show search matches as you type

syntax on		 	" highlight syntax

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup		" No backup
set noswapfile		" No swap file

" Copy and paste with style. F2 to copy without having problem with tabs.
set pastetoggle=<F2>

" This line will make Vim set out tab characters, trailing whitespace and invisible spaces visually, and additionally use the # sign at the end of lines to mark lines that extend off-screen.
set nowrap
set sidescroll=4
set sidescrolloff=14
set listchars=precedes:←,extends:→,nbsp:◊,trail:⠿,eol:\ ,tab:●·
set list
" In some files, like HTML and XML files, tabs are fine and showing them is really annoying. Disabled them.
autocmd filetype html,xml set listchars-=tab:>.

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


" Move the cursor to its last location in the file 
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" Lusty-juggler
if exists(':LustyJuggler')
	nmap <Silent> <Leader>l :LustyJuggler<CR>
endif

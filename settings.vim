" This must be first, because it changes other options as side effect
set nocompatible

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
set listchars=precedes:←,extends:→,nbsp:◊,trail:⠿,eol:\ ,tab:»_
set list
" In some files, like HTML and XML files, tabs are fine and showing them is really annoying. Disabled them.
autocmd filetype html,xml set listchars-=tab:>.

" Move the cursor to its last location in the file. Make sure you have permission on your ~.viminfo file!
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif


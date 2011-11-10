" change the mapleader from \ to ,
let mapleader=","

" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>wq :wq!<cr>

" Easy split navigation
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
noremap <C-K> <C-W>k
noremap <C-J> <C-W>j

" Lusty-juggler
if exists(':LustyJuggler')
	nmap <Silent> <Leader>l :LustyJuggler<CR>
endif



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

" Disable arrow key
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Since arrow key is disabled on VISUAL mode, set mapping to navigate in INSERT mode
imap <c-h> <left>
imap <c-j> <down>
imap <c-k> <up>
imap <c-l> <right>

" Lusty-juggler
nmap <Leader>l :LustyJuggler<CR>


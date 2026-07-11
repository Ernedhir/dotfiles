nnoremap <F5> :silent source $MYVIMRC<CR>
nnoremap <S-F5> :source $MYVIMRC<CR>

let mapleader = " "

set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber
set pastetoggle=<F4>
set termguicolors

syntax on
filetype on
filetype plugin on
filetype indent on

colorscheme evening
hi Normal guibg=NONE ctermbg=NONE
hi NormalNC guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

set belloff=all

nnoremap <C-j> :m .+1<CR>
nnoremap <C-k> :m .-2<CR>
vnoremap <C-j> :m '>+1<CR>gv
vnoremap <C-k> :m '<-2<CR>gv
vmap <S-Tab> <LT>gv
vmap <Tab> >gv
"nmap <C-s> dawwP
"nnoremap <silent> gw "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>:nohlsearch<CR>
"nnoremap <silent> gr "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o>/\w\+\_W\+<CR><c-l>:nohlsearch<CR>
nmap <C-s> "pdiwdwep"pp
"For swapping two words

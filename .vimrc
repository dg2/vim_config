syntax on
filetype indent plugin on
set background=dark

" Add support for Pig syntax
augroup filetypedetect
 au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
augroup END

execute pathogen#infect()

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

let mapleader = ","
let g:mapleader = ","

set so=7

set wildmenu
set wildignore=*.o,*.pyc,*~

set ruler

set cmdheight=2

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set hlsearch
set incsearch

set lazyredraw

set magic
set noerrorbells
set t_vb=
set tm=500

set autochdir

" Emacs style bindings
imap <C-a> <esc>0i
imap <C-e> <esc>$A
imap <C-k> <esc>d$i

" Key bindings for moving between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Fast access to TlistToggle
nmap P :TlistToggle<CR>
nmap <silent> T :NERDTreeToggle<CR>

set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>

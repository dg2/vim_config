syntax on
filetype indent plugin on
set background=dark

" Add support for Pig syntax
augroup filetypedetect
 au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
augroup END

" Interpret Hive files as SQL
au BufNewFile,BufRead *.hql set filetype=sql

execute pathogen#infect()

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

" Jedi stuff
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_on_dot = 0

" Configure python-mode to play nice with Jedi
let g:pymode_rope = 0
let g:pymode_folding = 0

" Let supertab decide the default completion type
let g:SuperTabDefaultCompletionType = "context"

" Buffer navigation using Ctrl+Tab
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1

" Close vim if the only open window is the Typetags window
let Tlist_Exit_OnlyWindow = 1

" Emacs style bindings
imap <C-a> <esc>^i
imap <C-e> <esc>$A
imap <C-k> <esc>d$i
nmap <C-a> ^
nmap <C-e> $
nmap <C-k> d$

" Key bindings for moving between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>

" Fast access to TlistToggle
map <F2> :TlistToggle<CR>
" Fast access to NERDTree
nmap <silent> T :NERDTreeToggle<CR>
 
" Status line stuff
set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P


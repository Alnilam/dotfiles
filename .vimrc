" start up pathogen
call pathogen#infect() 

" basics
set number
set wildmode=longest,list,full
set wildmenu
set tabstop=4
set shiftwidth=4
set visualbell

set directory=$HOME/.vim-tmp,.
set backupdir=$HOME/.vim-tmp,.

set nocompatible
syntax enable
filetype plugin on
filetype indent on

colorscheme desert

set printoptions=syntax:y,paper:letter,wrap:y

" key remappings
let mapleader = ","
inoremap jk <Esc>

nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
"" maybe go back and change this one
nnoremap <space> za
" end key remappings

set diffopt=filler,vertical

" SuperTab settings
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

set laststatus=2
set t_Co=256

set statusline=%-3.3n   "buffer number
set statusline+=\ %t    "tail of the filename
set statusline+=\ [%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %p%% "percent through file

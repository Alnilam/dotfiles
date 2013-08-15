" start up pathogen
call pathogen#infect() 

" basics
set number
set wildmode=longest,list,full
set wildmenu
set tabstop=4
set shiftwidth=4
set expandtab
set visualbell

set directory=$HOME/.vim-tmp,.
set backupdir=$HOME/.vim-tmp,.

set nocompatible
syntax enable
filetype plugin on
filetype indent on

"colorscheme desert

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

" powerline settings
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif


hi StatusLine ctermbg=black ctermfg=green
hi User1 ctermfg=red
hi User2 ctermfg=172 "orange
hi User3 ctermfg=11  "yellow
hi User4 ctermfg=10  "green
hi User5 ctermfg=14  "cyan
hi User6 ctermfg=12  "blue
hi User7 ctermfg=93  "purple
hi User8 ctermfg=white

set statusline=
set statusline+=%1*\ %n\ %*             "buffer number
set statusline+=%5*\ %t\ %*          "tail of the filename
set statusline+=%4*[%3*%{strlen(&fenc)?&fenc:'none'}%4*, "file encoding
set statusline+=%3*%{&ff}%4*]%5*     "file format
set statusline+=%h                   "help file flag
set statusline+=%1*%m%5*             "modified flag
set statusline+=%1*%r%5*             "read only flag
set statusline+=%6*%y%5*             "filetype
set statusline+=%=                   "left/right separator
set statusline+=%7*[%8*%{fugitive#statusline()}%7*]\ \ %5*"statusline for git
set statusline+=%c%5*,\              "cursor column
set statusline+=%2*%l%5*/%L\         "cursor line/total lines
set statusline+=%4*(%2*%p%%%4*)      "percent through file

set number
set wildmode=longest,list,full
set wildmenu
set tabstop=4
set shiftwidth=4
set visualbell

set nocompatible
syntax enable
filetype plugin on
filetype indent on

colorscheme desert

set printoptions=syntax:y,paper:letter,wrap:y

function! SuperCleverTab()
    if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
        return "\<Tab>"
    else
        if &omnifunc != ''
            return "\<C-X>\<C-O>"
        elseif &dictionary != ''
            return "\<C-K>"
        else
            return "\<C-N>"
        endif
    endif
endfunction

" key remappings
let mapleader = ","
inoremap jk <Esc>
vnoremap jk <Esc>

nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

inoremap <Tab> <C-R>=SuperCleverTab()<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
"" maybe go back and change this one
nnoremap <space> za
" end key remappings

set diffopt=filler,vertical

" python from powerline.bindings.vim import source_plugin; source_plugin()

set laststatus=2
set t_Co=256
" let g:Powerline_symbols = 'unicode'


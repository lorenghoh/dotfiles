syntax enable

set mouse=a                     " Enable mouse support
set number                      " Show line number
set hidden                      " Have more than one unsaved buffers
set incsearch                   " Incremental search, hit `<CR>` to stop.
set cursorline                  " Highlight current line
set ruler                       " Shows the current line number
set ignorecase                  " Ignore case when searching
set wildmode=longest:full       " Fix tab completion behaviour
set splitright                  " New split panes to the right
set autoread                    " Refresh when file changes on disk
set nobackup
set nowritebackup

set expandtab                   " Use spaces instead of tabs
set tabstop=4                   " Set tab width to 4 spaces
set shiftwidth=4
set softtabstop=4

" Vim-plug section
call plug#begin('~/.vim/plugged')

    Plug 'tpope/vim-sensible'

    Plug 'junegunn/fzf'

    Plug 'dense-analysis/ale'

    " Python
    Plug 'Vimjas/vim-python-pep8-indent'

    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Colour theme
    Plug 'junegunn/seoul256.vim'

call plug#end()

" Colour theme setup
let g:seoul256_background = 236
colorscheme seoul256

let g:airline_theme='base16_eighties'

" Keybindings
" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Redraw screen and remove search highlighting
nnoremap <silent> <C-l> :nohl<CR>

" Enable Airline
let g:airline#extensions#ale#enabled = 1
let g:python3_host_prog = "/users/loh/.local/conda/bin/python3"

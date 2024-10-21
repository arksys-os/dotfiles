" General Settings
set nocompatible              " Disable compatibility to old-time vi
set showmatch                 " Show matching brackets
set ignorecase                " Case insensitive searching
set mouse=a                   " Enable mouse support
set clipboard=unnamedplus     " Use system clipboard
set number                    " Show line numbers
set relativenumber            " Show relative line numbers
set cursorline                " Highlight current line
set ttyfast                   " Speed up scrolling in Vim
set lazyredraw                " Don't redraw while executing macros

" Search Settings
set hlsearch                  " Highlight search results
set incsearch                 " Incremental search

" Indentation Settings
set tabstop=4                 " Number of columns occupied by a tab
set softtabstop=4             " See multiple spaces as tabstops
set expandtab                 " Converts tabs to white space
set shiftwidth=4              " Width for autoindents
set autoindent                " Indent a new line the same amount as the line just typed

" Appearance
set wildmode=longest,list     " Get bash-like tab completions
set cc=80                     " Set an 80 column border for good coding style
set splitright                " Open new splits to the right
set splitbelow                " Open new splits below

" Syntax and Filetype
filetype plugin indent on     " Enable filetype-specific plugins and indentation
syntax on                     " Enable syntax highlighting

" Plugin Management
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim'
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Color Schemes
if (has('termguicolors'))
  set termguicolors
endif
colorscheme dracula

" Mappings
" Move lines or visually selected blocks
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Move split panes
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" Move between panes
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Custom mappings
inoremap ii <Esc>
inoremap jk <Esc>
inoremap kj <Esc>
vnoremap jk <Esc>
vnoremap kj <Esc>

" Open file in a vertical split
nnoremap gf :vert winc f<CR>

" Copy filepath to clipboard
nnoremap <silent> yf :let @+=expand('%:p')<CR>

" Copy pwd to clipboard
nnoremap <silent> yd :let @+=expand('%:p:h')<CR>

" Jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

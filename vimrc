"" pathogen start
execute pathogen#infect()

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Misc
set number                      " Show line numbers

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
set autoindent                  " Autoindent

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set wrapscan                    " Start from top when reaching end in search

"" Solarized
set background=dark
"" colorscheme solarized

"" Leader
let mapleader=","

map <leader>n :NERDTreeToggle<cr> "" Toggle NerdTREE
map <leader>sv :so $MYVIMRC<cr>   "" restart VimRC

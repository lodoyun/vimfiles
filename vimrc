"" pathogen start
execute pathogen#infect()

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
""" set showcmd                     " display incomplete commands
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
set wrapscan                    " Start from top when reaching end in searcd
"" Solarized
set background=dark
if has('gui_running')
    colorscheme torte
endif

"" setting backup and swap dirs
set backupdir=/tmp
set directory=/tmp

"" Leader
let mapleader=","

"" mappings
"" restart VimRC
map <leader>sv :so $MYVIMRC<CR>
"" ,, opens previous buffer
nnoremap <leader><leader> <c-^>
"" %% is expanded to current directory of the file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
"" Command-t mappings: ,f finds in project. ,F finds in the directory of the file
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

"" Remapping autocomplete in insert mode
inoremap <C-space> <C-n>

""TagBar
map <leader>rt :TagbarToggle<cr>

""ToggleWrap
map <leader>tw :set wrap!<cr>

""Tabnext and tab previous
map <D-S-Right> :tabNext<cr>
map <D-S-Left> :tabprevious<cr>

""Git actions: status and diff
map <leader>gs :Gstatus<cr>
map <leader>gd :Gdiff<cr>

"" splitting preferences
set splitright
set splitbelow


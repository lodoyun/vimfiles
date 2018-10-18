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
"" Coloscheme
colorscheme one
set background=dark

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
map <leader>f <C-P>
let g:ctrlp_working_path_mode = 'a'

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

""Spelling and wrap, english and spanish
map <leader>es :set wrap<cr> :set spell<cr> :set spelllang=es<cr>
map <leader>us :set wrap<cr> :set spell<cr> :set spelllang=en_us<cr>

"" splitting preferences
set splitright
set splitbelow
"" filetype (for javascript)
filetype plugin indent on
set guifont=Monaco:h10

let g:netrw_browse_split = 0
"" Default to tree style
let g:netrw_liststyle = 3
"" Syntastic
""set statusline+=%#warningmsg#
""set statusline+=%{SyntasticStatuslineFlag()}
""set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" let g:syntastic_cpp_cpplint_exec = 'cpplint'
" let g:syntastic_cpp_cpplint_args = '--filter=-legal/copyright,-build/include --linelength=120'
" let g:syntastic_cpp_checkers = ['cpplint']
" let g:syntastic_javascript_eslint_exec = 'eslint' " this needs to point to a valid binary
" let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['javascript', 'cpp'],'passive_filetypes': [] }
" map <leader>sc :SyntasticCheck<cr>
" map <leader>ss :SyntasticToggleMode<cr>

"" ale
let g:ale_echo_msg_format = '%linter%: %s'
let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'cpp': ['cpplint'],
      \ 'python': ['flake8']
      \}
let g:ale_cpp_cpplint_options = '--filter=-legal/copyright,-build/include --linelength=120'
""" IndentGuides
"" set ts=4 sw=4 et
let g:intent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

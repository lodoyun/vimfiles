Lodoyun's vim configuration
==========================

My configuration uses [Pathogen](https://github.com/tpope/vim-pathogen) and git submodules.

## Installation:

Prerequisites: ruby, git.

1. Move your existing configuration somewhere else:  
   `mv ~/.vim* ~/.gvim* my_backup`
2. Clone this repo into ".vim":  
   `git clone https://github.com/mislav/vimfiles ~/.vim`
3. Go into ".vim" and run "rake":  
   `cd ~/.vim && rake`

This will install "~/.vimrc" and "~/.gvimrc" symlinks that point to
files inside the ".vim" directory.

## Features:

### `vimrc`

* 2 spaces, no tabs
* incremental, case-insensitive search

### NERDTree
### Solarized

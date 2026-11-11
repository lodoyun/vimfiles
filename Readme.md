Lodoyun's Vim configuration
===========================

Plugins are managed by [vim-plug](https://github.com/junegunn/vim-plug). The
plugin list and pinned upstream commit SHAs are in `vimrc`; plugins are
installed in `~/.vim/plugged`. The manager and installed plugin checkouts are
generated artifacts and are ignored by Git.

## Installation

Install vim-plug once:

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Then start Vim with this configuration, run `:PlugInstall`, and restart Vim.

To update a plugin, remove its `commit` pin from `vimrc`, run `:PlugUpdate`,
then pin the resulting revision again. For example, get the installed revision
with `git -C ~/.vim/plugged/vim-fugitive rev-parse HEAD`.

## Features

### `vimrc`

* 2 spaces, no tabs
* incremental, case-insensitive search

### Plugins

ALE, ack.vim, CtrlP, Fugitive, Tagbar, vim-airline, vim-commentary,
vim-colors-solarized-black, vim-indent-guides, vim-multiple-cursors, vim-one,
and vim-surround.

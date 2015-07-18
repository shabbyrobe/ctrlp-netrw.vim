# ctrlp-netrw

This CtrlP extension allows you to open netrw in a specific directory. Works
only in Unix-like operating systems.

It is a modified version of Voronkovich Oleg's
[ctrlp-nerdtree.vim](https://github.com/voronkovich/ctrlp-nerdtree.vim) plugin.

## How to use

``` vim
:CtrlPNetrw
```

By default plugin ignore hidden directories. You change this by adding:

```vim
let g:ctrlp_netrw_show_hidden = 1
```

to your .vimrc

## Installation

### Using [pathogen](https://github.com/tpope/vim-pathogen)

``` sh
git clone git://github.com/shabbyrobe/ctrlp-netrw.vim ~/.vim/bundle/ctrlp-netrw.vim
```

### Using [vundle](https://github.com/gmarik/vundle)

Add to vimrc:

``` vim
Bundle 'shabbyrobe/ctrlp-netrw.vim'
```

## License

Copyright (c) Voronkovich Oleg, Blake Williams.  Distributed under the same
terms as Vim itself (in accordance with the license of `ctrlp-nerdtree.vim`).
See `:help license`.


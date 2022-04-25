# vim-jaksel

jaksel programming language plugin for (n)vim

## Features

- Syntax Highlighting for:
    - [x] Operator
    - [x] Variable
    - [x] Boolean
    - [x] Built-in Function
    - [x] String
    - [x] Condition
    - [x] Loop
    - [x] Function
    - [x] Function's Arguments
    - [x] Comment
    - [x] Exception
    - [x] Special Character

- Run current jaksel file using `:JakselRun` command

- Install jaksel interpreter using `:JakselInstall` command

- More Coming Soon...

## Installation

Installation can be done using any plugin manager, below are some of the helper lines for popular plugin managers:

- [Vim 8 Package](http://vimhelp.appspot.com/repeat.txt.html#packages)

```
git clone https://github.com/cocatrip/vim-jaksel.git ~/.vim/pack/plugins/start/vim-jaksel
```

- [Neovim Package](https://neovim.io/doc/user/repeat.html#packages)

```
git clone https://github.com/cocatrip/vim-jaksel.git ~/.local/share/nvim/site/pack/plugins/start/vim-jaksel
```

- [Pathogen](https://github.com/tpope/vim-pathogen)

```
git clone https://github.com/cocatrip/vim-jaksel.git ~/.vim/bundle/vim-jaksel
```

- [vim-plug](https://github.com/junegunn/vim-plug)

```
Plug 'cocatrip/vim-jaksel'
```

- [packer.nvim](https://github.com/wbthomason/packer.nvim)

```
use 'cocatrip/vim-jaksel'
```

Then, if you haven't install the interpreter, you can install it by simply running `:JakselInstall`

This will install the `jaksel` interpreter in your `~/.local/bin` directory, so make sure to add `~/.local/bin` to your `$PATH`

## Configuration

You can map the `:JakselRun` function in your config file

### Neovim

```
vim.api.nvim_set_keymap("n", "<F9>", "<cmd>JakselRun<CR>", { silent = true })
```

### Vim

```
noremap <F9> :JakselRun<CR>
```

" Use vim settings, rather then vi settings (much better!)
" This must be first, because it changes other options as a side effect.
set nocompatible

" Use pathogen to easily modify the runtime path to include all plugins under
" the ~/.vim/bundle directory
filetype off                    " force reloading *after* pathogen loaded
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on       " enable detection, plugins and indenting in one step
syntax on
" Color-scheme
set background=dark
colorscheme solarized           " awesome colorscheme
" Editing behaviour {{{
set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set number                      " show line numbers
set showcmd                     " show command in bottom bar
set cursorline                  " highlight current line
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set showmatch                   " set show matching parenthesis
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
                                " case-sensitive otherwise
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab  "For indents that consist of 4 space characters but are entered with the tab key

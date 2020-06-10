" Maintained by Clovis Mugaruka <clovis.mugaruka@gmail.com>


" Use vim settings, rather then vi settings (much better!)
" This must be first, because it changes other options as a side effect.
set nocompatible

filetype off                    " force reloading *after* pathogen loaded
filetype plugin indent on       " enable detection, plugins and indenting in one step

" Make status bar visible in 'standard' mode
set laststatus=2

" File indentation generic
set sw=4
set ts=4

" Make vim indent 2 spaces for ruby and scala file only
" -- ruby --
:autocmd Filetype ruby set softtabstop=2
:autocmd Filetype ruby set sw=2
:autocmd Filetype ruby set ts=2
" -- scala --
:autocmd Filetype scala set softtabstop=2
:autocmd Filetype scala set sw=2
:autocmd Filetype scala set ts=2

" -- NerdTree --
:autocmd VimEnter * NERDTree    " enable NerdTree when opening a file with vim - assumes NerdTree plugin is installed
"  let NERDTreeShowHidden=1     " uncomment for it to take effect

syntax on
" Color-scheme
set background=dark
colorscheme hybrid_material     " awesome colorscheme
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
set mouse=a                     " navigate using mouse
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab  "For indents that consist of 4 space characters but are entered with the tab key

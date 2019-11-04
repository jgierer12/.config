" minimal neovim config
" from https://gist.github.com/seven1m/438eb9b483472405137b12787ae7817d

filetype plugin on                " load plugins based on file type

syntax on                         " enable syntax highlighting

filetype indent on                " load indent settings based on file type
set shiftwidth=2                  " number of spaces to use for indenting
set softtabstop=2                 " number of spaces to use when inserting a tab
set tabstop=2                     " show tabs as 2 spaces
set expandtab                     " convert tabs into spaces
set autoindent                    " copy indent from previous line

set nowrap                        " don't wrap long lines

set ignorecase smartcase          " search case-insensitively unless uppercase characters are used

set hidden                        " allow unsaved buffers to be hidden

set ruler                         " show cursor line and column in status
set showcmd                       " show current command in status line

set notimeout                     " disable timeout for finishing a mapping key sequence

set visualbell                    " visual bell = no sounds

set undofile                      " store undo info in a file
set undodir=~/.vim-undo           " where to store undo info

set dir=~/tmp,/tmp                " store swap files in $HOME/tmp or /tmp, whichever is available

set scrolloff=3                   " keep 3 lines visible above/below the cursor when scrolling
set sidescrolloff=7               " keep 7 characters visible to the left/right of the cursor when scrolling
set sidescroll=1                  " scroll left/right one character at a time

set splitbelow splitright         " put new windows below or to the right

let mapleader=" "                 " set <space> as the leader for mappings
nnoremap <space> <nop>

nnoremap <leader>ww :w<CR>
nnoremap <leader>qq :q!<CR>
nnoremap <leader>wq :wq<CR>

if has("nvim")                    " only works in neovim
  set inccommand=split            " show substitutions incrementally
endif

set relativenumber

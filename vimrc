set nocompatible               " be iMproved
filetype off                   " required by vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
source ~/.vim/vundles


filetype plugin indent on     " required! should be here at this line otherwise syntaxe for coffee script won't work
syntax on


" ================ Basic Settings  =================

"let mapleader = '\'
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set hidden
set laststatus=2                "It enabled powerline to be present always

" ================ Search Settings  =================

set incsearch        "Find the next match as we type the search
set hlsearch         "Hilight searches by default
set viminfo='100,f1  "Save up to 100 marks, enable capital marks

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================= COPY to ClipBoard ==============
" In visual mode, use Y to copy to system clipboard
vnoremap Y "*y

" " In normal mode, do the same with the current line
nnoremap Y "*yy
set clipboard=unnamed           "To copy to clipboard

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margin
set sidescrolloff=15
set sidescroll=1

"============== IGNORE ctrlP  ======================

let g:ctrlp_custom_ignore ='\.git$\|\.DS_Store$\|.*\.class$|node_modules\|DS_Store|vendor/bundle'

"============== THEME  ===========================
"
set background=dark
colorscheme badwolf 

"============== AIR LINE ===========================

let g:airline_powerline_fonts = 1
let g:airline_theme = 'badwolf'
let g:airline_section_warning = ''
let g:airline_inactive_collapse = 0

"Colors for indent
hi IndentGuidesOdd  ctermbg=white
hi IndentGuidesEven ctermbg=lightgrey

source ~/.vim/alias

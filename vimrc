syntax on

set nocp
set background=dark
set shiftwidth=2
set tabstop=2
set smartindent
set expandtab

set noeb                      " no error bell


" let mapleader = ","           " Remap the leader to be , instead of \

" wrap lines
" VIM Info File
set vi=%,'50
set vi+=\"100,:100
set vi+=n~/.viminfo


set ruler                     " show the line number on the bar
set autoread                  " watch for file changes
set number                    " line numbers

set whichwrap+=<,>,[,]

" searching
set diffopt=filler,iwhite     " ignore all whitespace and sync
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" MacVIM stuff
if has("gui_macvim")
  colorscheme jellybeans
  set transparency=2
  set go-=T
  set lines=45
  set guifont=Inconsolata:h14.00
  " set relativenumber
  set undofile
endif


" From http://stevelosh.com/blog/2010/09/coming-home-to-vim/
filetype off
filetype plugin indent on

set modelines=0
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
"set cursorline  " show the current line
set ttyfast
set backspace=indent,eol,start
set laststatus=2

set wrap
set textwidth=79
set formatoptions=qrn1
" set colorcolumn=85

set list
set listchars=tab:▸\ ,eol:¬

" Movement - Turn off the arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Custom Commands
" Open this file in a vertical window next to this one
nnoremap <leader>w <C-w>v<C-w>l

" Move to between buffer windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" load .vim/bundles
call pathogen#runtime_append_all_bundles()

"

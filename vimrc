set nocompatible
autocmd!
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on
syntax on


set shiftwidth=2
set tabstop=2
set smartindent
set expandtab

set noeb                      " no error bell
set visualbell                " visual error bell
set cul                       " show cursor line

" wrap lines
" VIM Info File
set vi=%,'50
set vi+=\"100,:100
set vi+=n~/.viminfo


set ruler                     " show the line number on the bar
set autoread                  " watch for file changes
set number                    " line numbers

set whichwrap+=<,>,[,]

" I hate swap files
set nobackup
set noswapfile

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
  set background=dark
  colorscheme tmtwilight
  "set transparency=2
  set go-=T
  set lines=50
  set guifont=Meslo\ LG\ M\ DZ:h12
  set undofile
  let macvim_hig_shift_movement = 1
else
  highlight clear
  set background=light
endif

set modelines=0
set encoding=utf-8
set scrolloff=3       " Keep 3 lines on the screen for context when scrolling
set noautoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
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

" Movement is disabled by shift-movers
" and replaced by text movement


" Mappings to move across linewraps in a nicer way
nnoremap j gj
nnoremap k gk

" Custom Window Commands
" Open this file in a vertical window next to this one
nnoremap <leader>w <C-w>v<C-w>l

" Move to between buffer windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" TextMate like Line Commenting (depends on NERDCommenter)
imap <D-/> <ESC>\c<space>i
nmap <D-/> \c<space>
vmap <D-/> \c<space>

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
if exists('*HexHighlight()')
  nmap <leader>h :call HexHighlight()<Return>
endif
  
" NERDTree helper
" Open the current file in NERDTree
:nmap <leader>o :NERDTreeFind<CR>

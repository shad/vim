" 
" .vimrc
" This is my VIM configuration.  There are many like it, but this one is mine.
" Shad Reynolds
" http://github.com/shad/vim
"

" Standard setup & pathogen integration
set nocompatible
autocmd!
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on
syntax on

" I like command-t to be at the top of the window (not the bottom)
let g:CommandTMatchWindowAtTop=1

" Tab stuff
set shiftwidth=2
set tabstop=2
set smartindent
set expandtab

" Notifications & Visual stuff
set noeb                      " no error bell
set visualbell                " visual error bell
set ruler                     " show the line number on the bar
set autoread                  " watch for file changes
set number                    " line numbers
set cul                       " show cursor line

" VIM Info File
set vi=%,'50
set vi+=\"100,:100
set vi+=n~/.viminfo

" Wrap
set whichwrap+=<,>,[,]
set wrap
set textwidth=79

" I hate swap files, backup files and undo files.
set nobackup
set noundofile
set noswapfile
set directory=~/.vim/temp/

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
  set transparency=1
  set go=egm
  set lines=50
  set guifont=Meslo\ LG\ M\ DZ:h12
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
set ttyfast
set backspace=indent,eol,start
set laststatus=2

set formatoptions=qrn1

set colorcolumn=80
set cursorline  " show the current line

" Show invisible chars for tabs and line endings
set list
set listchars=tab:▸\ ,eol:¬

" snipmate setup
try
  source ~/.vim/snippets/support_functions.vim
catch
  source ~/vimfiles/snippets/support_functions.vim
endtry
autocmd vimenter * call s:SetupSnippets()
function! s:SetupSnippets()
    "if we're in a rails env then read in the rails snippets
    if filereadable("./config/environment.rb")
        call ExtractSnips("~/.vim/snippets/ruby-rails", "ruby")
        call ExtractSnips("~/.vim/snippets/eruby-rails", "eruby")
    endif
    call ExtractSnips("~/.vim/snippets/html", "eruby")
    call ExtractSnips("~/.vim/snippets/html", "xhtml")
    call ExtractSnips("~/.vim/snippets/html", "php")
endfunction


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


" Highlight Hex Colors in CSS #EEEEEE
nmap <leader>h :call HexHighlight()<Return>
  
" NERDTree helper - Open the current file in NERDTree
nmap <leader>i :NERDTreeFind<CR>
" Open the buffer explorer  (MRU Files)
nmap <leader>o :BufExplorer<CR>

" Use jj to jump out of insert mode (hit quickly)
ino jj <esc>
cno jj <c-c>


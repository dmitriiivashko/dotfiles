call plug#begin(stdpath('data') . '/plugged')

Plug 'koirand/tokyo-metro.vim'
Plug 'kien/ctrlp.vim'
Plug 'justinmk/vim-sneak'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'

if exists('g:vscode')
else
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'Raimondi/delimitMate'
  Plug 'bling/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
endif

call plug#end()

let mapleader = ","
filetype plugin indent on
syntax enable

nnoremap <leader><cr> :noh<CR>

set t_Co=256
set autoindent
set hlsearch
set ignorecase
set incsearch
set noswapfile
set number
set relativenumber
set shell=/bin/bash
" set showmatch
set smartcase
set smartindent
set ts=2 sts=2 sw=2 expandtab
set numberwidth=6

vnoremap < <gv
vnoremap > >gv

nnoremap <leader>l :ls<CR>:b
nnoremap <leader>d :bd<CR>

let g:NERDSpaceDelims = 1
let g:sneak#use_ic_scs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCompactSexyComs = 1

colorscheme tokyo-metro

if !exists('g:vscode')
  "UI {{{
  let g:airline_powerline_fonts = 1
  " let g:airline_right_sep='◀'
  " let g:airline_left_sep='▶'
  set laststatus=2
  " let g:airline#extensions#tabline#left_sep = ''
  " let g:airline#extensions#tabline#left_alt_sep = ''
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_theme='minimalist'
  " }}}
  nnoremap <C-N> :bnext<CR>
  nnoremap <C-P> :bprev<CR>

  nnoremap n nzz
  nnoremap N Nzz
  nnoremap <leader>m :NERDTreeToggle<CR>
  nnoremap <leader>o :CtrlP<CR>

  source ~/.config/nvim/coc.vim
endif

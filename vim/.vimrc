set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'elzr/vim-json'
Plugin 'tfnico/vim-gradle'
Plugin 'kentaroi/cocoa.vim'

Plugin 'tomasr/molokai'

call vundle#end()
filetype plugin indent on

let mapleader = ","
syntax enable


" Normal mode mappings {{{
nnoremap <leader>w :w<CR>
nnoremap <leader><cr> :noh<CR>
nnoremap <leader>l :ls<CR>:b
nnoremap <leader>d :bd<CR>
nnoremap <leader>m :NERDTreeToggle<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap n nzz
nnoremap N Nzz
" }}}


" Visual mode mappings {{{
vnoremap < <gv
vnoremap > >gv
" }}}

" Emmet {{{
let g:user_emmet_leader_key='<C-A>'
" }}}

" Execute dot in the selection
vnoremap . :norm.<CR>
" }}}

" General settings {{{
set t_Co=256
set numberwidth=6
set autoindent
set backspace=indent,eol,start
set cursorline
set encoding=utf-8
set fileencoding=utf-8
set hlsearch
set ignorecase
set incsearch
"set list
set noswapfile
set number
set shell=/bin/bash
set showmatch
set smartcase
set smartindent
set term=screen-256color
set ts=4 sts=4 sw=4 expandtab
set visualbell
set winheight=5
set winminheight=5
set winheight=999
set winwidth=84
" }}}

"UI {{{
colorscheme molokai
let g:rehash256 = 1
set background=dark
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
set laststatus=2
" }}}

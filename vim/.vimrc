call plug#begin('~/.vim/plugged')

Plug 'chrisbra/vim-commentary'
Plug 'justinmk/vim-sneak'
Plug 'easymotion/vim-easymotion'
" Plug 'jiangmiao/auto-pairs'
" Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'tomasr/molokai'
Plug 'scrooloose/nerdtree'
" Plug 'tomtom/tcomment_vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'bling/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'elzr/vim-json'
Plug 'tfnico/vim-gradle'
Plug 'kentaroi/cocoa.vim'
Plug 'Raimondi/delimitMate'
Plug 'mileszs/ack.vim'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe'
Plug 'terryma/vim-expand-region'
Plug 'marijnh/tern_for_vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-easy-align'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'terryma/vim-multiple-cursors'
Plug 'Chiel92/vim-autoformat'

call plug#end()

"set nocompatible
"filetype off
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"call vundle#end()

filetype plugin indent on

let mapleader = ","
" let mapleader = "\<Space>"
syntax enable

" Normal mode mappings {{{
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader><cr> :noh<CR>
nnoremap <leader>l :ls<CR>:b
nnoremap <leader>d :bd<CR>
nnoremap <leader>m :NERDTreeToggle<CR>
nnoremap <leader>o :CtrlP<CR>
nnoremap n nzz
nnoremap N Nzz
" }}}

" Autocompletion {{{
set completeopt-=preview
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
" set hlsearch
set ignorecase
set incsearch
"set list
set noswapfile
set number
set shell=/bin/bash
set showmatch
set smartcase
set smartindent
set ts=2 sts=2 sw=2 expandtab
set visualbell
set winheight=3
set winminheight=3
set winheight=999
set winwidth=84
" }}}

"UI {{{
let g:airline_powerline_fonts = 1
" let g:airline_right_sep='◀'
" let g:airline_left_sep='▶'
set laststatus=2
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#enabled = 1
" }}}

" SEARCH HIGHLIGHTING {{{
" set nohlsearch
nnoremap <F3> :set hlsearch!<CR>
" }}}

"FILETYPES {{{
au BufRead,BufNewFile Podfile set filetype=ruby
"}}}

"Filetype specific rules {{{
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2 expandtab omnifunc=tern#Complete
let g:vim_json_syntax_conceal = 0
"}}}

" SilverSearcher Integration {{{
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
endif
" }}}

" Scope Expand Selection {{{
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)
" }}}

" EasyAlign {{{
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
" }}}

" Search snippet {{{
" vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
"     \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
" omap s :normal vs<CR>
" }}}

" Rainbow parentheses {{{
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadChevrons
" }}}

if has("gui_macvim")
    source ~/.vimrc_macvim
else
    source ~/.vimrc_shell
endif

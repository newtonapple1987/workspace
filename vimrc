set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'preservim/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'yggdroot/indentline'
Plugin 'ycm-core/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this lineb
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1

autocmd VimEnter * NERDTree | wincmd p
nnoremap > <C-W>>
nnoremap < <C-W><
nnoremap + <C-W>+
nnoremap - <C-W>=
nnoremap <C-j> <C-W>j
nnoremap <C-h> <C-W>h
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

syntax on
syntax enable
set history=1000
set nu
set hlsearch
set autochdir
set cursorline
set ruler
set showmode
set expandtab
set tabstop=4
set shiftwidth=4
set background=dark
set t_Co=256
set encoding=utf-8

let g:vim_json_coneal=0

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/nothing/vimPlugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" Install Color Theme
Plugin 'sjl/badwolf'
" Install Syntastic
Plugin 'scrooloose/syntastic'
" Install nerdTree
Plugin 'scrooloose/nerdtree'
" Install autocomplete
Plugin 'valloric/youcompleteme'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required




" configuration of vim
" Colors
colorscheme badwolf
syntax on


" UI
" show lines
set number
" show command
set showcmd
" hight current line
set cursorline
" show file stats
set ruler
" encoding 
set encoding=utf-8
" autocomplete command menu
set wildmenu
" highlight match 
set showmatch

" whitespace
set wrap
set wrap
set textwidth=79
set formatoptions=tcqrn1
" set virtual space per Tab
set tabstop=4
" number of space per Tab when editing
set softtabstop=4
" convert tab to space
set expandtab


" seach 
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>



" auto start NERDTree when open vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

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
" Put your non-Plugin stuff after this line

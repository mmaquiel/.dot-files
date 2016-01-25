set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs' " Automatically close braces, brackets, parentheses, etc.
Plugin 'vim-ruby/vim-ruby'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Valloric/YouCompleteMe'
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

"########################## Begin NERDTree Config ################################
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_autofind=1
let g:nerdtree_tabs_startup_cd=1
let g:nerdtree_tabs_focus_on_files=1
let NERDTreeShowHidden=1
" Close NERDTree if there's no window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"########################## End NERDTreeConfig ###################################

"########################## Vim Airline Config #############################
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
"######################### Indente-guides config ################################
let g:indent_guides_enable_on_vim_startup=1 "enable on startup
set ts=4 sw=4 et
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

set laststatus=2
syntax enable
colorscheme molokai
set mouse=a
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set backspace=2 "Solve backspace problem
set number "Enable line numbers
set rnu "Enable relative line numbers, combined with 'number', display the current line number instead of , display the current line number instead of 0

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle, required
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
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"########################## Begin NERDTree Config ################################
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_autofind=1
let g:nerdtree_tabs_startup_cd=1 "Automatically cd to directory
let g:nerdtree_tabs_focus_on_files=1
let NERDTreeShowHidden=1
" Close NERDTree if there's no window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"########################## Vim Airline Config #############################
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
"######################### Indent-guides config ################################
let g:indent_guides_enable_on_vim_startup=1 "enable on startup
set ts=4 sw=4 et
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:ctrlp_show_hidden=1
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
set rnu "Enable relative line numbers

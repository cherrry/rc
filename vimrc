" Basic Configuration
set nocompatible
filetype off
set shell=/bin/bash
set encoding=utf8
set mouse=a
set number
set smartindent
set autoindent
let mapleader=';'

" Plugin Manager
set rtp+=~/.vim/bundle/Vundle.vim

" Vundle (begin)
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Project Based
Plugin 'cherrry/1ndependence.vim'

" Display Settings
Plugin 'chriskempson/base16-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nathanaelkane/vim-indent-guides'

" Code Formatting
" codefmt

" Code Editing
Plugin 'scrooloose/nerdcommenter'
Plugin 'ensime/ensime-vim'

" Code Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Syntax Checker
Plugin 'w0rp/ale'

" Code Searching
Plugin 'othree/eregex.vim'
Plugin 'mileszs/ack.vim'

" File Browsing
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'

" Syntax Files
Plugin 'elzr/vim-json'

" Vundle (end)
call vundle#end()

" Basic Configuration (con't)
filetype plugin indent on

" Color Scheme
set t_Co=256
set background=dark
color base16-tomorrow
let base16colorspace=256
syntax on
hi Normal ctermbg=None

" Indent Guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_default_mapping = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
hi IndentGuidesOdd ctermbg=235
hi IndentGuidesEven ctermbg=234

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" NERDTree
let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore = ['.git', 'target']
nnoremap <C-n> :NERDTreeTabsToggle<CR>

" Ack
let g:ackprg = 'ag'
let g:ag_working_path_mode="r"

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*/.git/*
set wildignore+=*.so,*.swp,*.zip
set wildignore+=*.pyc,*.min.js
set wildignore+=*/target/*

" Auto Code Formatting
xnoremap f :FormatLines<CR>
xnoremap = :FormatLines<CR>

" UltiSnips
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

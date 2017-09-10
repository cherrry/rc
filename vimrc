" Basic Configuration
set nocompatible
filetype off
set shell=/bin/bash
set encoding=utf8
set mouse=a
set nonumber
set smartindent
set autoindent
let mapleader=';'

" Plugin Manager
set rtp+=~/.vim/bundle/Vundle.vim

" Vundle (begin)
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Project Based
Plugin 'editorconfig/editorconfig-vim'

" Display Settings
Plugin 'chriskempson/base16-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nathanaelkane/vim-indent-guides'

" Code Editing
Plugin 'scrooloose/nerdcommenter'

" Code Searching
Plugin 'othree/eregex.vim'
Plugin 'mileszs/ack.vim'

" File Browsing
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'

" Syntax Files
Plugin 'elzr/vim-json'
let g:vim_json_syntax_conceal=0

Plugin 'octol/vim-cpp-enhanced-highlight'

" Vundle (end)
call vundle#end()

" Basic Configuration (con't)
filetype plugin indent on

" Color Scheme
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
set t_Co=256
set background=dark
syntax on
hi Normal ctermbg=None
hi VertSplit ctermbg=232 ctermfg=239

" Indent Guides
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_default_mapping=1
let g:indent_guides_auto_colors=0
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2
let g:indent_guides_exclude_filetypes=['help', 'nerdtree']
hi IndentGuidesOdd ctermbg=235
hi IndentGuidesEven ctermbg=234

" Airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
set laststatus=2

" NERDTree
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=['.git', 'target']
nnoremap <C-n> :NERDTreeTabsToggle<CR>

" Ack
let g:ackprg='ag'
let g:ag_working_path_mode='r'

" CtrlP
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_working_path_mode='ra'
set wildignore+=*/tmp/*,*/.git/*
set wildignore+=*.so,*.swp,*.zip
set wildignore+=*.pyc,*.min.js
set wildignore+=*/target/*

" Fix delete
set backspace=2

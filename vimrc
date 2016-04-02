" Pathogen
execute pathogen#infect()
filetype plugin indent on

" Use bash
set shell=/bin/bash

" Sensible
runtime! plugin/sensible.vim

" Basic Configuration
set encoding=utf-8
set autochdir
set mouse=a
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set autoindent

" Color Scheme
set t_Co=256
set background=dark
color base16-tomorrow
let base16colorspace=256
syntax on

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

" NERDTree
let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore = ['.git', 'target']

" Highlights
hi Normal ctermbg=None

" Ag
let g:ackprg = 'ag --vimgrep'

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*/.git/*
set wildignore+=*.so,*.swp,*.zip
set wildignore+=*.pyc,*.min.js
set wildignore+=*/target/*

" Syntastic
" Location List
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
" When to Check
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { "mode": "passive" }
" Override Type Checkers
let g:syntastic_scala_checkers = ['ensime']
" Formatting
let g:syntastic_stl_format = '%E{Error: %fe(#%e)}%B{, }%W{Warning: %fw(#%w)}'

" Format specific tab size
autocmd FileType js,json,javascript.jsx,html,scala set sw=2 ts=2 sts=2

" Rainbow Parenthesis
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}'], ['<', '>']]

" Markdown
let g:vim_markdown_folding_disabled = 1

" Key Mapping
let mapleader = ';'
" Split Windows
nnoremap <leader>v :topleft vnew<CR>
nnoremap <leader>s :topleft new<CR>
nnoremap <leader>h <C-w><left>
nnoremap <leader>j <C-w><down>
nnoremap <leader>k <C-w><up>
nnoremap <leader>l <C-w><right>
" Save and quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
" Toggle Nerd Tree
nnoremap <C-n> :NERDTreeTabsToggle<CR>
" Ensime
nnoremap <C-t> :EnType<CR>
" Use Omni Complete
inoremap <C-p> <C-x><C-o>
inoremap <C-n> <C-x><C-o>
" Rainbow Parenthesis
nnoremap <C-c> :RainbowParentheses!!<CR>
" Indent Guides
nnoremap <C-i> :IndentGuidesToggle<CR>

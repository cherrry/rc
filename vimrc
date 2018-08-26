" Basic Configuration
set nocompatible
filetype off
set shell=/bin/bash
set encoding=utf8
set mouse=a
set nonumber
set smartindent
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set fillchars=vert:\│
let mapleader=';'
nnoremap <C-c> <silent> <C-c>

" BUG: vim/vim#3117
if has('python3')
  silent! python3 1
endif

" Plugin Manager (begin)
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-glaive'

" Project Based
Plugin 'cherrry/1ndependence.vim'
Plugin 'editorconfig/editorconfig-vim'

" Display Settings
Plugin 'chriskempson/base16-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'Yggdroot/indentLine'

" Code Editing
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'google/vim-codefmt'

" Code Searching
Plugin 'othree/eregex.vim'

" File Browsing
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

" Syntax Files
Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'ap/vim-css-color'
Plugin 'pangloss/vim-javascript'
Plugin 'ternjs/tern_for_vim'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'mtscout6/syntastic-local-eslint.vim'
let g:syntastic_javascript_checkers=['eslint']

Plugin 'elzr/vim-json'
let g:vim_json_syntax_conceal=0

" DevIcon
Plugin 'ryanoasis/vim-devicons'

" Plugin Manager (end)
call vundle#end()
call glaive#Install()

" Basic Configuration (con't)
filetype plugin indent on

" Scroll Behavior
nnoremap <C-j> 2<C-e>
nnoremap <C-k> 2<C-y>

" Color Scheme
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
set t_Co=256
set background=dark
syntax on
hi Normal ctermbg=None
hi Comment cterm=italic
hi VertSplit ctermbg=232 ctermfg=239

" Indent Guides
set list lcs=tab:\│\ 
let g:indentLine_char='│'

" Lightline
let g:lightline = {
  \   'colorscheme': 'wombat',
  \   'component_function': {
  \     'filename': 'LightlineFilename',
  \   }
  \ }
function! LightlineFilename()
  let devicon = strlen(&filetype) ? WebDevIconsGetFileTypeSymbol().' ' : ''
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  return devicon . filename
endfunction

set laststatus=2
set noshowmode

" NERDTree
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=['.git', 'target']
nnoremap <C-n> :NERDTreeTabsToggle<CR>

" CodeFmt
Glaive codefmt plugin[mappings]

" DevIcon
let g:WebDevIconsOS='Darwin'
let g:WebDevIconsUnicodeDecorateFolderNodes=1
cnoreabbrev q :NERDTreeClose<CR>:q

" Fix delete
set backspace=2

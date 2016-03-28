" Pathogen
execute pathogen#infect()
filetype plugin indent on

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
map <C-n> :NERDTreeTabsToggle<CR>
let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore = ['.git']

" Highlights
hi Normal ctermbg=None

" Ag
let g:ackprg = 'ag --vimgrep'

" Jsx syntax highlight
let g:jsx_ext_required = 0

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*/.git/*
set wildignore+=*.so,*.swp,*.zip
set wildignore+=*.pyc,*.min.js

" Syntastics
let g:syntastic_mode_map = { "mode": "passive" }
let g:syntastic_scala_checkers = ['ensime']

" php.vim
function! PhpSyntaxOverride()
    hi! def link phpDocTags  phpDefine
    hi! def link phpDocParam phpType
endfunction
augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END

" phpcomplete-extended
autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP
let g:phpcomplete_index_composer_command='composer'

" Format specific tab size
autocmd FileType js,json,javascript.jsx,html set sw=2 ts=2 sts=2

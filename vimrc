execute pathogen#infect()
runtime! plugin/sensible.vim

filetype plugin indent on
set encoding=utf-8
set autochdir
set mouse=a
set number

" Tab/Space
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

" Syntastic
let g:syntastic_mode_map = { "mode": "passive" }
let g:syntastic_ruby_exec = '~/.rvm/rubies/ruby-2.1.1/bin/ruby'

" Ag
let g:ackprg = 'ag --vimgrep'

" Jsx syntax highlight
let g:jsx_ext_required = 0

" YouCompleteMe
set omnifunc=syntaxcomplete#Complete
let g:EclimCompletionMethod = 'omnifunc'

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*/.git/*
set wildignore+=*.so,*.swp,*.zip
set wildignore+=*.pyc,*.min.js,*.class
set wildignore+=*/target/*

" php.vim
function! PhpSyntaxOverride()
    hi! def link phpDocTags  phpDefine
    hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END

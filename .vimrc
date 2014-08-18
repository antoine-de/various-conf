" vimrc file

map <C-t> :tabnew<CR>
imap <C-t> <ESC>:tabnew<CR>i
map <tab> :tabnext<CR>
map <S-tab> :tabprevious<CR>

set tabstop=4 shiftwidth=4 expandtab

syntax on
set hlsearch
set ignorecase " Do case insensitive matching
set smartcase " Do smart case matching
set incsearch "Do incremental search

" pour avoir une completion style bash (et pas completer de suite avec la premiere occurence)
set wildmode=list:longest

"Vundle conf
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

autocmd BufEnter * lcd %:p:h "pour que working directory soit celui du fichier courant

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" The bundles you install will be listed here

Bundle 'vim-scripts/csv.vim'

" The rest of your config follows here
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
let g:Powerline_symbols = 'unicode'

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2
"let Powerline_symbols = 'fancy'

Bundle 'scrooloose/nerdtree'

map <F2> :NERDTreeToggle

" python mode
Bundle 'klen/python-mode'

" coloration pour protobuf
Bundle 'uarun/vim-protobuf'

Bundle 'morhetz/gruvbox'

Bundle 'fholgado/minibufexpl.vim'

"python mapping
"Python-mode
" Activate rope
" Keys:
" K             Show python docs
"   Rope autocomplete
" g     Rope goto definition
" d     Rope show documentation
" f     Rope find occurrences
" b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = 'b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0


filetype plugin indent on

" Xmllint to indent xml files (WARNING: might be painfull for big files)
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null


"color scheme
set background=dark
colorscheme gruvbox
set guifont=PragmataPro\ 12

" switch entre .cpp et .h
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" Amélioration de la lisibilité des noms des onglets
highlight TabLine term=none cterm=none
highlight TabLineSel ctermbg=darkblue

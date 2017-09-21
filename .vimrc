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
"set rtp+=~/.vim/bundle/vundle/autoload/vundle.vim
call vundle#begin()

autocmd BufEnter * lcd %:p:h "pour que working directory soit celui du fichier courant

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'
"Bundle 'gmarik/vundle'

" The bundles you install will be listed here

Plugin 'vim-scripts/csv.vim'

" The rest of your config follows here
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
let g:Powerline_symbols = 'unicode'

" Powerline setup
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set guifont=Ubuntu\ Mono\ derivative\ Powerline:10

set laststatus=2
"let Powerline_symbols = 'fancy'

Plugin 'scrooloose/nerdtree'

map <F2> :NERDTreeToggle

" coloration pour protobuf
Plugin 'uarun/vim-protobuf'

Plugin 'morhetz/gruvbox'

call vundle#end()


filetype plugin indent on

" Xmllint to indent xml files (WARNING: might be painfull for big files)
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null


"color scheme
set background=dark
colorscheme gruvbox
" set guifont=PragmataPro\ 12

" switch entre .cpp et .h
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" Amélioration de la lisibilité des noms des onglets
highlight TabLine term=none cterm=none
highlight TabLineSel ctermbg=darkblue

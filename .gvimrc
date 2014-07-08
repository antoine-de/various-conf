if has("gui_gtk2")
"set guifont=Monaco\ 8
    set guifont=Source\ Code\ Pro\ Regular\ 8
    set guioptions-=T " remove toolbar
elseif has("x11")
elseif has("gui_win32")
end
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

"useless pour le moment mais ca peut etre utile
":cd ~/dev

"colorscheme ir_black

" General
" *********************************************************************
set anti " Antialias font
"
" "set transparency=0
"
" " Default size of window
" set columns=179
" set lines=50
"
" " Tab headings
" set gtl=%t gtt=%F

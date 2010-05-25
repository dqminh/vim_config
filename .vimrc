" General
set nocompatible	" use vim defaults
syntax on
filetype indent on

let mapleader = ","
set nowrap
set showmatch
set ruler
set ls=2		" always show status line
set scrolloff=5		" keep 5 lines when scrolling
set showcmd		" display incomplete command
set nohls		" no highlight searches
set incsearch		" incremental searching
set ignorecase		" ignore case when searching
set visualbell t_vb=	" turn off error beep/ flash
set novisualbell	" turn off visual bell
set number
set ttyfast		" smoother changes
set shortmess=atI	" Abbreviate messages

" Tab options
set tabstop=4		" numbers of spaces of tab character
set shiftwidth=4	" numbers of spaces to (auto)indent
set expandtab		" no tab, only spaces

" Format options
set fo=tcrq         " t autowraps text using textwidth
                    " c autowraps comments using textwidth
                    " r autoinserts the current comment leader
                    " q allows formatting of comments

" Indent
set autoindent

" Colorscheme
if has("gui_running")
    set guioptions-=m
    set guioptions-=T
    set guifont=Inconsolata\ Medium\ 11	
    set background=dark
    " let moria_fontface='mixed'
    colorscheme moria
else
    set background=dark
    " let moria_fontface='mixed'
    colorscheme moria
endif

" Mapping
map <F1> :previous<CR>
map <F2> :next<CR>
map <F7> :NERDTreeToggle<CR>
map ,ev :sp ~/.vimrc<CR>
map ,se :source ~/.vimrc<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Maps Alt-[h,j,k,l] to resizing a window split
map <silent> <A-h> 5<C-w><<C-w><
map <silent> <A-j> 5<C-W>-<C-W>-
map <silent> <A-k> 5<C-W>+<C-W>+
map <silent> <A-l> 5<C-w>><C-W>>
" Map <C-P> to PDV
inoremap <C-P> :call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocSingle()<CR>
" Filetypes
au BufNewFile,BufRead *.ctp set syntax=php

" Source PDV
source ~/.vim/plugin/php-doc.vim

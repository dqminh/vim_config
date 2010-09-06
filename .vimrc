" General
set nocompatible	" use vim defaults
syntax on
filetype plugin indent on

let mapleader = ","
set wildmenu
set cursorline
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
set softtabstop=4
set shiftwidth=4	" numbers of spaces to (auto)indent
set shiftround      " When at 3 spaces and I hit >> , go to nearest tabstop/shiftwidth
set expandtab		" no tab, only spaces

" Format options
set fo=tcrq         " t autowraps text using textwidth
                    " c autowraps comments using textwidth
                    " r autoinserts the current comment leader
                    " q allows formatting of comments

" Indent
set autoindent
" Filetypes
au BufNewFile,BufRead *.ctp set filetype=ignore
au BufNewFile,BufRead *.ctp set syntax=php
au BufNewFile,BufRead *.ctp set autoindent
au BufNewFile,BufRead *.phpnote set autoindent
au BufNewFile,BufRead *.phpnote set syntax=php
autocmd FileType php let php_sql_query=1
au BufNewFile,BufRead *.json set syntax=javascript
autocmd FileType python let python_highlight_all = 1

" Colorscheme
if has("gui_running")
    set guioptions-=m
    set guioptions-=T
    " set guifont=Inconsolata-dz\ Medium\ 9
    " set guifont=Inconsolata\ Medium\ 11
    " set guifont=Anonymous\ Pro\ Regular\ 11
    set guifont=Consolas\ Regular\ 10.5
    " set guifont=Droid\ Sans\ Mono\ 8.8
    " let g:mayansmoke_special_key_visibility = 2  " higher visibility 
    " let g:mayansmoke_cursor_line_visibility = 2  " higher visibility
    " let moria_fontface='mixed'
    let moria_fontface='none'
    set background=dark
    colorscheme moria
else
    set t_Co=256
    set background=dark
    colorscheme moria
endif

" Mapping
map <F1> :bprevious<CR>
map <F2> :bnext<CR>
map <F7> :NERDTreeToggle<CR>
map <F8> :TlistToggle<CR>
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

" Map Command-T
nnoremap <Leader>rf :CommandTFlush<CR>

" NERDTree
let NERDTreeChDirMode = 2
let NERDTreeIgnore=['\.pyc']

" TagList
let Tlist_Compact_Format = 0
let Tlist_Close_On_Select = 1
let Tlist_Show_One_File = 1
let Tlist_Show_Menu = 1
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Update = 1

" Source PDV
source ~/.vim/plugin/php-doc.vim

" General
filetype off
call pathogen#runtime_append_all_bundles() 
set nocompatible	" use vim defaults
syntax on
filetype plugin indent on
set modelines=0

" Tags
set tags=tags;/

set undofile
set undodir=/tmp

let mapleader = ","
set hidden
set showmode
set history=1000
set undolevels=1000

set nobackup
set noswapfile

set wildmenu
set cursorline
set gdefault


set nowrap
set textwidth=79
set colorcolumn=80,120

set showmatch
set ruler
set ls=2		" always show status line
set scrolloff=5		" keep 5 lines when scrolling
set showcmd		" display incomplete command

set hlsearch
nnoremap <leader><space> :noh<cr> " ,space will clear hlsearch
set incsearch		" incremental searching
set ignorecase		" ignore case when searching
set visualbell t_vb=	" turn off error beep/ flash
set novisualbell	" turn off visual bell
set backspace=indent,eol,start
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
set fo=tcrq       " t autowraps text using textwidth
                    " c autowraps comments using textwidth
                    " r autoinserts the current comment leader
                    " q allows formatting of comments

" Indent
set autoindent
inoremap jj <ESC>

" Filetypes
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.ctp set syntax=php
au BufNewFile,BufRead *.ctp set autoindent
au BufNewFile,BufRead *.ctp set nosmartindent
au BufNewFile,BufRead *.ctp set indentexpr=
au BufNewFile,BufRead *.ctp set nocindent
au BufNewFile,BufRead *.phpnote set autoindent
au BufNewFile,BufRead *.phpnote set syntax=php
autocmd FileType php let php_sql_query=1
au BufNewFile,BufRead *.json set syntax=javascript
autocmd FileType python let python_highlight_all = 1
au BufNewFile,BufRead *.hbs set syntax=mustache
au BufNewFile,BufRead *.pde set filetype=c
au BufNewFile,BufRead *.pde set syntax=c
au BufNewFile,BufRead *.pde set cindent

autocmd FileType javascript set autoindent
autocmd FileType javascript set nosmartindent
autocmd FileType javascript set nocindent
autocmd FileType javascript set indentexpr=

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

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
    colorscheme moria_mod
else
    set t_Co=256
    set background=dark
    let moria_fontface='none'
    colorscheme moria_mod
endif

" Mapping
nnoremap <silent> <leader>W :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:retab<CR>
nnoremap <leader>a :Ack
nnoremap <leader>v V`] " reselect the text that was the pasted

map <F1> :bprevious<CR>
map <F2> :bnext<CR>
map <F7> :NERDTreeToggle<CR>
map <F8> :TlistToggle<CR>
map ,ev :sp ~/.vimrc<CR>
map ,sv :source ~/.vimrc<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Maps Alt-[h,j,k,l] to resizing a window split
map <silent> <A-h> 5<C-W><
map <silent> <A-j> 5<C-W>-
map <silent> <A-k> 5<C-W>+
map <silent> <A-l> 5<C-W>>

" Map <C-P> to PDV
inoremap <C-Y> :call PhpDocSingle()<CR>i
nnoremap <C-Y> :call PhpDocSingle()<CR>
vnoremap <C-Y> :call PhpDocSingle()<CR>

" Map YankRing
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>

" Map Command-T
nnoremap <Leader>rf :CommandTFlush<CR>

" NERDTree
let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmark")
let NERDTreeShowBookmarks=1
let NERDTreeHighlightCursorline=1
let NERDTreeChDirMode = 2
let NERDTreeIgnore=['\.pyc']

" TagList
let tlist_php_settings='php;c:class;i:interface;f:function;d:constant;v:variable'
let Tlist_Auto_Open = 0
let Tlist_Compact_Format = 1
let Tlist_Close_On_Select = 0
let Tlist_Show_One_File = 1
let Tlist_Show_Menu = 1
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Process_File_Always = 1
let Tlist_Auto_Update = 1
autocmd BufWritePost *.php :TlistUpdate

" Source PDV
source ~/.vim/plugin/php-doc.vim

let processing_doc_path="/home/dqminh/processing/processing-1.2.1/reference"

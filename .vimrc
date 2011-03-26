" Setup Pathogen
filetype off
call pathogen#runtime_append_all_bundles()

" General settings
set nocompatible    " use vim defaults
filetype plugin on
filetype indent on
set number
set ruler
syntax on
set encoding=utf-8
set undofile
set undodir=/tmp
set nobackup
set noswapfile
set history=1000
set undolevels=1000
set tags=tags;/

" Whitespace and tablevel
set nowrap
set textwidth=79
set colorcolumn=80,120
set tabstop=4       " numbers of spaces of tab character
set softtabstop=4
set shiftwidth=4    " numbers of spaces to (auto)indent
set shiftround      " When at 3 spaces and I hit >> , go to nearest tabstop/shiftwidth
set expandtab       " no tab, only spaces

" Searching
set hlsearch
set incsearch       " incremental searching
set ignorecase      " ignore case when searching
set smartcase

" Tab completion
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc

" Status bar
set modelines=0
set laststatus=2

" Format options
set showmode
set gdefault
set cursorline
set hidden
set showmatch
set scrolloff=5     " keep 5 lines when scrolling
set showcmd     " display incomplete command

set visualbell t_vb=    " turn off error beep/ flash
set novisualbell    " turn off visual bell
set ttyfast     " smoother changes
set shortmess=atI   " Abbreviate messages
set backspace=indent,eol,start
set fo=tcrqo
" t autowraps text using textwidth
" c autowraps comments using textwidth
" r autoinserts the current comment leader
" q allows formatting of comments
" o auto insert comment leader when press o or O

" Indent
set autoindent

" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
set noequalalways

" Key mapping
let mapleader = ","
map <leader>sv :so ~/.vimrc<CR>
inoremap jj <ESC>
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
nnoremap <silent> <leader>W :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:retab<CR>
nnoremap <leader>a :Ack
nnoremap <leader>v V`] " reselect the text that was the pasted
nnoremap <leader><space> :noh<cr> " ,space will clear hlsearch

map <F8> :TlistToggle<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Maps Alt-[h,j,k,l] to resizing a window split
map <silent> <A-h> 5<C-W><
map <silent> <A-j> 5<C-W>-
map <silent> <A-k> 5<C-W>+
map <silent> <A-l> 5<C-W>>

" Map YankRing
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>

" NERDTree
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmark")
let NERDTreeShowBookmarks=1
let NERDTreeHighlightCursorline=1
let NERDTreeChDirMode = 2
map <leader>n :NERDTreeToggle<CR>

" ZoomWin configuration
map <leader><leader> :ZoomWin<CR>

" Command-T configuration
let g:CommandTMaxHeight=20
nnoremap <Leader>rf :CommandTFlush<CR>

" CTags
map <leader>er :!ctags -R --exclude=".git"  --exclude="*.js" *<CR><CR>

" Remember last location in file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
                \| exe "normal g'\"" | endif
endif

" Source PDV
source ~/.vim/plugin/php-doc.vim

let processing_doc_path="/home/dqminh/processing/processing-1.2.1/reference"
" Turn javascript brief mode on
let g:SimpleJsIndenter_BriefMode=1

" Increase/Decrease font
map <silent> <F11> :set guifont=Consolas\ Regular\ 11<CR>
map <silent> <F12> :set guifont=Consolas\ Regular\ 12<CR>

" Switch Tab
map <silent> <F1> :tabnext<CR>
map <silent> <F2> :tabprevious<CR>

" TagList
let Tlist_Auto_Open = 0
let Tlist_Compact_Format = 1
let Tlist_Close_On_Select = 0
let Tlist_Show_One_File = 1
let Tlist_Show_Menu = 1
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Process_File_Always = 1
let Tlist_Auto_Update = 1

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

au FileType python let python_highlight_all = 1
au BufNewFile,BufRead *.py let python_highlight_all = 1

au BufNewFile,BufRead *.hbs set syntax=mustache

au BufNewFile,BufRead *.pde set filetype=c
au BufNewFile,BufRead *.pde set syntax=c
au BufNewFile,BufRead *.pde set cindent

au BufNewFile,BufRead *.html set textwidth=999

" default colorscheme
set t_Co =256
set background=dark
colorscheme molokai_mod

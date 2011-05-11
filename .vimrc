" Setup Pathogen
filetype off
call pathogen#runtime_append_all_bundles()

" Do not use vi settings
set nocompatible

" Enable filetypes
filetype plugin on
filetype indent on

" Set autoread when a file is changed from outside
set autoread


" Map leader
let mapleader = ","
let g:mapkeader = ","

" Fast force-save
map <leader>w :w!<CR>

" Fast edit and update vimrc. When vimrc is updated , auto-reload it
map <leader>ev :e! ~/.vimrc<CR>
autocmd! bufwritepost vimrc source ~/.vimrc
map <leader>sv :so ~/.vimrc<CR>

" Show line number and ruler on the right side to get currnt position
set number
set ruler

" Enable syntax
syntax on

" Enable utf-8 encoding by default
set encoding=utf-8

" Enable undofile and set the undo destination to tmp
set undofile
set undodir=/tmp

" Disable backup and swap file
set nobackup
set noswapfile

" Sets how many lines of history vim has to remember
set history=700

" Set how many undo vim has to remember
set undolevels=700

" Set tags file name. Will scan the tags recursively until HOME
set tags=tags;/

" Disable line-wrapping
set nowrap

" Set 7 lines to the cursor when moving vertical
set so=7

" Default maximum textwidth is 79
set textwidth=79

" Highlight column 80 and 120 to remind us that we should open a new line
set colorcolumn=80,120

" Commandbar height
set cmdheight=2

" Change buffer without saving
set hid

" Set backspace config
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

" Tab settings
" Chenge tab to space. Set default tabs to 4 space
set tabstop=4       " numbers of spaces of tab character
set softtabstop=4
set shiftwidth=4    " numbers of spaces to (auto)indent
set shiftround      " When at 3 spaces and I hit >> , go to nearest tabstop/shiftwidth
set expandtab       " no tab, only spaces

" Searching
" Enable highlight search and smart case
set hlsearch
set incsearch       " incremental searching
set ignorecase      " ignore case when searching
set smartcase

" Turn on wildmenu
set wildmenu
set wildmode=list:longest,list:full

" Status bar
set modelines=0
set laststatus=2
" Format the statusline
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c

" Format options
" Show matching brackets
set showmode
set showmatch
set mat=2 " How many tenths of a second to blink

set gdefault
set cursorline
set hidden
set scrolloff=5     " keep 5 lines when scrolling
set showcmd     " display incomplete command

" Annoying sound on errors no more
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set shortmess=atI   " Abbreviate messages

" Smoother changes when drawing terminal
set ttyfast

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


" Mapping key board
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

nnoremap <silent><F8> :TagbarToggle<CR>
nnoremap <silent><F5> :Pep8Update<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Maps arrow key to resizing a window split
nnoremap <left> <C-w>5>
nnoremap <up> <C-w>5-
nnoremap <down> <C-w>5+
nnoremap <right> <C-w>5<

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

" Change SQL case
vmap <leader>uc  :call ChangeSqlCase()<cr>

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

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Really useful!
"  In visual mode when you press * or # to search for the current selection
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSearch('gv')<CR>
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

" Source PDV
source ~/.vim/plugin/php-doc.vim

let processing_doc_path="/home/dqminh/processing/processing-1.2.1/reference"
" Turn javascript brief mode on
let g:SimpleJsIndenter_BriefMode=1

" Increase/Decrease font
map <silent> <F11> :set guifont=Consolas\ Regular\ 11<CR>
map <silent> <F12> :set guifont=Consolas\ Regular\ 12<CR>

" Change quote to triple-quote
nnoremap <leader>cq :normal ysiw"w<CR>

" Switch Tab
map <silent> <F1> :tabnext<CR>
map <silent> <F2> :tabprevious<CR>

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


au BufNewFile,BufRead *.hbs set syntax=mustache

au BufNewFile,BufRead *.pde set filetype=c
au BufNewFile,BufRead *.pde set syntax=c
au BufNewFile,BufRead *.pde set cindent

au BufNewFile,BufRead *.html set textwidth=999

" Haskell
au BufEnter *.hs compiler ghc
let g:haddock_browser="/usr/bin/google-chrome"

set guioptions=aAce


" Meta-Shift-F for Ack
map <leader>f :Ack<space>

" Command-/ for toggle comment
map <leader>\ <plug>NERDCommenterToggle<CR>

" Command-][ to increase/decrease indentation
vmap <leader>] >gv
vmap <leader>[ <gv

" display pyflakes quickfix
let g:pyflakes_use_quickfix = 0

" EasyMotion Mapping
let g:EasyMotion_leader_key = '<Leader>m'

" SuperTab settings
"let g:SuperTabDefaultCompletionType = "context"
"set ofu=syntaxcomplete#Complete

" Set colorscheme and gui specific settings.
" donot use .gvimrc because maintaining two files is tiring :)
if has("gui_running")
    "set guifont=Anonymous\ Pro\ Regular\ 11
    set guifont=Consolas\ Regular\ 11
    "set guifont=Droid\ Sans\ Mono\ 8.8
    "let moria_fontface='mixed'
    "let g:molokai_original=1
    set background=dark
    "let moria_style="dark"
    "let g:solarized_contrast="high"
    "let g:solarized_contrast="normal"
    "colorscheme molokai_mod
    "colorscheme solarized
    colorscheme peaksea
else
    set t_Co =256
    set ttymouse=xterm
    set background=dark
    "colorscheme molokai_mod
    "i prefer high contrast
    "let g:solarized_contrast="high"
    "let g:solarized_contrast="normal"
    "let g:solarized_termcolors=256
    "colorscheme solarized
    colorscheme ir_black
endif

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

" From an idea by Michael Naumann
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("ack" . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    else
        return ''
    endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Abbrevs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni complete functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako
au BufNewFile,BufRead *.jhtml set syntax=htmljinja
au BufNewFile,BufRead *.jhtml set syntax=htmljinja
au BufNewFile,BufRead *.jhtml set textwidth=999

au FileType python inoremap <buffer> $r return
au FileType python inoremap <buffer> $i import
au FileType python inoremap <buffer> $p print
au FileType python inoremap <buffer> $f #--- PH ----------------------------------------------<esc>FP2xi
au FileType python map <buffer> <leader>1 /class
au FileType python map <buffer> <leader>2 /def
au FileType python map <buffer> <leader>C ?class
au FileType python map <buffer> <leader>D ?def

""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> AJS.log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return
au FileType javascript inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi

function! JavaScriptFold()
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
    return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction

""""""""""""""""""""""""""""""
" => Command-T
""""""""""""""""""""""""""""""
let g:CommandTMaxHeight = 15
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc
" Map command-T
map <leader>t :CommandT<CR>
imap <leader>t <Esc>:CommandT<CR>

"Copy paste
imap <Leader>v  <C-O>:set paste<CR><C-r>*<C-O>:set nopaste<CR>

""""""""""""""""""""""""""""""
" => Minibuffer plugin
""""""""""""""""""""""""""""""
let g:miniBufExplModSelTarget = 1
let g:miniBufExplorerMoreThanOne = 2
let g:miniBufExplModSelTarget = 0
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplVSplit = 25
let g:miniBufExplSplitBelow=1

let g:bufExplorerSortBy = "name"

autocmd BufRead,BufNew :call UMiniBufExplorer

map <leader>u :TMiniBufExplorer<cr>

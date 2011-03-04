set guioptions=aAce

" Map command-T
map <leader>t :CommandT<CR>
imap <leader>t <Esc>:CommandT<CR>

" Meta-Shift-F for Ack
map <leader>f :Ack<space>

" Command-/ for toggle comment
map <leader>\ <plug>NERDCommenterToggle<CR>

" Command-][ to increase/decrease indentation
vmap <leader>] >gv
vmap <leader>[ <gv

"set guifont=Anonymous\ Pro\ Regular\ 11
set guifont=Consolas\ Regular\ 12
" set guifont=Droid\ Sans\ Mono\ 8.8
"let moria_fontface='mixed'
"let g:molokai_original=1
set background=dark
colorscheme moria_mod

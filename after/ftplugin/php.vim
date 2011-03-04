" let g:php_folding=1
set autoindent
" Map <C-P> to PDV
inoremap <C-Y> :call PhpDocSingle()<CR>i
nnoremap <C-Y> :call PhpDocSingle()<CR>
vnoremap <C-Y> :call PhpDocSingle()<CR>
let tlist_php_settings='php;c:class;i:interface;f:function;d:constant;v:variable'
autocmd BufWritePost *.php :TlistUpdate

"let g:btm_rainbow_color=1

"if exists("g:btm_rainbow_color") && g:btm_rainbow_color
    "call rainbow_parentheses#LoadRound ()
    "call rainbow_parentheses#Activate ()
"endif

"map <leader>rb :call rainbow_parentheses#Toggle()<CR>

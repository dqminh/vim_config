" let g:php_folding=1
set autoindent
" Map <C-P> to PDV
inoremap <C-Y> :call PhpDocSingle()<CR>i
nnoremap <C-Y> :call PhpDocSingle()<CR>
vnoremap <C-Y> :call PhpDocSingle()<CR>
let tlist_php_settings='php;c:class;i:interface;f:function;d:constant;v:variable'
autocmd BufWritePost *.php :TlistUpdate

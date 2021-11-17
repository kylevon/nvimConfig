autocmd FileType c setlocal tabstop=2
autocmd FileType c setlocal shiftwidth=2
autocmd FileType c setlocal expandtab
"nnoremap <Leader>5 :!gcc -Weverything % -o out; ./out<Cr>
autocmd FileType c nnoremap <Leader>5 :!gcc % -o out; ./out<Cr>
autocmd FileType c nnoremap <Leader>6 :!make; ./main<Cr>
autocmd FileType c nnoremap <Leader>tm v!cat ~/.config/nvim/templates/C/main.c<Cr>
autocmd FileType c map [[ :silent! eval search('{', 'b')<CR>w99[{
autocmd FileType c map ][ :silent! eval search('}')<CR>b99]}
autocmd FileType c map ]] j0[[%:silent! eval search('{')<CR>
autocmd FileType c map [] k$][%:silent! eval search('}', 'b')<CR>

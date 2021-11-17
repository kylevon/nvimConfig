autocmd FileType cpp setlocal tabstop=2
autocmd FileType cpp setlocal shiftwidth=2
autocmd FileType cpp setlocal expandtab
"nnoremap <Leader>5 :!gcc -Weverything % -o out; ./out<Cr>
autocmd FileType cpp nnoremap <Leader>5 :!g++ -std=c++11 -Wall *.cpp -o out; ./out<Cr>
autocmd FileType cpp nnoremap <Leader>6 :!file=$(find . \| grep main.cpp \| sed 's/\/main.cpp//; s/.*\///'); make; ./$file<Cr>
autocmd FileType cpp map [[ :silent! eval search('{', 'b')<CR>w99[{
autocmd FileType cpp map ][ :silent! eval search('}')<CR>b99]}
autocmd FileType cpp map ]] j0[[%:silent! eval search('{')<CR>
autocmd FileType cpp map [] k$][%:silent! eval search('}', 'b')<CR>

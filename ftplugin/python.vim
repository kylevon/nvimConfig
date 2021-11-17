setlocal formatprg=autopep8\ -
nnoremap <Leader>5 :!python %<Cr>
highlight SyntasticErrorSign guifg=white guibg=red
highlight SyntasticWarningSign guifg=white guibg=red
highlight SyntasticStyleErrorSign guifg=white guibg=red
highlight SyntasticStyleWarningSign guifg=white guibg=red
"let g:syntastic_python_checkers = ['flake8','pylint', 'python']
let g:syntastic_python_checkers = ['flake8']

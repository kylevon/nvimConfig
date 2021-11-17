  "____                           _ 
 "/ ___| ___ _ __   ___ _ __ __ _| |
"| |  _ / _ \ '_ \ / _ \ '__/ _` | |
"| |_| |  __/ | | |  __/ | | (_| | |
 "\____|\___|_| |_|\___|_|  \__,_|_|
                                   
set nocompatible
filetype plugin on

"""Leader
set equalprg="figlet"
"let mapleader =" "
nmap <Space> <leader>
vmap <Space> <leader>
nmap <F1> <nop>
imap <F1> <nop>
vmap <F1> <nop>

"                             __  __                 
"                            |  \/  | __ _ _ __  ___ 
"                            | |\/| |/ _` | '_ \/ __|
"                            | |  | | (_| | |_) \__ \
"                            |_|  |_|\__,_| .__/|___/
"                                         |_|        
" Split movements

nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

" Tab movement
noremap tn :tabnew<Cr>
noremap tj :tabprev<Cr>
noremap tk :tabnext<Cr>

" Vertical movement
" Top: H Bottom: L Middle: M. 
" Half top ₴ half bottom: ˚
nnoremap ™ M12k
nnoremap ¶ M12j
nnoremap ₴ H6j
nnoremap ˘ L6k
nnoremap ¯ M6j
nnoremap ˇ M6k
nnoremap § 3k
nnoremap ʒ 3j

vnoremap ™ M12k
vnoremap ¶ M12j
vnoremap ₴ H6j
vnoremap ˘ L6k
vnoremap ¯ M6j
vnoremap ˇ M6k
vnoremap § 3k
vnoremap ʒ 3j

" Settings
set background="dark"
highlight clear SignColumn
" default tabs
set tabstop=4
set shiftwidth=4
set expandtab
" Map settings
nnoremap 🙈 :set number!<Cr>
nnoremap 😳 :set relativenumber!<Cr>
nnoremap 🤪 :set autochdir!<Cr>
"nnoremap 😭 :set autowriteall!<Cr>
nnoremap 😭 mb:1,$s/\s*$//g<Cr>:noh<Cr>`b:w<Cr>
nnoremap 🤭 :set spell<Cr>:set spelllang=es<Cr>
nnoremap 👀 :set spell<Cr>:set spelllang=en<Cr>
nnoremap 🤫 :set nospell<Cr>
nnoremap <c-s> :noh<Cr>
nnoremap ❤ :set colorcolumn=80!<Cr>
nnoremap 😁 :AnyFoldActivate<Cr>
hi Folded ctermbg=233
hi clear SpellBad
hi SpellBad cterm=underline
" Command line mode
cnoremap <c-x> <c-h>
cnoremap <c-h> <left>
cnoremap <c-l> <right>
"alt w"
cnoremap € <S-Right>
"alt b"
cnoremap ß <S-Left>

 "Autocomplete instead of using ctr n
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction

inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

"CPP Clang

let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++ -fgnu-tm'


    "			____  _             _           
"		       |  _ \| |_   _  __ _(_)_ __  ___ 
"		       | |_) | | | | |/ _` | | '_ \/ __|
"		       |  __/| | |_| | (_| | | | | \__ \
"		       |_|   |_|\__,_|\__, |_|_| |_|___/
        "				      |___/             
" Set pyenv-virtualenv for nvim python plugin this requires that this
" pyenv-virtualenv exists.
call plug#begin()
" Comment with space c space
Plug 'knubie/vim-kitty-navigator'
" Autojump
Plug 'padde/jump.vim'
Plug 'trotter/autojump.vim'
" Commenting
Plug 'preservim/nerdcommenter'
" Fold syntax
Plug 'pseewald/vim-anyfold'
" Completion
" Markdown plugins
Plug 'ferrine/md-img-paste.vim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' 
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" Gutentags
"Plug 'ludovicchabant/vim-gutentags'
" To create wiki like md docs
Plug 'vimwiki/vimwiki'
" Shakespeare syntax coloring, for yesod
"Plug 'pbrisbin/vim-syntax-shakespeare'
" Make netrw better
Plug 'tpope/vim-vinegar'
" Features: 
" . on a file to pre populate a command on :
" y. to yank the absolute path to a file
" ~ to go home
" - to see what file I came from.
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mattn/emmet-vim' " Html creation
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'petrbroz/vim-glsl'
Plug 'whonore/Coqtail'
" LATEX
 "_        _  _____ _______  __
"| |      / \|_   _| ____\ \/ /
"| |     / _ \ | | |  _|  \  / 
"| |___ / ___ \| | | |___ /  \ 
"|_____/_/   \_\_| |_____/_/\_\
                              
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" ____    ___ ____  _____ 
"|  _ \  |_ _|  _ \| ____|
"| |_) |  | || | | |  _|  
"|  _ <   | || |_| | |___ 
"|_| \_\ |___|____/|_____|
" R IDE
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp' " Plugin manager for ncm 
Plug 'jalvesaq/Nvim-R'
Plug 'gaalcaras/ncm-R'

  "____ ___   ____ 
 "/ ___/ _ \ / ___|
"| |  | | | | |    
"| |__| |_| | |___ 
 "\____\___/ \____|
                  
 " Coc
Plug 'neoclide/coc.nvim', { 'branch': 'release', 'do': { -> coc#util#install() } } 
  "____ _ _                   
 "/ ___| (_)_ __   __ _  ___  
"| |   | | | '_ \ / _` |/ _ \ 
"| |___| | | | | | (_| | (_) |
 "\____|_|_|_| |_|\__, |\___/ 
                 "|___/       
Plug 'rkaminsk/vim-syntax-clingo'


" Python
 "____        _   _                 
"|  _ \ _   _| |_| |__   ___  _ __  
"| |_) | | | | __| '_ \ / _ \| '_ \ 
"|  __/| |_| | |_| | | | (_) | | | |
"|_|    \__, |\__|_| |_|\___/|_| |_|
       "|___/                       
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8' " Linter and syntax checker
Plug 'jeetsukumaran/vim-pythonsense' " Motions

"#############################################################################
"# "ac" : Outer class text object. This includes the entire class,           #
"#      including the header (class name declaration) and decorators, the    #
"#      class body, as well as a blank line if this is given after the class #
"#      definition.                                                          #
"# "ic" : Inner class text object. This is the class body only, thus         #
"#      excluding the class name declaration line and any blank lines after  #
"#      the class definition.                                                #
"# "af" : Outer function text object. This includes the entire function,     #
"#      including the header (function name declaration) and decorators,     #
"#      the function body, as well as a blank line if this is given after    #
"#      the function definition.                                             #
"# "if" : Inner function text object. This is the function body only,        #
"#      thus excluding the function name declaration line and any blank      #
"#      lines after the function definition.                                 #
"# "ad" : Outer docstring text object.                                       #
"# "id" : Inner docstring text object.                                       #
"# "]]" : Move (forward) to the beginning of the next Python class.          #
"# "][" : Move (forward) to the end of the current Python class.             #
"# "[[" : Move (backward) to beginning of the current Python class (or       #
"#      beginning of the previous Python class if not currently in a class   #
"#      or already at the beginning of a class).                             #
"# "[]" : Move (backward) to end of the previous Python class.               #
"# "]m" : Move (forward) to the beginning of the next Python method          #
"#      or function.                                                         #
"# "]M" : Move (forward) to the end of the current Python method or          #
"#      function.                                                            #
"# "[m" : Move (backward) to the beginning of the current Python method      #
"#      or function (or to the beginning of the previous method or function  #
"#      if not currently in a method/function or already at the beginning    #
"#      of a method/function).                                               #
"# "[M" : Move (backward) to the end of the previous Python method or        #
"#      function.                                                            #
"#############################################################################

Plug 'jmcantrell/vim-virtualenv'

" Haskell

 "_   _           _        _ _ 
"| | | | __ _ ___| | _____| | |
"| |_| |/ _` / __| |/ / _ \ | |
"|  _  | (_| \__ \   <  __/ | |
"|_| |_|\__,_|___/_|\_\___|_|_|
"

Plug 'neovimhaskell/haskell-vim' " Color highlight
Plug 'alx741/vim-hindent' "Haskell indenting
                              
" C

  "____ 
 "/ ___|
"| |    
"| |___ 
 "\____|
       
Plug 'google/vim-maktaba'
Plug 'google/vim-glaive'
Plug 'google/vim-codefmt'

"CPP

Plug 'xavierd/clang_complete'


call plug#end()

"codefmt
               "_       __           _   
  "___ ___   __| | ___ / _|_ __ ___ | |_ 
 "/ __/ _ \ / _` |/ _ \ |_| '_ ` _ \| __|
"| (_| (_) | (_| |  __/  _| | | | | | |_ 
 "\___\___/ \__,_|\___|_| |_| |_| |_|\__|
                                        
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType vue AutoFormatBuffer prettier
augroup END


  "____                  _ _ _      
 "/ ___|___   __ _ _   _(_) | | ___ 
"| |   / _ \ / _` | | | | | | |/ _ \
"| |__| (_) | (_| | |_| | | | |  __/
 "\____\___/ \__, |\__,_|_|_|_|\___|
               "|_|                 
               "
set runtimepath+=~/.config/nvim/bundle/coquille

 "_        _  _____ _______  __
"| |      / \|_   _| ____\ \/ /
"| |     / _ \ | | |  _|  \  / 
"| |___ / ___ \| | | |___ /  \ 
"|_____/_/   \_\_| |_____/_/\_\
"Latex


"autocmd Filetype tex setl updatetime=1 "Quicker update
let g:livepreview_previewer = 'open -a skim'



" 
" _ __   ___| |_ _ ____      __
"| '_ \ / _ \ __| '__\ \ /\ / /
"| | | |  __/ |_| |   \ V  V / 
"|_| |_|\___|\__|_|    \_/\_/  
                               
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:kitty_navigator_no_mappings = 1
nnoremap <silent> <C-h> :KittyNavigateLeft<cr>
nnoremap <silent> <C-j> :KittyNavigateDown<cr>
nnoremap <silent> <C-k> :KittyNavigateUp<cr>
nnoremap <silent> <C-l> :KittyNavigateRight<cr>

"                       ____        _   _                 
"                      |  _ \ _   _| |_| |__   ___  _ __  
"                      | |_) | | | | __| '_ \ / _ \| '_ \ 
"                      |  __/| |_| | |_| | | | (_) | | | |
"                      |_|    \__, |\__|_| |_|\___/|_| |_|
"                             |___/                       

let g:python3_host_prog = '/Users/kyle/.pyenv/shims/python3'

"                     __     ___                   _ _    _ 
"                     \ \   / (_)_ __ _____      _(_) | _(_)
"                      \ \ / /| | '_ ` _ \ \ /\ / / | |/ / |
"                       \ V / | | | | | | \ V  V /| |   <| |
"                        \_/  |_|_| |_| |_|\_/\_/ |_|_|\_\_|

" Vimwiki
let g:vimwiki_list = [{
     \ 'path': '/Users/kyle/Documents/Programming/rust/wiki', 
     \ 'path_html': '/Users/kyle/Documents/Programming/rust/html', 
     \ 'custom_wiki2html': '~/.config/nvim/plugged/vimwiki/convert.py',
     \ 'syntax': 'markdown', 
     \ 'ext': '.md', 
     \ 'index': 'main'
     \ },
     \ {
     \ 'path': '/Users/kyle/Documents/Programming/haskell/wiki', 
     \ 'path_html': '/Users/kyle/Documents/Programming/haskell/html', 
     \ 'custom_wiki2html': '~/.config/nvim/plugged/vimwiki/convert.py',
     \ 'syntax': 'markdown', 
     \ 'ext': '.md', 
     \ 'index': 'main'
     \ },
     \ {
     \ 'path': '/Users/kyle/Documents/Programming/parallelProgramming/wiki', 
     \ 'path_html': '/Users/kyle/Documents/Programming/parallelProgramming/html', 
     \ 'custom_wiki2html': '~/.config/nvim/plugged/vimwiki/convert.py',
     \ 'syntax': 'markdown', 
     \ 'ext': '.md', 
     \ 'index': 'main'
     \ },
     \ {
     \ 'path': '/Users/kyle/Documents/Programming/algorithmicTrading/indeces/SP500Aristocrat/wiki', 
     \ 'path_html': '/Users/kyle/Documents/Programming/algorithmicTrading/indeces/SP500Aristocrat/html', 
     \ 'custom_wiki2html': '~/.config/nvim/plugged/vimwiki/convert.py',
     \ 'syntax': 'markdown', 
     \ 'ext': '.md', 
     \ 'index': 'main'
     \ },
     \ {
     \ 'path': '/Users/kyle/Documents/Swedish/Domino/wiki',
     \ 'path_html': '/Users/kyle/Documents/Swedish/Domino/html', 
     \ 'custom_wiki2html': '~/.config/nvim/plugged/vimwiki/convert.py',
     \ 'syntax': 'markdown', 
     \ 'ext': '.md', 
     \ 'index': 'main'
     \ },
     \ {
     \ 'path': '/Users/kyle/Documents/Programming/algorithmicTrading/finance/PrinciplesOfModernFinanceI/wiki',
     \ 'path_html': '/Users/kyle/Documents/Programming/algorithmicTrading/finance/PrinciplesOfModernFinanceI/html', 
     \ 'custom_wiki2html': '~/.config/nvim/plugged/vimwiki/convert.py',
     \ 'syntax': 'markdown', 
     \ 'ext': '.md', 
     \ 'index': 'main'
     \ },
     \ {
     \ 'path': '/Users/kyle/Documents/Programming/semantics/wiki', 
     \ 'path_html': '/Users/kyle/Documents/Programming/semantics/html', 
     \ 'custom_wiki2html': '~/.config/nvim/plugged/vimwiki/convert.py',
     \ 'syntax': 'markdown', 
     \ 'ext': '.md', 
     \ 'index': 'main'
     \ }]
     "\ {
     "\ 'path': '~/Documents/Clases/Fluidos/wiki/',
     "\ 'path_html': '~/Documents/Clases/Fluidos/html/',
     "\ 'custom_wiki2html': '~/.config/nvim/plugged/vimwiki/convert.py',
     "\ 'syntax': 'markdown',
     "\ 'ext': '.md',
     "\ 'index': 'Home'
     "\ },
     "\ {
     "\ 'path': '~/Documents/Clases/Marketing/wiki/', 
     "\ 'path_html': '~/Documents/Clases/Marketing/html/', 
     "\ 'custom_wiki2html': '~/.config/nvim/plugged/vimwiki/convert.py',
     "\ 'syntax': 'markdown',
     "\ 'ext': '.md',
     "\ 'index': 'Home'
     "\ },
     "\ {
     "\ 'path': '~/Documents/Clases/SSOO/wiki/',
     "\ 'path_html': '~/Documents/Clases/SSOO/html/',
     "\ 'custom_wiki2html': '~/.config/nvim/plugged/vimwiki/convert.py',
     "\ 'syntax': 'markdown',
     "\ 'ext': '.md',
     "\ 'index': 'Home'
     "\ },
     "\ {
     "\ 'path': '~/Documents/programming/haskell/wiki',
     "\ 'path_html': '~/Documents/programming/haskell/html/',
     "\ 'custom_wiki2html': '~/.config/nvim/plugged/vimwiki/convert.py',
     "\ 'syntax': 'markdown',
     "\ 'ext': '.md',
     "\ 'index': 'Home'
     "\ },
     "\ {
     "\ 'path': '~/Documents/Clases/ArquiSistemasDeSoftware/wiki/',
     "\ 'path_html': '~/Documents/Clases/ArquiSistemasDeSoftware/html/',
     "\ 'custom_wiki2html': '~/.config/nvim/plugged/vimwiki/convert.py',
     "\ 'syntax': 'markdown',
     "\ 'ext': '.md',
     "\ 'index': 'Home'
     "\ }]

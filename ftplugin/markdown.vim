nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
"Things for pandoc module
let maplocalleader="\<space>"
let g:pandoc#folding#fdc = 0
setlocal tabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal spelllang=en
set nospell
setlocal ignorecase
nnoremap ๐ :setlocal spelllang=en<Cr>
nnoremap ๐คญ :setlocal spelllang=es<Cr>
nnoremap <Leader><F5> :w<Cr>:Vimwiki2HTML<Cr>:!/Users/kyle/.config/nvim/scripts/refresh_chrome<Cr><Cr>
nnoremap <Leader><F6> :w<Cr>:Vimwiki2HTML<Cr>:!/Users/kyle/.config/nvim/scripts/open_html %:p<Cr><Cr>
nnoremap <Leader><F7> :w<Cr>:VimwikiAll2HTML<Cr>:!cp -r img ../html/img; /Users/kyle/.config/nvim/scripts/refresh_chrome<Cr><Cr>
nnoremap <Leader><F8> :w<Cr>:VimwikiAll2HTML<Cr>:!/cp -r img ../html/img; Users/kyle/.config/nvim/scripts/refresh_chrome<Cr><Cr>
" movements
nnoremap <Leader>N ?<+><Cr>c3l
nnoremap <Leader>m /<+><Cr>c3l
nnoremap <Leader>t i<+><Esc>
nnoremap <Leader>- o---<Cr>
nnoremap <Leader>= o%%<Cr>
nnoremap <Leader>! i# Clase <Esc>:read !echo %<Cr>kJo<Esc>:read !date<Cr>
nnoremap <Leader>1 I# 
nnoremap <Leader>2 I## 
nnoremap <Leader>3 I### 
nnoremap <Leader>4 I#### 
nnoremap <Leader>5 I##### 
nnoremap <Leader>6 I###### 
nnoremap <Leader>o1 o# 
nnoremap <Leader>o2 o## 
nnoremap <Leader>o3 o### 
nnoremap <Leader>o4 o#### 
nnoremap <Leader>o5 o##### 
nnoremap <Leader>o6 o###### 
nnoremap <Leader>h1 YpVr=
vnoremap <Leader>h1 YpVr=
vnoremap <Leader>h2 YpVr-
nnoremap <Leader>h2 YpVr-
vnoremap <Leader>rl <Esc>`<i[link](<Esc>`>a)<Esc>
nnoremap <Leader>rl <Esc>Bi[link](<Esc>Ea)<Esc>
"misc
vnoremap \r- rโ
inoremap \\ \
"logic
inoremap \ex โ
inoremap \fa โ
inoremap \Ra โ
inoremap \ra โ
inoremap \iff โ
inoremap \lor โจ
inoremap \land โง
inoremap \neg ยฌ
inoremap \equiv โก
"math symbols
inoremap \leq โค
inoremap \geq โฅ
inoremap \[[ ใ
inoremap \]] ใ
inoremap \rtriang โป
inoremap \circ โ
inoremap \. ยท
"set theory
inoremap \in โ
inoremap \notin โ
inoremap \cup โช
inoremap \cap โฉ
"Sub and upperscript
inoremap \_0 โ
inoremap \_1 โ
inoremap \_2 โ
inoremap \_3 โ
inoremap \_4 โ
inoremap \_5 โ
inoremap \_6 โ
inoremap \_7 โ
inoremap \_8 โ
inoremap \_9 โ
inoremap \^0 โฐ
inoremap \^1 ยน
inoremap \^2 ยฒ
inoremap \^3 ยณ
inoremap \^4 โด
inoremap \^5 โต
inoremap \^6 โถ
inoremap \^7 โท
inoremap \^8 โธ
inoremap \^9 โน
"Greek alphabet
inoremap \alpha ฮฑ
inoremap \Alpha ฮ
inoremap \beta ฮฒ
inoremap \Beta ฮ
inoremap \gamma ฮณ
inoremap \Gamma ฮ
inoremap \delta ฮด
inoremap \Delta ฮ
inoremap \epsilon ฮต
inoremap \Epsilon ฮ
inoremap \zรชta ฮถ
inoremap \Zรชta ฮ
inoremap \รชta ฮท
inoremap \รta ฮ
inoremap \thรชta ฮธ
inoremap \Thรชta ฮ
inoremap \iota ฮน
inoremap \Iota ฮ
inoremap \kappa ฮบ
inoremap \Kappa ฮ
inoremap \lambda ฮป
inoremap \Lambda ฮ
inoremap \mu ฮผ
inoremap \Mu ฮ
inoremap \nu ฮฝ
inoremap \Nu ฮ
inoremap \xi ฮพ
inoremap \Xi ฮ
inoremap \omikron ฮฟ
inoremap \Omikron ฮ
inoremap \pi ฯ
inoremap \Pi ฮ?
inoremap \rho ฯ
inoremap \Rho ฮก
inoremap \sigma ฯ
inoremap \Sigma ฮฃ
inoremap \tau ฯ
inoremap \Tau ฮค
inoremap \upsilon ฯ
inoremap \Upsilon ฮฅ
inoremap \phi ฯ
inoremap \Phi ฮฆ
inoremap \chi ฯ
inoremap \Chi ฮง
inoremap \psi ฯ
inoremap \Psi ฮจ
inoremap \omega ฯ
inoremap \Omega ฮฉ
inoremap \cup โช

" Random emojis
inoremap \checkbox โ
inoremap \crossbox โ
inoremap \checkmark โ

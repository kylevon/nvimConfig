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
nnoremap 👀 :setlocal spelllang=en<Cr>
nnoremap 🤭 :setlocal spelllang=es<Cr>
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
vnoremap \r- r─
inoremap \\ \
"logic
inoremap \ex ∃
inoremap \fa ∀
inoremap \Ra ⇒
inoremap \ra →
inoremap \iff ↔
inoremap \lor ∨
inoremap \land ∧
inoremap \neg ¬
inoremap \equiv ≡
"math symbols
inoremap \leq ≤
inoremap \geq ≥
inoremap \[[ 〚
inoremap \]] 〛
inoremap \rtriang ▻
inoremap \circ ∘
inoremap \. ·
"set theory
inoremap \in ∈
inoremap \notin ∉
inoremap \cup ∪
inoremap \cap ∩
"Sub and upperscript
inoremap \_0 ₀
inoremap \_1 ₁
inoremap \_2 ₂
inoremap \_3 ₃
inoremap \_4 ₄
inoremap \_5 ₅
inoremap \_6 ₆
inoremap \_7 ₇
inoremap \_8 ₈
inoremap \_9 ₉
inoremap \^0 ⁰
inoremap \^1 ¹
inoremap \^2 ²
inoremap \^3 ³
inoremap \^4 ⁴
inoremap \^5 ⁵
inoremap \^6 ⁶
inoremap \^7 ⁷
inoremap \^8 ⁸
inoremap \^9 ⁹
"Greek alphabet
inoremap \alpha α
inoremap \Alpha Α
inoremap \beta β
inoremap \Beta Β
inoremap \gamma γ
inoremap \Gamma Γ
inoremap \delta δ
inoremap \Delta Δ
inoremap \epsilon ε
inoremap \Epsilon Ε
inoremap \zêta ζ
inoremap \Zêta Ζ
inoremap \êta η
inoremap \Êta Η
inoremap \thêta θ
inoremap \Thêta Θ
inoremap \iota ι
inoremap \Iota Ι
inoremap \kappa κ
inoremap \Kappa Κ
inoremap \lambda λ
inoremap \Lambda Λ
inoremap \mu μ
inoremap \Mu Μ
inoremap \nu ν
inoremap \Nu Ν
inoremap \xi ξ
inoremap \Xi Ξ
inoremap \omikron ο
inoremap \Omikron Ο
inoremap \pi π
inoremap \Pi Π
inoremap \rho ρ
inoremap \Rho Ρ
inoremap \sigma σ
inoremap \Sigma Σ
inoremap \tau τ
inoremap \Tau Τ
inoremap \upsilon υ
inoremap \Upsilon Υ
inoremap \phi φ
inoremap \Phi Φ
inoremap \chi χ
inoremap \Chi Χ
inoremap \psi ψ
inoremap \Psi Ψ
inoremap \omega ω
inoremap \Omega Ω
inoremap \cup ∪

" Random emojis
inoremap \checkbox ☑
inoremap \crossbox ☒
inoremap \checkmark ✓

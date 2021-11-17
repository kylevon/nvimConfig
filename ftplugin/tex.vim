inoremap <leader>baeq <Esc>A\begin{equation*}<Cr>\end{equation*}<Esc>O
inoremap <leader>beq \begin{equation}<Cr>\end{equation}<Esc>O
inoremap <leader>sec \section
inoremap <leader>subsec \subsection
inoremap <leader>ben \begin{enumerate}<Cr>\end{enumerate}<esc>O\item 
nnoremap <Leader>5 :LLPStartPreview<Cr>
nnoremap <Leader>bdef a\begin{definition}<Cr>\end{definition><Esc>O
nnoremap <Leader>tm v!cat ~/.config/nvim/templates/Latex/main.tex<Cr>
nnoremap <leader>baeq A\begin{equation*}<Cr>\end{equation*}<Esc>O
nnoremap <leader>bas A\section*{}<Esc>i
nnoremap <leader>ben A\begin{enumerate}<Cr>\end{enumerate}<Esc>O
nnoremap <leader>beq A\begin{equation}<Cr>\end{equation}<Esc>O
nnoremap <leader>mbf a\mathbf{}<Esc>i
vnoremap <leader>baeq DO\begin{equation*}<Esc>po\end{equation*}<Esc>kV>V>

call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes
 Plug 'junegunn/seoul256.vim'
 Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
 Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
 Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
 Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
 Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
 Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
 Plug '~/my-prototype-plugin'
 
 Plug 'skywind3000/asyncrun.vim'

call plug#end()

syntax on
set number
set autoindent 
set smartindent
"set incsearch
filetype indent on
set ic
set nocompatible
filetype plugin on

"""""""""""""""""java
"autocmd BufWritePost *.java !javac <afile>
"autocmd FileType java inoremap 'pr System.out.println();<Esc>hi
"autocmd FileType java inoremap 'if if(){<Enter><Enter>}<Enter>else{<Enter><Enter>}<Esc>5khi

"""""""""""""""""latex
autocmd FileType tex nnoremap ;pdf :AsyncRun zathura out.pdf<Enter>
autocmd BufWritePost *.tex !latexmk -pdf -jobname=out -cd -quiet <afile>
autocmd FileType tex inoremap ;; <Esc>/(<>)<Enter>:noh<Enter>"_c4l
autocmd FileType tex inoremap ;sec \section{}<Enter><Enter>(<>)<Esc>2kA<Esc>i
autocmd FileType tex inoremap ;ssec \subsection{}<Enter><Enter>(<>)<Esc>2kA<Esc>i
autocmd FileType tex inoremap ;sssec \subsubsection{}<Enter><Enter>(<>)<Esc>2kA<Esc>i
autocmd FileType tex inoremap ;beg \begin{(<>)}<Enter>(<>)<Enter>\end{(<>)}<Enter>(<>)<Esc>3kI
autocmd FileType tex inoremap ;up \usepackage{}<Enter>(<>)<Esc>kAi
autocmd FileType tex inoremap ;si \si[per-mode=symbol]{} (<>)<Esc>5hi
autocmd FileType tex inoremap ;enu \begin{enumerate}[label=\alph*)]<Enter>\setcounter{enumi}{(<>)}<Enter>\item (<>)<Enter>\end{enumerate}<Enter>(<>)<Esc>4kI
autocmd FileType tex inoremap ;bf \textbf{} (<>)<Esc>5hi
autocmd FileType tex inoremap ;em \emph{} (<>)<Esc>5hi
autocmd FileType tex inoremap ;fig \begin{figure}[(<>)]<Enter>\includegraphics[width=(<>)\linewidth]{(<>)}<Enter>\centering<Enter>\caption{(<>)}<Enter>\label{(<>)}<Enter>\end{figure}<Esc>5kI
autocmd FileType tex inoremap ;fr \frac{}{(<>)}(<>)<Esc>10hi
autocmd FileType tex inoremap ;_ _{}(<>)<Esc>4hi
autocmd FileType tex inoremap ;sup ^{}(<>)<Esc>4hi
autocmd FileType tex inoremap ;* \cdot<Space>
autocmd FileType tex inoremap ;tab3 \begin{table}[(<>)]<Enter>\begin{tabular}{\|l\|l\|l\|}<Enter>\hline<Enter>(<>)&(<>)<Space>&(<>)<Space>\\<Space>\hline<Enter>(<>)&(<>)<Space>&(<>)<Space>\\<Space>\hline<Enter>(<>)&(<>)<Space>&(<>)<Space>\\<Space>\hline<Enter>(<>)&(<>)<Space>&(<>)<Space>\\<Space>\hline<Enter>\end{tabular}<Enter>\end{table}<Enter>(<>)<Esc>9kI
autocmd FileType tex inoremap ;tab2 \begin{table}[(<>)]<Enter>\begin{tabular}{\|l\|l\|}<Enter>\hline<Enter>(<>)&(<>)<Space>\\<Space>\hline<Enter>(<>)&(<>)<Space>\\<Space>\hline<Enter>(<>)&(<>)<Space>\\<Space>\hline<Enter>(<>)&(<>)<Space>\\<Space>\hline<Enter>\end{tabular}<Enter>\end{table}<Enter>(<>)<Esc>9kI
autocmd FileType tex inoremap ;di $$$$ <Enter>(<>)<Esc>kA<Esc>2hi
autocmd FileType tex inoremap ;in $$ (<>)<Esc>5hi
autocmd FileType tex inoremap ;std \ominus

"groff
autocmd BufWritePost *.ms !pic <afile> | groff -e -k -ms -Tps > out.ps

"""""""""""""""""Java"""""""""""""""
autocmd FileType java inoremap ææ <Esc>/(<>)<Enter>:noh<Enter>"_c4l
autocmd FileType java inoremap æsysout System.out.println();<Esc>hi

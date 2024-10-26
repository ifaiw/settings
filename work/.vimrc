filetype plugin indent on
syntax on

au BufNewFile,BufRead Jenkinsfile setf groovy

:command! -bar -bang Q quit<bang>

" Added by Mattt. Adds `:tterm' as a command that opens a terminal in a right
" split pane.
:set splitright
:cnoreabbrev tterm vert terminal

inoremap jk <Esc>
inoremap JK <Esc>

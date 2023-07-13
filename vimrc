echo "▄︻┻═━一"

set number
set numberwidth=4
set showcmd
set ruler
set rnu

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'frazrepo/vim-rainbow' 
Plugin 'morhetz/gruvbox'
call vundle#end()

colorscheme gruvbox 
let g:rainbow_active = 1
let g:rainbow_guifgs = ['DarkOrange3', 'DarkOrchid3', 'FireBrick', 'RoyalBlue3']
set bg=dark

inoremap <c-u> <esc>veUi " uppercase a word in insert mode
nnoremap <c-u> veU<esc> " uppercase a word in normal mode 
noremap - ddp " delete the line and paste below
nnoremap H 0
nnoremap L g_

let mapleader = ","
let maplocalleader = "\\"

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>et :vsplit ~/.vim/templates/skeleton.html
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel 
inoremap jk <esc>  
nnoremap <leader>lf :10winc><return>
nnoremap <leader>df :5winc+<return>
nnoremap <leader>uf :5winc-<return>
nnoremap <leader>(d vi(di
nnoremap <leader>dt :pu=strftime('%c')
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap { {}<Esc>ha
inoremap ' ''<Esc>ha


iabbrev @@ cullinap@gmail.com
iabbrev ccopy Copyright 2022 Patrick Cullinane, all rights reserved.
iabbrev taht that

" css snippets
iabbrev cssgen body {<CR><CR>}<esc>k0kk
iabbrev cssatt att:val <esc>0

" javascript snippets
augroup jsgroup
	autocmd!
	au Filetype javascript setlocal tabstop=4 sw=4 sts=4
	au FileType javascript :iabbrev <buffer> iff if ()<left>
	au FileType javascript inoremap <leader>p <return><esc>O<tab>
	au FileType javascript inoremap <leader>f <esc>la:<esc>o<bs> 
	au FileType javascript inoremap <leader>j <esc>la 
augroup END

" python snippets
augroup pythongroup
	autocmd!
	au FileType python nnoremap <buffer> <localleader>c I#<esc>
	au FileType python setlocal autoindent expandtab tabstop=4 sw=4 sts=4
	au FileType python inoremap <leader>p <return><esc>O<tab>
	au FileType python inoremap <leader>f <esc>la:<esc>o<bs> 
	au FileType python inoremap <leader>j <esc>la 
augroup END

augroup skeletons
	au!
	autocmd BufNewFile *.* silent! execute '0r~/.vim/templates/skeleton.'.expand("<afile>:e")
augroup END

syntax on
" filetype plugin indent on

set listchars=tab:→\ ,eol:↲
" filetype indent on

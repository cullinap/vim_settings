filetype indent on

syntax on

set number

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'danilo-augusto/vim-afterglow'
Plugin 'jiangmiao/auto-pairs'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'morhetz/gruvbox'

call vundle#end()

colorscheme gruvbox 
set bg=dark

let NERDTreeShowHidden=1

autocmd VimEnter * NERDTree



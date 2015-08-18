" Vundle
set shell=bash
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'valloric/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required

" Powerline
set encoding=utf-8
set laststatus=2
let powerline_dir = system('python -c "import powerline, sys; sys.stdout.write(powerline.__path__[0])"')
execute 'source' fnameescape(powerline_dir . "/bindings/vim/plugin/powerline.vim")

" Solarized color theme
syntax enable
let g:solarized_termcolors=16
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

" Better plane switching
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Other
set hlsearch
set incsearch
set expandtab
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol
autocmd FileType cpp,c,cxx,h,hpp,python,sh,txt,md,markdown setlocal colorcolumn=80
autocmd FileType txt,md,markdown setlocal textwidth=80

" System clipboard integration
set clipboard=unnamed


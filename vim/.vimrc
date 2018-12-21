" Enable copy-paste from X clipboard buffer
set clipboard=unnamedplus

" Enable syntax highligting
filetype plugin on
filetype indent on
syntax on

" Set UTF-8 as standard encoding
set encoding=utf-8

" Set 5 lines to the cursor (when moving vertically using j/k)
set so=5

" Show current position
set ruler

" Highlight search results
set hlsearch

" Configure backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Set one tab equal to 4 spaces
set shiftwidth=4
set tabstop=4

" Remove trailing whitespace on file save
autocmd BufWritePre * :%s/\s\+$//e

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" nerdtree settings
autocmd vimenter * NERDTree

" vim-devicons settings
set guifont=DejaVuSansMono\ Nerd\ Font\ 11

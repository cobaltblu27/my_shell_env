syntax on
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set smartindent
set nu
set sts=4

noremap <C-j> 5j
noremap <C-k> 5k
noremap <C-Up> 5k
noremap <C-Down> 5j
map <silent> <C-n> :NERDTreeToggle<CR>
map <silent> <C-t> :TagbarToggle<CR>
tnoremap <Esc> <C-\><C-n>

if match($TERM, "screen") != -1
  set ttymouse=xterm2
endif
set mouse=a

colorscheme ron
" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
 
" Keep Plugin commands between vundle#begin/end.
Plugin 'leafgarland/typescript-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'yggdroot/indentline'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
" vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'Valloric/YouCompleteMe' 
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo at http://vim-scripts.org/vim/scripts.html; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

function! StartUp()
    NERDTree
endfunction
" uncomment to start NERDTree on startup
" autocmd VimEnter * call StartUp()

" delimitMate
let delimitMate_expand_cr=1


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
Plugin 'tpope/vim-fugitive'
Plugin 'Powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'dracula/vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nightsense/seabird'
Plugin 'tomasiser/vim-code-dark'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

execute pathogen#infect()

" Solarized theme
" -------
syntax enable
" set background=dark
" colorscheme solarized
" ----
" End Solarized theme

" theme
" ----
syntax on
colorscheme wombat
" ----
" End theme

" Import Powerline
" -----
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
" -----
" End Import Powerline

" Always show statusline
" ------
set laststatus=2
" ------

set guifont=SourceCodePro+Powerline+Awesome\ Regular:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" Airline
let g:airline_theme='codedark'
let g:airline#extensions#tabline#enabled = 1

" source /Library/Python/2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim

if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=SourceCodePro+Powerline+Awesome\ Regular:h15
   endif
endif

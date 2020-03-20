set nocompatible              " be iMproved, required
filetype off                  " required
let mapleader=","
set shell=/bin/bash

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
Plugin 'majutsushi/tagbar'
" sudo apt install exuberant-ctags
nmap <F9> :TagbarToggle<CR>
Plugin 'scrooloose/nerdtree'
map <F8> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_auto_colors=0
hi IndentGuidesOdd ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
set ts=4 sw=4 et
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
Plugin 'easymotion/vim-easymotion'
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
Plugin 'vim-airline/vim-airline'
set laststatus=2
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:Powerline_symbols = 'fancy'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.linenr = '␤'


filetype plugin indent on
filetype indent on


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




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let name = "DONG Xu"
set history=500
set showcmd
" syntax on "syntax enable
autocmd BufEnter * :syntax sync fromstart   "minlines=80
set wildmenu
set showmatch
scriptencoding utf-8
"set spell
set tabpagemax=5               " Only show 5 tabs
set showmode                    " Display the current mode
nnoremap <F6> :bp<CR>
nnoremap <F7> :bn<CR>
set mouse=a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" number
set number "This turns on line numbering
"set relativenumber
set numberwidth=4 "Set the line numbers to 4 spaces
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" search
set incsearch
set hlsearch
hi Search cterm=NONE ctermfg=red ctermbg=blue
set ignorecase
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tab
set tabstop=4
set softtabstop=4
set expandtab
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cursor,mouse and key-arrows
"set cursorcolumn
"set cursorline                  " Highlight current line
"set mouse=a
"highlight clear SignColumn      " SignColumn should match background
"highlight clear LineNr          " Current line number row will have same background color in relative mode
"highlight clear CursorLineNr    " Remove highlight
"color from current line number
noremap j gj
noremap k gk
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" folder
set foldenable
set foldlevelstart=10
"nnoremap <space> za
set foldmethod=indent   " fold based on indent level
" marker manual sytanx diff

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" windows
set splitright  "Puts new vsplit windows to the right of the current
set splitbelow  "Puts new split windows to the bottom of the current
set textwidth=80

"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set list
" autocmd FileType python call NERDTreeStartUp()
" function! NERDTreeStartUp()
"    if 0 == argc()
"    NERDTree
"    end
" endfunction
" set grepprg=grep\ -nH\ $*
" let g:tex_flavor='latex'
" " this is mostly a matter of taste. but LaTeX looks good with just a bit
" " of indentation.
" set sw=2
" " TIP: if you write your \label's as \label{fig:something}, then if you
" " type in \ref{fig: and press <C-n> you will automatically cycle through
" " all the figure labels. Very useful!
" set iskeyword+=:

set background=dark "or dark
hi Normal ctermbg=234
set term=screen-256color

autocmd BufEnter,BufRead,BufNewFile *.py set iskeyword-=:
autocmd FileType make setlocal noexpandtab


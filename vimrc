"===================
"       VIMRC
"===================


"------------------------------"
" Vundle setup and vim plugins "
"------------------------------"

set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax enable " Keep my specific color settings, can use :hi before or after

"-----------"
"  Unsorted "
"-----------"

    "set wrap
set textwidth=79
set number
set scrolloff=3
set showmode  " Show mode at all the time
set noruler     " To not see the cursor position: already present in statusline

"set showmatch " fro brackets
" set matchtime=?

set expandtab " tab convert to space
set tabstop=8 " size for an tab, don't change: standard !!
set softtabstop=4 " number of space when press tab button
set shiftwidth=4 " number of space insert automatically for indentation

"---------------"
" Search Option "
"---------------"

set hlsearch " HighLight search
set incsearch "incrementative search
set ignorecase
set smartcase " if search have upper char override ignorecase

"-----------------------"
" General color Options "
"-----------------------"

set t_Co=256 " Vim with 265 colors
set background=dark " Vim use good colors for dark background
colorscheme jellybeans

" For tab and trail
hi SpecialKey ctermfg=66

" For eol
hi NonText ctermfg=66 

"See better command shell
hi Question ctermfg=Blue term=bold

" Option format

set list listchars=nbsp:¤,trail:·,eol:¬,tab:->
set list

set backupdir=~/.vim/backup
set directory=~/.vim/swp

"--------------------"
" StatusLine options "
"--------------------"
"
set laststatus=2 " Always see StatusLine

" Default color for StatusLine
hi StatusLine ctermfg=black ctermbg=59
hi StatusLineNC ctermfg=black

" User define color for StatusLine (call with %[number]*)
hi User1 ctermfg=black ctermbg=138 " Kind of pink (very pretty ;) )
hi User2 ctermfg=lightyellow ctermbg=darkred

"-------------------"
" My own statusline "
"-------------------"

" Set the special syntastic part of the statusline
let g:syntastic_stl_format = ' [%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w} Tot: %F #%t]'

set statusline=%1* " Use User1 define color (right part)

"In right order: filename, line, column, nbr line, pourcent (line look), pourcent (windows look), filetype , Modified flag
set statusline+=%t\ [Curs:\ %l,\ %c\ -\ %p%%]\ [Tot:\ %L]\ [Win\ %P]\ %y\ %m

set statusline+=%* " Use default StatusLine color (middle part)
set statusline+=%= " Pass right part to left part

set statusline+=%2* " Use User2 define color (left part)

" In right order: help flag, Prewiew Window Flag, RO flag
set statusline+=%(\ %h%)%(\ %w%)%(\ %r%)
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%* " Back to default color

" Enable signs without ':sign' command
let g:syntastic_enables_signs=1

" Open Windows list of error automatically (put 2 for manually open)
let g:syntastic_auto_loc_list=1

" Set syntastic symbols
let g:syntastic_error_symbol = ">>"
let g:syntastic_warning_symbol = "w>"

" Clang compiler for syntastic
let g:syntastic_cpp_compiler='clang++'
let g:syntastic_c_compiler='clang'

" Let syntastic check header
let g:syntastic_c_check_header=1
let g:syntastic_cpp_check_header=1

let g:UltiSnipsSnippetsDir='~/.vim/UltiSnips'

" Disable mouse because it's hell in laptop (all=a, normall=n)
set mouse=""

" When character are type hide mouse
set mousehide

" comment that respect coding style
autocmd FileType c,cpp set comments=sl:/*,m:**,ex:*/

"---------------"
" Vim detection "
"---------------"

autocmd BufNewFile,BufRead *.md setfiletype markdown

set cursorline

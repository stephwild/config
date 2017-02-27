"\=====================/"
"         VIMRC
"\=====================/"


" ------------------------------ "
"  Vundle setup and vim plugins  "
" ------------------------------ "

set nocompatible            " be iMproved, required
filetype off                " required

" Include vundle in the runtime path
set rtp+=~/.vim/bundle/Vundle.vim

" Initialize Vundle
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Plugin 'nanotech/jellybeans.vim'

" All of your Plugins must be added before the following line
call vundle#end()           " required
filetype plugin indent on   " required
syntax enable               " Keep my specific color settings, can use :hi before or after

" ----------------- "
"  General Options  "
" ----------------- "

" Display formating
" =================

set number          " Put line number in window left side
set showmode        " Show mode at all the time
set noruler         " To not see cursor position: already present in statusline
set scrolloff=3

set list listchars=nbsp:¤,trail:·,eol:¬,tab:->
set list

" Love Coding Style
" =================

set textwidth=80    " Limit line width to 80 characters

set expandtab       " tab convert to space
set tabstop=8       " size for an tab, don't change: standard !!
set softtabstop=4   " number of space when press tab button
set shiftwidth=4    " number of space insert automatically for indentation

" comment that respect coding style
autocmd FileType c,cpp set comments=sl:/*,mb:**,ex:*/

" Search Options
" ==============

set hlsearch        " HighLight search
set incsearch       " incrementative search
set ignorecase
set smartcase       " if search have upper char override ignorecase

" Other Options
" =============

set backupdir=~/.vim/backup     " Directory for vim backup files
set directory=~/.vim/swp        " Directory for swap files

" Mouse is hell in laptops !! [all=a, normall=n]
set mouse=""

" Hide mouse when characters are typed
set mousehide

" ---------------------- "
"  Global color Options  "
" ---------------------- "

set t_Co=256                " Vim with 265 colors. So magic !!
set background=dark         " Vim use good colors for dark background
colorscheme jellybeans

set cursorline              " Highlight cursor line

" For tab and trail
hi SpecialKey ctermfg=66

" For eol
hi NonText ctermfg=66

"See better command shell
hi Question ctermfg=Blue term=bold

" -------------------- "
"  StatusLine options  "
" -------------------- "

" General Option
" ==============

set laststatus=2    " Always see StatusLine

" Default color for StatusLine
hi StatusLine ctermfg=black ctermbg=59
hi StatusLineNC ctermfg=black

" User define color for StatusLine (call with %[number]*)
hi User1 ctermfg=black ctermbg=138  " Kind of pink (very pretty ;) )
hi User2 ctermfg=lightyellow ctermbg=darkred

" My own statusline
" =================

" Special syntastic part of the statusline
let g:syntastic_stl_format = ' [%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w} Tot: %F #%t]'

set statusline=%1*      " Use User1 define color (left part)

"In right order: filename, line, column, nbr line, pourcent (line look), pourcent (windows look), filetype , Modified flag
set statusline+=%t\ [Curs:\ %l,\ %c\ -\ %p%%]\ [Tot:\ %L]\ [Win\ %P]\ %y\ %m

set statusline+=%*      " Use default StatusLine color (middle part)
set statusline+=%=      " Pass right part to left part
set statusline+=%2*     " Use User2 define color (right part)

" In right order: help flag, Prewiew Window Flag, RO flag
set statusline+=%(\ %h%)%(\ %w%)%(\ %r%)
set statusline+=%{SyntasticStatuslineFlag()} " Call Syntastic Statusline Part
set statusline+=%*      " Back to default color

" ---------------- "
"  Plugin Options  "
" ---------------- "

" Syntastic Options
" =================

" Enable signs without ':sign' command
let g:syntastic_enables_signs=1

" Open Windows list of error automatically (put 2 for manually open)
let g:syntastic_auto_loc_list=1

" Set syntastic symbols
let g:syntastic_error_symbol = ">>"
let g:syntastic_warning_symbol = "w>"

" Process with python3.4 interpreter
" let g:syntastic_python_python_exe = '/usr/bin/python3.4'

" Static python3.4 checker
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = "--ignore=E302,E261,E128,E127,E265,F841"


" Clang compiler for syntastic
let g:syntastic_c_compiler='clang'
let g:syntastic_cpp_compiler='clang++'

" Add c/c++ compilation flags for syntastic
let g:syntastic_c_compiler_options = '-std=c99'
let g:syntastic_cpp_compiler_options = '-std=c++11'

" Let syntastic check header
let g:syntastic_c_check_header=1
let g:syntastic_cpp_check_header=1

" YouCompleteMe Options
" =====================

let g:ycm_show_diagnostics_ui = 0
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_completion = 1

let g:EclimCompletionMethod = 'omnifunc' " For JAVA, Eclipse completion engine

" Ultisnips Options
" =================

let g:UltiSnipsSnippetsDir='~/.vim/UltiSnips'

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" ----------- "
"  Vim Alias  "
" ----------- "

" Command-line mode
" =================

" Forget to gain administrator privileges... This line save you ;)
" Disallow recursive and nested feature for security purposes
cnoremap w!! w !sudo tee > /dev/null %
cnoremap w!!! w! !sudo tee > /dev/null % " Write on RO file

noremap Y y$ " Vim must be logical

" Move in wrapped line by default
noremap gj j
noremap gk k
noremap j gj
noremap k gk

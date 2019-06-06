set nocompatible
filetype plugin indent on
syntax on


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
       \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Language support plugins
Plug 'jez/vim-better-sml'                 " Better SML support (for 15-150)
  au Filetype sml setlocal conceallevel=2
Plug 'jez/vim-c0'                         " C0 syntax highlighting support (for 15-122)
Plug 'vim-pandoc/vim-pandoc'              " Better Markdown support
Plug 'vim-pandoc/vim-pandoc-syntax'       " Better Markdown support vol. 2


" Functionality/Convenience plugins
Plug 'tpope/vim-commentary'            " Easily comment/uncomment things
Plug 'vim-syntastic/syntastic'         " Syntax checking right in Vim
  hi clear SignColumn
  let g:syntastic_error_symbol = '✘'
  let g:syntastic_warning_symbol = '▲'
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
Plug 'ConradIrwin/vim-bracketed-paste' " Pasting won't mess up formatting anymore
Plug 'airblade/vim-gitgutter'          " Shows Git info in the sidebar
Plug 'scrooloose/nerdtree'             " A file browser in Vim
  " Hit ctrl+n to open NERDTree
  inoremap <C-n> <esc>:NERDTreeToggle<CR>
  nnoremap <C-n> :NERDTreeToggle<CR>

call plug#end()


:set number " show ruler
:set showmatch " show matching brackets

if exists('&breakindent')
  set breakindent              " Indent wrapped lines up to the same level
endif

" Better searching
set incsearch  " search as characters are entered
set hlsearch   " highlight matches
set ignorecase " ignore case when searching lowercase
set smartcase  " don't ignore case when inserting uppercase characters

" Better line number highlighting
highlight clear LineNr
highlight clear SignColumn

" If you prefer spaces to tabs
set tabstop=2     " number of visual spaces per tab
set softtabstop=2 " number of spaces per tab when editing
set shiftwidth=0  " number of spaces for each step of autoindent
set expandtab     " tabs are spaces
set shiftround    " round to multiple of shiftwidth when adjusting indentation
set autoindent    " auto indent on a new line

"Save and compile code
:command RunPy :w !python3
:command RunPython :w !python3
:command Run :w !python3
:command RUn :w !python3
:command RUN : w !python3
:command Runn :w !python3

:command SMLNJ :w !smlnj
:command Smlnj :w !smlnj
:command SMlnj :w !smlnj
:command SMLnj :w !smlnj
:command SMLNj :w !smlnj

:command Coin :w !coin
:command COIN :w !coin
:command COin :w !coin
:command COIn :w !coin
:command Coind :w !coin


"Auto indentation
:filetype indent plugin on

"Allows to backspace hopefully
:set backspace=indent,eol,start

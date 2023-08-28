" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Add numbers to the left-hand side according to the cursor's position
set relativenumber

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Wrap line
set wrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" enable omnicomplete
set omnifunc=syntaxcomplete#Complete

" PLUGINS ---------------------------------------------------------------- {{{
call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'dense-analysis/ale'
    Plug 'sheerun/vim-polyglot'
    Plug 'gilgigilgil/anderson.vim'
    Plug 'chun-yang/auto-pairs'
    Plug 'alvan/vim-closetag'

call plug#end()
" }}}

" Colorscheme ought to come after plugin is declared
colorscheme anderson

" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" Pressing jj while on INSERT mode will have the same effect as the esc key 
inoremap jj <esc>
nnoremap <C-n> :NERDTree<CR>

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree
" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}

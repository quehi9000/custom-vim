let mapleader = " "

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

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

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

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


" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.
	call plug#begin('~/.vim/plugged')
	
	Plug 'dense-analysis/ale'

 	Plug 'preservim/nerdtree'
	
	Plug 'morhetz/gruvbox'
	
	Plug 'preservim/nerdtree'

	Plug 'tpope/vim-surround'
	
	Plug 'tpope/vim-sensible'
	
	Plug 'scrooloose/syntastic'

	Plug 'kien/ctrlp.vim'

	call plug#end()
" }}}

" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

	nnoremap <leader>n :NERDTreeFocus<CR>
	nnoremap <C-t> :NERDTree<CR>
	nnoremap <C-n> :NERDTreeToggle<CR>
	nnoremap <C-f> :NERDTreeFind<CR>
	nnoremap <leader>h :terminal<CR>
	nnoremap <leader>v :vertical terminal<CR>

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}


colorscheme gruvbox
set bg=dark

set splitbelow

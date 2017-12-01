" Activate pathogen
" If error install it manually
call pathogen#infect()

" Cancel the compatibility with Vi
set nocompatible

" Hide buffer (file) instead of abandoning when switching
" to another buffer
set hidden


" Standard vim config
syntax on
set backspace=indent,eol,start
set tabstop=2 softtabstop=0 shiftwidth=2 expandtab smarttab
if has("multi_byte")
  set encoding=utf-8
  setglobal fileencoding=utf-8
else
  echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif


" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Spell check languages
" set spell 
" set spelllang=en


" -- Display
set title                 " Update the title of your window or your terminal
set number                " Display line numbers
set ruler                 " Display cursor position
set wrap                  " Wrap lines when they are too long

set scrolloff=3           " Display at least 3 lines around you cursor
                          " (for scrolling)

set guioptions=T          " Enable the toolbar

" -- Search
set ignorecase            " Ignore case when searching
set smartcase             " If there is an uppercase in your search term
                          " search case sensitive again
set incsearch             " Highlight search results when typing
set hlsearch              " Highlight search results

" -- Beep
set visualbell            " Prevent Vim from beeping
set noerrorbells          " Prevent Vim from beeping

" Use ron colorscheme
colorscheme ron

" Change font
" Use the dark version of Solarized
set guifont=DejaVu\ Sans\ Mono\ 10
set antialias


" netrw configuration
let g:netrw_banner=0        " disable banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" Key mapping alternatives to ESC key
" Press the j 2 times in row
:imap jj <Esc>

" Enable syntax highlighting
syntax enable

" Enable file specific behavior like syntax highlighting and indentation
filetype on
filetype plugin on
filetype indent on

" Suppress startup message LycosaExplorer
let g:LycosaExplorerSuppressPythonWarning = 1

" Recommended settings for Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Add Syntastic language checkers
" let g:syntastic_python_checkers = ['pylint']

" Show file name in status line
set laststatus=2
set statusline=%f

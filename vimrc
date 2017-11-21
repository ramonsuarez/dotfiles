" Activate pathogen for plugin management
" If you get an error> install it
call pathogen#infect()

" Standard vim config
syntax on
set backspace=indent,eol,start
set tabstop=4 shiftwidth=4 expandtab
if has("multi_byte")
  set encoding=utf-8
  setglobal fileencoding=utf-8
else
  echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

" Cancel the compatibility with Vi
set nocompatible

" Spell check languages
set spell 
set spelllang=en


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

" Backspace behaves as expected
" set backspace=indent,eol,start

" Hide buffer (file) instead of abandoning when switching
" to another buffer
set hidden
  
" Enable syntax highlighting
syntax enable
" Enable file specific behavior like syntax highlighting and indentation
filetype on
filetype plugin on
filetype indent on

" Use the dark version of elflord 
 set background=dark
 colorscheme elflord 

" Change font
" Use the dark version of Solarized
set guifont=DejaVu\ Sans\ Mono\ 10
set antialias

" Activate the NERDTree when launching vim
" autocmd vimenter * NERDTree

" Disabling the directional keys
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>
" imap <up> <nop>
" imap <down> <nop>
" imap <left> <nop>
" imap <right> <nop>

" Key mapping alternatives to ESC key
" Press the j 2 times in row
:imap jj <Esc>

" Press the j key followed by the k one
" :imap jk <Esc>

" Press the i 2 times in row
" :imap ii <Esc>

" :imap ` <Esc>

" Shift-Space
" :imap <S-Space> <Esc>

" Alt-Space.
" :imap <M-Space> <Esc>

" Key binging for lusty-explorer
let mapleader=","

" Default params for ack
let g:ackprg="ack -H --nocolor --nogroup --column"
" Add a mark and search
nmap <leader>j mA:Ack<space>
" Add a mark and search for the word under the cursor
nmap <leader>ja mA:Ack "<C-r>=expand("<cword>")<cr>"
nmap <leader>jA mA:Ack "<C-r>=expand("<cWORD>")<cr>"

" Shortcu for CtrlP
let g:ctrlp_map = '<leader>c'

" Defaults syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

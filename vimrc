nmap 0 ^
nmap k gk
nmap j gj

let mapleader = "\<Space>"

nmap <leader>vr :tabe $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>
nmap <leader>co ggVG*y

imap jk <esc>:w<cr>
imap kj <esc>:w<cr>
" imap <C-s> <esc>:w<cr>

set number " shows line numbers
" syntax on
set ruler " shows column numbers
set showmatch " show matching parenthesis
set mouse=a "lets you use the mouse
set linebreak " doesn't break words up
set scrolloff=4 " keep at least 4 lines below cursor
set laststatus=2
set history=1000 " remember a lot more commands and search history
" set undolevels=1000 " remember a lot more undos
set nobackup " no swap files in project dirs
set autowrite " Automatically :write before running commands
" set display=lastline
set statusline=\ %<%l:%v\ [%p]%=%a\ %h%m%r\ %F\
" set colorcolumn=81
" set listchars=tab:┊-
" set list
syntax enable
colorscheme molokai
" colorscheme monokai
" colorscheme jellybeans
" colorscheme onehalfdark 

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-=> <C-w>=


execute pathogen#infect()
filetype plugin indent on

" syntastic plugin settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

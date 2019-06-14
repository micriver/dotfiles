nmap 0 ^

let mapleader = "\<Space>"

nmap <leader>vr :vsplit $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>
" nmap <leader>soz :source ~/dotfiles/zshrc<cr>

imap jk <esc>:w<cr>
imap kj <esc>:w<cr>

set number " shows line numbers
syntax on
set ruler " shows column numbers
set showmatch " show matching parenthesis
set mouse=a "lets you use the mouse
set linebreak " doesn't break words up
set laststatus=2
set history=1000 " remember a lot more commands and search history
set undolevels=1000 " remember a lot more undos
" set display=lastline
set statusline=\ %<%l:%v\ [%p]%=%a\ %h%m%r\ %F\
" set listchars=tab:┊-
" set list
colorscheme jellybeans
" colorscheme onehalfdark 

" if exists('+termguicolors')
"   let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"   let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"   set termguicolors
" endif

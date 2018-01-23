"========== VIM SETTINGS ==============
syntax on
set termguicolors
let g:materialmonokai_italic=1
set background=dark
colorscheme material-monokai
set number

hi! Normal ctermbg=NONE guibg=NONE
hi! Normal ctermbg=NONE guibg=NONE

"========= POWERLINE =================
"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'

"========= VIM KEYBINDS ===============
" toggle between bash and vim
noremap <C-d> :sh<cr>

"============= VIM PLUG ===============
call plug#begin('/home/edj/.vim/plugged')
" plugins
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

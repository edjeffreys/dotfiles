"========== VIM SETTINGS ==============
syntax on
set termguicolors
let g:materialmonokai_italic=1
set background=dark
colorscheme material-monokai
set number

hi! Normal ctermbg=NONE guibg=NONE
hi! Normal ctermbg=NONE guibg=NONE

"========= VIM KEYBINDS ===============
" toggle between bash and vim
noremap <C-d> :sh<cr>

"============= VIM PLUG ===============
call plug#begin('/home/edj/.vim/plugged')
" plugins
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
call plug#end()

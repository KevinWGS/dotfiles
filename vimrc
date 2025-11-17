" === PLUGIN SECTION ===
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'vim-airline/vim-airline-themes'
call plug#end()
"  === BASIC SETTINGS ===
syntax on
set number
set mouse=a
set background=dark
set clipboard=unnamedplus
set termguicolors
set relativenumber
colorscheme catppuccin_mocha
let g:airline_theme = 'catppuccin_mocha'
" === KEYMAPPINGS ===
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
inoremap jk <Esc>

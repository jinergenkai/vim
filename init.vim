call plug#begin('~/AppData/Local/nvim/plugged')
" below are some vim plugins for demonstration purpose.
" add the plugin you want to use here.
" Plug 'joshdick/onedark.vim'
" Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'gruvbox-community/gruvbox'
Plug 'luisiacc/gruvbox-baby' 

Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'

Plug 'scrooloose/nerdtree'
Plug 'vimwiki/vimwiki'

call plug#end()

let g:gruvbox_italic=1
"set background=dark
set t_Co=256
set termguicolors
set scrolloff=10
colorscheme gruvbox



if exists('g:vscode')
    source ~/AppData/Local/nvim/vscode/vscode.vim
	" source ~/AppData/Local/nvim/vscode/vscode-window-commands.vim
endif
"  source ~/AppData/Local/nvim/cp.vim
"  source ~/AppData/Local/nvim/william.vim
source ~\AppData\Local\nvim\pack\github\start\copilot.vim\plugin\copilot.vim

set number relativenumber nowrap
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab smarttab
let mapleader=" "
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
iabbrev @@ jinergenkai@gmail.com
inoremap jk <esc>

"  noremap <uP> <nop>
"  noremap <doWn> <nop>
"  noremap <lefT> <nop>
"  noremap <right> <nop>

autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %<<CR>:!%:r<CR>
autocmd filetype cpp nnoremap <F10> :!%:r<CR>


"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

highlight EndOfBuffer ctermfg=darkblue
nnoremap <F3> :NERDTree<CR>
nnoremap <silent> <expr> <F6> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

"" paste from clipboard
nnoremap <leader>pc ggVG"*P:w<CR>
nnoremap <leader>yc ggVG"*Y:w<CR>

inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}


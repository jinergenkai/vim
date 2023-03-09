call plug#begin('~/AppData/Local/nvim/plugged')
" below are some vim plugins for demonstration purpose.
" add the plugin you want to use here.

" Plug 'joshdick/onedark.vim'
Plug 'olimorris/onedarkpro.nvim'

" Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
"Plug 'gruvbox-community/gruvbox'
"Plug 'luisiacc/gruvbox-baby' 

Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'

Plug 'scrooloose/nerdtree'
Plug 'vimwiki/vimwiki'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'tree-sitter/tree-sitter-c-sharp'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" C# Plugin
"Plug 'omnisharp/omnisharp-vim'

call plug#end()

"let g:gruvbox_italic=1

"set background=dark
set t_Co=256
set termguicolors
set scrolloff=10
colorscheme onedark

"background opacity
"hi Normal guibg=NONE ctermbg=NONE

autocmd FileType cs TSBufEnable highlight



if exists('g:vscode')
    source ~/AppData/Local/nvim/vscode/vscode.vim
	" source ~/AppData/Local/nvim/vscode/vscode-window-commands.vim
endif
"  source ~/AppData/Local/nvim/cp.vim
"  source ~/AppData/Local/nvim/william.vim
source ~\AppData\Local\nvim\pack\github\start\copilot.vim\plugin\copilot.vim
"source ~\AppData\Local\nvim\cs.vim


set number relativenumber nowrap
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab smarttab
let mapleader=" "
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
iabbrev @@ jinergenkai@gmail.com
inoremap jk <esc>

nnoremap <c-p> :Files<cr>

"  noremap <uP> <nop>
"  noremap <doWn> <nop>
"  noremap <lefT> <nop>
"  noremap <right> <nop>

autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %<<CR>:!%:r<CR>
autocmd filetype cpp nnoremap <F10> :!%:r<CR>


"" Switching windows
noremap <leader>j <C-w>j
noremap <leader>k <C-w>k
noremap <leader>l <C-w>l
noremap <leader>h <C-w>h

"" Resize windows
noremap <C-j> :resize -4<CR>
noremap <C-k> :resize +4<CR>
noremap <C-h> :vertical resize -4<CR>
noremap <C-l> :vertical resize +4<CR>

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


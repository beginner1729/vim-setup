colorscheme molokai
set rnu
set nu
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set mouse=a
set clipboard=unnamed
set bs=2
set t_Co=256
set nowrap
set colorcolumn=80
set tw=79
set hlsearch
set listchars=tab:>-,trail:-
set foldmethod=syntax
set foldmethod=indent
set tags=./tags,tags;$HOME
let mapleader = ","

let g:coc_global_extensions = ['coc-json', 'coc-pyright'] 

color wombat256mod


map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
nmap OO O<Esc>j

" List your plugins here

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-sensible'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'tell-k/vim-autopep8'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'davidhalter/jedi-vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'PhilRunninger/nerdtree-visual-selection'


call plug#end()


let g:SimpylFold_docstring_preview = 1  " Enable docstring previews in folds
let g:ifold_mode = 2  " Control how multi-line signatures are folded

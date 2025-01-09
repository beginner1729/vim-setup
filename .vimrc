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
set hidden
set tags=./tags,tags;$HOME
set shortmess+=IFWOA
" Cscope settings
set cscopeverbose  " Enable verbose messages (for debugging)

" Add cscope database automatically if it exists
if filereadable("cscope.out")
  cs add cscope.out
endif

"enable syntax
syntax on


let mapleader = ' '
let maplocalleader = ','

let g:coc_global_extensions = ['coc-json', 'coc-pyright'] 

color wombat256mod

" Space tn for next and tp for previous tab
map <Leader>tp <esc>:tabprevious<CR>
map <Leader>tn <esc>:tabnext<CR>
map <Leader>to <esc>:tabnew<CR>
map <Leader>tx <esc>:tabclose<CR>

" fuzzy search remap
nnoremap <Leader>fs :Files<CR>
nnoremap <Leader>fb :Buffers<CR>
nnoremap <Leader>ff :execute 'Rg ' . expand('<cword>')<CR>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"


" Buffer remaps
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <leader>x :bdelete!<CR>
nnoremap <leader>b :enew<CR>

nnoremap <Up> :set guifont+=h2<CR>
nnoremap <Down> :set guifont-=h2<CR>

" Search tag of the cursorword
nnoremap <Leader>ts :execute 'tag ' . expand('<cword>')<CR>

" Split remaps
nnoremap <leader>v <C-w>v
nnoremap <leader>h <C-w>s
nnoremap <LocalLeader>m :wincmd l<CR>
nnoremap <LocalLeader>n :wincmd h<CR>
nnoremap <LocalLeader>j :wincmd j<CR>
nnoremap <LocalLeader>k :wincmd k<CR>
nnoremap <LocalLeader>w <C-w>w
nnoremap <Leader>c :

set cursorline
highlight CursorLine cterm=bold,underline guifg=Black guibg=LightGray

nnoremap <leader>se <C-w>=
nnoremap <leader>xs :close<CR>
" Press jk fast to exit insert mode
inoremap jk <Esc>
inoremap kj <Esc>

vnoremap p "_dP
vnoremap < <gv
vnoremap > >gv
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
nmap OO O<Esc>
nnoremap <F5> :buffers<CR>:buffer<Space>

" Save faster
nnoremap <Leader>ss :w<CR>

" mapping end of line to caps lock
nnoremap <CapsLock> $

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
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()


let g:SimpylFold_docstring_preview = 1  " Enable docstring previews in folds
l

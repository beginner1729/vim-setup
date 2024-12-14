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
set cscopeprg=  /opt/homebrew/bin/cscope "Or the path to your cscope executable
set cscopeverbose  " Enable verbose messages (for debugging)

" Add cscope database automatically if it exists
if filereadable("cscope.out")
  cs add cscope.out
endif


let mapleader = ' '
let maplocalleader = ' '

let g:coc_global_extensions = ['coc-json', 'coc-pyright'] 

color wombat256mod

" Space tn for next and tp for previous tab
map <Leader>tp <esc>:tabprevious<CR>
map <Leader>tn <esc>:tabnext<CR>
map <Leader>to <esc>:tabnew<CR>
map <Leader>tx <esc>:tabclose<CR>



" Buffer remaps
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <leader>x :bdelete!<CR>
nnoremap <leader>b :enew<CR>


" Search tag of the cursorword
nnoremap <Leader>ts :execute 'tag ' . expand('<cword>')<CR>

" Split remaps
nnoremap <leader>v <C-w>v
nnoremap <leader>h <C-w>s
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

" Search faster
nnoremap <Leader>s *



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

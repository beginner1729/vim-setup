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
set foldmethod=indent
set hidden
set tags=./tags,tags;$HOME
set shortmess+=IFWOA
set spell
set hidden
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

" Wrap the current word in backticks
nnoremap <Leader>` :let @w=expand('<cWORD>')<cr>ciW`<C-r>w`<esc>

" Wrap the current word in double quotes
nnoremap <Leader>" :let @w=expand('<cWORD>')<cr>ciW"<C-r>w"<esc>
" Wrap in Square Brackets []
nnoremap <Leader>[ :let @w=expand('<cWORD>')<cr>ciW[<C-r>w]<esc>

" Wrap in Curly Braces {}
nnoremap <Leader>{ :let @w=expand('<cWORD>')<cr>ciW{<C-r>w}<esc>

" Wrap in Parentheses ()
nnoremap <Leader>( :let @w=expand('<cWORD>')<cr>ciW(<C-r>w)<esc>


" Buffer remaps
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Leader>x ::bnext<bar>bdelete#<CR>
nnoremap <Leader>b :enew<CR>

" navigation in insert mode
"
"
" Search tag of the cursor word
nnoremap <Leader>ts :execute 'tag ' . expand('<cword>')<CR>

" Split remaps
nnoremap <Leader>v <C-w>v
nnoremap <Leader>h <C-w>s
nnoremap <LocalLeader>m :wincmd l<CR>
nnoremap <LocalLeader>n :wincmd h<CR>
nnoremap <LocalLeader>j :wincmd j<CR>
nnoremap <LocalLeader>k :wincmd k<CR>
nnoremap <LocalLeader>w <C-w>w
nnoremap <Leader>c :
nnoremap <Leader>ss :w<CR>


" Toogle hint in python
nnoremap <LocalLeader>h :CocCommand document.toggleInlayHint<CR>

set cursorline
highlight CursorLine cterm=bold,underline guifg=Black guibg=LightGray

nnoremap <Leader>se <C-w>=
nnoremap <Leader>xs :close<CR>
" Press jk fast to exit insert mode
inoremap jk <Esc>
inoremap kj <Esc>

nnoremap <Leader>p :let @1=@2<CR>"1p
vnoremap < <gv
vnoremap > >gv
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
nmap OO O<Esc>
nnoremap <F5> :buffers<CR>:buffer<Space>

" funny font

set guifont=Comic\ Sans\ MS:h13

nnoremap ∆ :m+<CR>==
" Move current line up (Option + k)
nnoremap ˚ :m-2<CR>==
" Move selected block down
vnoremap ∆ :m '>+1<CR>gv=gv
" Move selected block up
vnoremap ˚ :m '<-2<CR>gv=gv 
" mapping end of line to caps lock

"Quoting words with in quotes or tildas
nnoremap <C-q> bi`<Esc>ea`<Esc>

"List your plugins here

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
let g:ifold_mode = 2  " Control how multi-line signatures are folded

let g:coc_disable_diagnostics = 1
autocmd FileType python let b:coc_diagnostic_disable = ['type']


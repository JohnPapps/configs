filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'sjl/gundo.vim'
Bundle 'Lokaltog/vim-powerline'

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['python'],
                           \ 'passive_filetypes': [] }
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_args = '--rcfile=/Users/johnpapanastasiou/.pylintrc'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

filetype plugin indent on

set encoding=utf-8
set termencoding=utf-8
set t_Co=256
let g:Powerline_symbols = 'fancy'
set laststatus=2

nnoremap <F5> :GundoToggle<CR>

set shortmess=atI

set nocompatible

" Remove scrollbar/menu/tabs/etc
set guioptions=a
set mousehide

" Relative line numbers ftw
set rnu

" Colours
if has('syntax')
    syntax on
    colorscheme grb256
endif

set textwidth=78
set colorcolumn=+1
set autoindent
set smartindent
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set ruler
set nohls
set showmatch
set incsearch
set ignorecase
set smartcase

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells
set cursorline
set wildmenu
set wildmode=list:longest,full
set scrolloff=5

" Turn off backup files
set nobackup
set noswapfile

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Toggle list visibility
nmap <silent> <leader>s :set nolist!<CR>
vmap <silent> <leader>c :s/^/#/<CR>

autocmd BufRead *json set tw=0
autocmd BufRead *json set nowrap
autocmd BufRead,BufNewFile *.html set shiftwidth=2
autocmd BufRead,BufNewFile *.html set tabstop=2
autocmd BufRead,BufNewFile *.html set softtabstop=2
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufReadPost * :retab


"" Prevent noob behaviour
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Change long line cursor behavior
nnoremap j gj
nnoremap k gk

" Clear search with :/
nmap <silent> :/ :nohlsearch<CR>

" Allow writing of root owned files with w!!
cmap w!! w !sudo tee % >/dev/null

" Org mode stuff
map <Tab> za

" Fold options
set foldmethod=indent
set foldlevelstart=20

" Scroll viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

if exists("&undofile")
    set undofile " Creates .un~ files that contain undo information.
    set undodir=~/.vim-undo/ " Sets location of undo files directory.
endif

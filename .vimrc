" BASICS
syntax on
set mouse=a
set scrolloff=7
set updatetime=300
set clipboard=unnamedplus
set background=dark
set nowrap
set cursorcolumn
set cursorline


" PLUGINS
call plug#begin()

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()


" TREESITTER
set path+=**
let g:netrw_banner = 0
let g:netrw_liststyle = 3


" SEARCH
set hlsearch
set ignorecase
set smartcase


" TABS
set tabpagemax=15
set showtabline=2


" SPLIT
set splitbelow
set splitright


" FILES
set encoding=utf-8
set fileencoding=utf-8
set noswapfile
set nobackup
set nowritebackup
filetype plugin indent on


" NUMBERS 
set number
" set relativenumber
set signcolumn=no
set numberwidth=5


" TAB SETTINGS 
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4


" FILE TYPE SPECIFICATIONS 
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType lua setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType typescript setlocal ts=2 sts=2 sw=2
autocmd FileType json setlocal ts=2 sts=2 sw=2
autocmd FileType cpp setlocal ts=2 sts=2 sw=2
autocmd FileType python setlocal colorcolumn=80


" MAPS
" Filemanager
map <silent><SPACE>e :Lex 25<CR>

" Move between splited windows
noremap <C-h> <C-w>h 
noremap <C-j> <C-w>j 
noremap <C-k> <C-w>k 
noremap <C-l> <C-w>l 

" Resize splited window
noremap <silent><C-Left> :vertical resize +2<CR>
noremap <silent><C-Right> :vertical resize -2<CR>
noremap <silent><C-Up> :resize +2<CR>
noremap <silent><C-Down> :resize -2<CR>

" No hlsearch
nmap <silent><SPACE>, :nohlsearch<CR>

" Split windows
nmap <silent>ss :split<CR>
nmap <silent>sv :vsplit<CR>

" Moving between tabs
nmap <silent><S-l> :tabn<CR>
nmap <silent><S-h> :tabp<CR>
nmap <silent>tn :tabnew<CR>

" COLORSCHEME
colorscheme sorbet

" Transparent background
hi Normal guibg=NONE ctermbg=NONE

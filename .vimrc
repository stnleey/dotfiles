" BASICS
syntax on
set mouse=a
set scrolloff=10
set updatetime=300
set clipboard=unnamedplus
set background=dark
set nowrap
" set cursorcolumn
" set cursorline


" PLUGINS
call plug#begin()

" Languages
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release' }

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'hardselius/warlock'
Plug 'zaki/zazen'
Plug 'pgdouyon/vim-yin-yang'
Plug 'ewilazarus/preto'
Plug 'andreasvc/vim-256noir'

" Utils
Plug 'preservim/nerdtree'

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
set showtabline=1


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
set signcolumn=yes
set numberwidth=5


" TAB SETTINGS 
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4


" FILE TYPE SPECIFICATIONS 
autocmd FileType html       setlocal ts=2 sts=2 sw=2
autocmd FileType lua        setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType typescript setlocal ts=2 sts=2 sw=2
autocmd FileType json       setlocal ts=2 sts=2 sw=2
autocmd FileType python     setlocal colorcolumn=80
autocmd FileType markdown   setlocal wrap

" format .md file on save
" autocmd BufWritePre *.md normal! ggVGgq


" MAPS
" Filemanager
" map <silent><SPACE>e :Lex 25<CR>
map <silent><SPACE>e :NERDTreeToggle<CR>

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
" colorscheme sorbet
" colorscheme gruvbox
colorscheme desert
" colorscheme lunaperche
" colorscheme warlock
" colorscheme zazen
" colorscheme yin
" colorscheme preto

" ONLY for vim256-noir START ================================
" colorscheme 256_noir
" Change highlighting of cursor line when entering/leaving Insert Mode
" set cursorline
" highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
" autocmd InsertEnter * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c
" autocmd InsertLeave * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
" ONLY for vim256-noir END ==================================

" Transparent background
hi Normal guibg=NONE ctermbg=NONE

" coc completitions
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" coc GoTo navigation
nmap <silent><nowait> gd <Plug>(coc-definition)
nmap <silent><nowait> gy <Plug>(coc-type-definition)
nmap <silent><nowait> gi <Plug>(coc-implementation)
nmap <silent><nowait> gr <Plug>(coc-references)

" coc typehints
nnoremap <silent><nowait> <space>h  :CocCommand document.toggleInlayHint<cr>

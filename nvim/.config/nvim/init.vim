" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/site/autoload/plugged')

Plug 'freeo/vim-kalisi'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'christoomey/vim-tmux-navigator'
Plug 'w0rp/ale'
Plug 'preservim/nerdtree'

" Initialize plugin system
call plug#end()

filetype plugin indent on

""""""""""""""""""""""
" Colors
""""""""""""""""""""""
"
" enable syntax highlighting
syntax enable
set background=dark
colorscheme kalisi

""""""""""""""""""""""
" Spaces & Tabs
""""""""""""""""""""""

" set tabs to have 4 spaces
set tabstop=4

" number of spaces in tab when editing -
set softtabstop=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

set colorcolumn=80

""""""""""""""""""""""
" UI Config
""""""""""""""""""""""

" show line numbers
set number

" highlight current line
set cursorline

" highlight matches
set hlsearch            

" turn off search highlight -
" http://dougblack.io/words/a-good-vimrc.html#search
nnoremap <leader><space> :nohlsearch<CR>

" For csscomplete.vim
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci

nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>

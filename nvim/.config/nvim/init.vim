" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/site/autoload/plugged')

"Plug 'junegunn/vim-easy-align'
Plug 'freeo/vim-kalisi'
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/CSApprox'
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-rooter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-rhubarb'
Plug 'w0rp/ale'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
"Plug 'davidhalter/jedi-vim'
"Plug 'roxma/nvim-completion-manager'
"Plug 'davidhalter/jedi'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'vim-syntastic/syntastic'

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
" http://dougblack.io/words/a-good-vimrc.html#spaces
set softtabstop=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

set colorcolumn=80
"highlight ColorColumn ctermgg=9

""""""""""""""""""""""
" UI Config
""""""""""""""""""""""

" show line numbers
set number

" highlight current line
set cursorline

" highlight matches - http://dougblack.io/words/a-good-vimrc.html#search
set hlsearch            

" turn off search highlight -
" http://dougblack.io/words/a-good-vimrc.html#search
nnoremap <leader><space> :nohlsearch<CR>

""""""""""""""""""""""
"" Backup
""""""""""""""""""""""

" Places vim backups .swp to a backup directory -
" http://dougblack.io/words/a-good-vimrc.html#backup
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" For csscomplete.vim
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci

nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>

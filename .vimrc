"Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"Show orphaned whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

"Rebind <leader> key
let mapleader = ","

"Code foldings
"set foldmethod=indent
"set foldnestmax=2
nnoremap <space> za
vnoremap <space> zf

"Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Removes highlight of last search term
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

"Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod

"Show syntax highlighting
filetype off
filetype plugin indent on
syntax on

"Show line numbers
set number

"Set width of document
set tw=79

"Don't automatically wrap on load
set nowrap

"Don't automatically wrap text when typing
set fo-=t

"Highlight document width
set colorcolumn=80
highlight ColorColumn ctermbg=233

"For setting tab width and changing tabs to spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

"For indenting
set smartindent
set autoindent

"For autocompletion
set wildmode=list:longest

set ruler

"Enable mouse
set mouse=a

"Allow backspace to delete
set bs=2

"For highlighting search results
set hlsearch

"For enabling incremental search, aka search-as-you-type
set incsearch

"Make search case insensitive
set ignorecase
set smartcase

"For toggling paste option to auto-indent pasted text
set pastetoggle=<F6>

"For adjusting colors for dark backgrounds
set background=dark

"Disable backups
set nobackup
set nowritebackup

"Disable swap files
set noswapfile

"Setup Pathogen to manage plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle; \
" curl -so ~/.vim/autoload/pathogen.vim \
"     https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

"Settings for vim-powerline
set laststatus=2

"Settings for python-mode
" mkdir -p bundle && cd bundle
" git clone git://github.com/klen/python-mode.git
let g:pymode_breakpoint=1

"Natural split opening
set splitbelow
set splitright

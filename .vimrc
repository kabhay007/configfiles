" Abhay's .vimrc file

" New mapleader
let mapleader=","

set hidden
filetype off

call plug#begin('~/.vim/plugged')

" My Plugins:
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/L9'
Plug 'Lokaltog/powerline'
Plug 'Lokaltog/vim-easymotion'
Plug 'flazz/vim-colorschemes'
Plug 'klen/python-mode'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'kien/tabman.vim'
Plug 'vim-scripts/matchit.zip'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'w0rp/ale'
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ngmy/vim-rubocop'
Plug 'vim-ruby/vim-ruby'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-rails'
Plug 'tomasiser/vim-code-dark'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-dispatch'

call plug#end()

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
set autoindent
filetype plugin indent on
filetype on

" Show file stats
set ruler
set tabstop=4      " number of visual spaces per TAB
set number
set incsearch           " search as characters are entered
set scrolloff=2
set hlsearch            " highlight matches
set copyindent
set history=10000
set undolevels=1000
set title
set shiftwidth=2
set expandtab
set nobackup
set showcmd     " show command in bottom bar
set showmode
set wildmenu
set showmatch    " highlight matching [{()}]]
set matchtime=2
set laststatus=2
set ch=1
set scrolloff=5
set showtabline=2

" Encoding
set encoding=utf-8
set termencoding=utf-8
" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase

" highlight current line
"set cursorline      " highlight current line   => Was making scrolling slow
set backspace=indent,eol,start

" Displays relative line numbers to present line
"set relativenumber

set cmdheight=2
set winwidth=79
set colorcolumn=80

" use emacs-style tab completion when selecting files, etc
set wildmode=list:longest
set wildchar=<Tab>
set wildcharm=<C-Z>
nnoremap <F10> :b <C-Z>
nnoremap <F5> :GundoToggle<CR>

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set pastetoggle=<F2>

" Because I was irritated from clearing highlighted searches
nmap <silent> <leader><space> :nohlsearch<CR>
nmap <leader><Tab> : <leader>t


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLOR
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
" for vim 8
colorscheme codedark


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STATUS LINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
:set noshowmode
let g:Powerline_symbols = 'fancy'


map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

map <Bar> :vsp
map -     :sp

" Fun with tabs
nmap <leader>t :tabnew<Space>
nmap <leader><Right> :tabnext<cr>
nmap <leader><Left> :tabprevious<cr>

" quoting words
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>

" commenting in different files
augroup file_comments
    autocmd FileType python,sh,zsh,ruby     nnoremap <leader>c I#<esc>
    autocmd FileType javascript        nnoremap <leader>c I//<esc>
augroup END

" Miscellaneous mappings
nnoremap :Q :q
nnoremap :W :w

" Enabling powerline symbols
let g:airline_powerline_fonts=1

" mapping for using TagBar
nnoremap <F8> :TagbarToggle<CR>

" mapping for changing buffers
nnoremap <leader>l :bn<CR>
nnoremap <leader>; :bp<CR>

" Config file for Rubocop
let g:vimrubocop_config = '/Users/abhay/Work/novicap/novicap/.rubocop.yml'

" mapping for rubocop
let g:vimrubocop_keymap = 0
nmap <leader>r :RuboCop<CR>

" Nerdtree settings
map <C-o> :NERDTreeToggle<CR>

" Ctrlp settings
let g:ctrlp_max_files = 0

"tab navigation
" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

" Ignoring .gitignore files for ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" RSpec.vim mappings
map <Leader>s :call RunNearestSpec()<CR>
"let g:rspec_command = "rspec {spec}"
let g:rspec_command = "Dispatch rspec {spec}"

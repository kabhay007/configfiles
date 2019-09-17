" Abhay's .vimrc file v2

" New mapleader
let mapleader=","

set hidden
filetype off

call plug#begin('~/.vim/plugged')

" All Plugs go here =>
Plug 'tomasiser/vim-code-dark'  " The theme I am using
Plug 'majutsushi/tagbar'  " To get a tag window on the right
Plug 'scrooloose/nerdtree'  " Tree like structure of the files
Plug 'ngmy/vim-rubocop'  " Syntax checker for Ruby
Plug 'vim-ruby/vim-ruby'  " => This one makes it slow!
Plug 'tpope/vim-rails'  " => Something for rails. Maybe slow!
"Plug 'ctrlpvim/ctrlp.vim' " Fast file search
Plug 'mileszs/ack.vim'  " Using Ack searching in Vim
Plug '/usr/local/opt/fzf' " Trying FZF for fuzzy matching search 
" Some JS shiz
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

set autoindent
filetype plugin indent on
" filetype on
syntax on

" COLOR
set t_Co=256
colorscheme codedark

set tabstop=2      " number of visual spaces per TAB
set number         " Show line number. To remove: set nonumber
set title
set ignorecase smartcase " make searches case-sensitive only if they contain upper-case charactersj
set history=1000
set backspace=indent,eol,start

" Encoding
set encoding=utf-8 " Sets default encoding vim uses for a file to be utf-8

" mapping for changing buffers. Easier mapping for buffer next/previous.
nnoremap <leader>l :bn<CR>
nnoremap <leader>; :bp<CR>

" Shortcut key to open the tags window
nmap <leader>q :TagbarToggle<CR>

" Nerdtree settings
map <C-o> :NERDTreeToggle<CR>

" Config file for Rubocop
let g:vimrubocop_config = '/Users/abhay/Work/novicap/novicap/.rubocop.yml'

" mapping for rubocop
let g:vimrubocop_keymap = 0
nmap <leader>r :RuboCop<CR>

" Ignoring .gitignore files for ctrlp
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" mapping for FZF
nnoremap <leader>f :FZF<CR>

" Makes Ack faster. (https://github.com/ggreer/the_silver_searcher)
let g:ackprg = 'ag --nogroup --nocolor --column'

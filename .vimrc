set nocompatible              " be iMproved, required
filetype off                  " required
"" Jump between method/class openings and closing tags with %
runtime macros/matchit.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" Define bundle via Github repos
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
" " Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
" filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
execute pathogen#infect()
syntax on
filetype plugin indent on
set transparency=20
colorscheme torte
set number
nnoremap <SPACE> <Nop>
let mapleader = "\<SPACE>"
set ignorecase
set smartcase
set si "smart indent
set noswapfile " tell vim not to make stupid swap file when opening with vim
set wildmenu " visual autocomplete for command menu
set cursorline
set timeoutlen=1000 " used for mapping delays
set showcmd
set tabstop=2       " The width of a TAB is set to 2.
set shiftwidth=2    " Indents will have a width of 2
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set incsearch " searches characters as they are entered
set hlsearch " highlight matches
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro' "show line numbers in directory 
let g:netrw_liststyle=3 " sets the list style for Netrw
let NERDTreeShowLineNumbers=1 " show line numbers in NERDTree
nmap <silent> <leader>d :NERDTreeToggle<CR> 
set laststatus=2 " always show status (wrapped with airline)
set noshowmode " remove mode from status line when using vim airline
set tags=./tags; "" Set the tag file search order
set grepprg=ack " Use Ack instead of Grep

" Edit another file in the same directory as the current file
" " uses expression to extract path from current file's path
map <Leader>e :e <C-R>=escape(expand("%:p:h"),' ') . '/'<CR>
map <Leader>v :vnew <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
map <Leader>ac :sp app/controllers/application_controller.rb<cr>
" Use Leader b to see who wrote the code highlighted
vmap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
" Save with leader w
nnoremap <Leader>w :w<CR>
" Quit with leader q
nnoremap <Leader>q :q<CR>
" " Enter Visual mode with <Space><Space>
nmap <Leader><Leader> V
"" Open file with <Space> O
nnoremap <Leader>o :CtrlP<CR>
"" Git mappings
nnoremap <Leader>gst :Git status<CR>
"" Go to shell
nnoremap <Leader>z <C-Z><CR>
source ~/.vim/rspec

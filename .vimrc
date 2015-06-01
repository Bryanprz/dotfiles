set nocompatible              " be iMproved, required
filetype off                  " required
"" Jump between method/class openings and closing tags with %
runtime macros/matchit.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'thoughtbot/vim-rspec'
Bundle 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'mileszs/ack.vim'
Plugin 'ryanss/vim-hackernews'

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
colorscheme solarized
set background=light
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
" Split vertically with leader v
map <Leader>v :vsp 
map <Leader>ac :e app/controllers/application_controller.rb<cr>
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
"" Switch panes
nnoremap <Leader>ss <C-W>w
"" Scroll Forward
nnoremap <Leader>f <C-F><CR>
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" Search and replace
"   - Search the usual way with /something
"   - Hit 'cs' to replace first match, then hit <Esc>
"   - Hit n.n.n.n, reviewing and replacing all matches
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>
" Drop in Pry to debug. Leader bp
nmap <leader>bp orequire 'pry'; binding.pry<esc>^
" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
" Open VIMRC file with <SPACE> vm
nmap <leader>vm :tabedit $MYVIMRC<CR>
" Open related file in split pane with <SPACE> rv
nmap <leader>rv :RV<CR>
" Open related file in full pane with <SPACE> rr
nmap <leader>rr :R<CR>
" Open Hacker News with <SPACE> hn
nmap <leader>hn :HackerNews<CR>
source ~/.vim/rspec

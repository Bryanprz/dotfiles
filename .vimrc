" ========================================= "
" vimrc mappings, plugins and configuration "
" author: Bryan Perez
" github: https://github.com/bryanprz       "
" ========================================= "

set nocompatible              " be iMproved, required
filetype off                  " required
"" Jump between method/class openings and closing tags with %
runtime macros/matchit.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'mattn/emmet-vim'
"Plugin 'universal-ctags/ctags'
"Plugin 'maxmellon/vim-jsx-pretty'
"Plugin 'tmsvg/pear-tree'
"Plugin 'dense-analysis/ale'
Plugin 'lifepillar/vim-solarized8'
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-unimpaired'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'KabbAmine/vCoolor.vim'
Plugin 'ap/vim-css-color'
"Plugin 'tomlion/vim-solidity'
Plugin 'slim-template/vim-slim'
Plugin 'eslint/eslint'

call vundle#end()

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Vim Unimpaired documentation for navigating files/buffers, etc.
" https://github.com/tpope/vim-unimpaired/blob/master/doc/unimpaired.txt

execute pathogen#infect()
syntax on
filetype plugin indent on

"-- SOLARIZED THEME --
set background=light
colorscheme solarized8
set number
set norelativenumber
set autoread " tell vim to read all file changes outside of vim automatically
nnoremap <SPACE> <Nop>
let mapleader = "\<SPACE>"
set ignorecase
set smartcase
set si "smart indent
set noswapfile " tell vim not to make stupid swap file when opening with vim
set wildmenu " visual autocomplete for command menu
set cursorline
set cursorcolumn
set timeoutlen=1000 " used for mapping delays
set showcmd
set tabstop=4       " The width of a TAB is set to 2.
set shiftwidth=2    " Indents will have a width of 2
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set incsearch " searches characters as they are entered
set hlsearch " highlight matches
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro' "show line numbers in directory
let g:netrw_liststyle=3 " sets the list style for Netrw
let NERDTreeShowLineNumbers=1 " show line numbers in NERDTree
nnoremap <silent> <leader>d :NERDTreeToggle<CR>
set laststatus=2 " always show status (wrapped with airline)
set noshowmode " remove mode from status line when using vim airline
set tags=./tags; "" Set the tag file search order
set grepprg=ack " Use Ack instead of Grep
set guifont=Monaco:h13
set rtp+=/usr/local/opt/fzf

" ========================================= "
" CSS Autocompletion from https://medium.com/vim-drops/css-autocompletion-on-vim-no-plugins-needed-e8df9ce079c7
" ========================================= "
"filetype plugin on
"set omnifunc=syntaxcomplete#Complete

" ========================================= "
" Snippets
" ========================================= "

" Trigger Confirmation
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" Additional UltiSnips config.
let g:UltiSnipsSnippetsDir = '~/.vim/ultisnips'
let g:UltiSnipsSnippetDirectories = ['ultisnips']

" split window
let g:UltiSnipsEditSplit="vertical"

" Prevent ultisnips from removing our carefully-crafted mappings
let g:UltiSnipsMappingsToIgnore = ['autocomplete']

" ========================================= "
" You Complete Me
" ========================================= "

let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_key_list_accept_completion = ['<C-y>', '<Enter>']

" ========================================= "
" NerdTree and CtrlP
" ========================================= "
" set ctrl p search paths to current nerdtree root directory
let g:NERDTreeChDirMode = 2
let g:ctrlp_working_path_mode = 'rw'

" ========================================= "
" Ale and Lint
" ========================================= "
"let g:ale_fixers = {
"\ 'javascript': ['eslint'],
"\ 'javascript.jsx': ['eslint'],
"\ 'ruby': ['rubocop'],
"\ 'cpp': ['clang-format'],
"\ 'css': ['CssBeautify'],
"\}

"let g:ale_linters = {
"\ 'javascript': ['eslint'],
"\ 'javascript.jsx': ['eslint'],
"\ 'css': ['scss-lint', 'csslint'],
"\ 'ruby': ['rubocop', 'brakeman'],
"\}

"let g:ale_lint_on_enter = 0
"let g:ale_lint_on_save = 1
"let g:ale_open_list = 0
"let g:ale_sign_column_always = 1

"" Set this. Airline will handle the rest.
"let g:airline#extensions#ale#enabled = 1

" ========================================= "
" Mappings
" ========================================= "

"Jump to Marks with leader a/b/c
nnoremap <Leader>a `A
nnoremap <Leader>b `B
"" Set mark with ma, mb,
nnoremap ma mA
nnoremap mb mB
" Edit another file in the same directory as the current file
" " uses expression to extract path from current file's path
map <Leader>e :e <C-R>=escape(expand("%:p:h"),' ') . '/'<CR>
" Split vertically with leader v
map <Leader>v :vsp
" Split horizontally with leader h
map <Leader>h :sp
map <Leader>ac :e app/controllers/application_controller.rb<cr>
" Use Leader b to see who wrote the code highlighted
vmap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
" Save with leader w
nnoremap <Leader>w :w<CR>
" Quit with leader q
nnoremap <Leader>q :q<CR>
" Enter Visual mode with <Space><Space>
nmap <Leader><Leader> V
" Open file with leader o; fuzzy finder
nnoremap <Leader>o :Files<CR>
" search tags with leader t; fuzzy finder
nnoremap <Leader>t :Tags<CR>
" let ctrlp find all files
" let g:ctrlp_max_files=0
"" Git mappings
nnoremap <Leader>gst :Git status<CR>
"" Go to shell
nnoremap <Leader>z <C-Z><CR>
"" Switch panes
nnoremap <Leader>k <C-W>w
"" Go to previous pane
nnoremap <Leader>j <C-W>W
"" Scroll Forward
nnoremap <Leader>f <C-F><CR>
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" Search and replace
"   - Search the usual way with /something
"   - Hit 'cs' to replace first match, then hit <Esc>
"   - Hit n.n.n.n, reviewing and replacing all matches.
"   - To replace a match, hit '.'. Otherwise skip with n
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>
" Drop in Pry to debug. Leader bp
nnoremap <leader>bp orequire 'pry'; binding.pry<esc>^
" Drop in Pry in ERB. Leader bpp
nnoremap <leader>bpp o<% require 'pry'; binding.pry %><esc>^
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
" Open alternate file in full pane with <SPACE> aa
nmap <leader>aa :A<CR>
" Open alternate file in split pane with <SPACE> av
nmap <leader>av :AV<CR>
" ERB Tag (non-print) with leader %
nnoremap <leader>% viw<esc>a %><esc>hhbi<% <esc>lllelll
" ERB Tag (print) with leader %=
nnoremap <leader>%= viw<esc>a %><esc>hhbi<%= <esc>lllelll
" Escape mode with jk
inoremap jk <esc>
vnoremap jk <esc>
" Go to related controller with leader cc
nnoremap <leader>cc :Econtroller<CR>
" Go to related schema definition with leader r
nnoremap <leader>r :R<CR>
" Copy/paste without going to visual mode
nnoremap yp vyp<CR>
" Go to related model with leader m
nnoremap <leader>m :Emodel<CR>
" Clear trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e
" Vim-expand-region mappings
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
" Use Enter instead of G for moving to lines/bottom of page
nnoremap <CR> G
vnoremap <CR> G

" Copy & paste to system clipboard with <Space>p and <Space>y
vnoremap <Leader>y "+y
vnoremap <Leader>d "+d
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P

"Move to next tab with leader tn
nnoremap <Leader>tn :tabn<CR>
" Show history with Leader .
nnoremap <Leader>. :ls<CR>
" Delete all marks with Leader
nnoremap <Leader>m :delm A-Z0-9<CR>
" Remove trailing whitespace on save for ruby files.
au BufWritePre *.rb :%s/\s\+$//e
" Use 0 to go to start of text as opposed to start of line
nmap 0 ^
" Move split pane into its own tab with 'leader bt' Switch tabs with 'gt' or 'gT'.
nnoremap <leader>bt <C-w>T
"Use Ag instead of Ack for searching
" Load CTAGS with Ctrl-F12
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
let g:ackprg= 'ag --nogroup --nocolor --column'
"let g:solarized_termcolors=16 " might be outdated because of new solarized8 plugin

" --------------- BUFFERS ---------------
" open buffer with ;
nmap ; :Buffers<CR>

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nnoremap <leader>bq :<c-u>bp <bar> bd #<cr>

" Close all buffers except current one
nnoremap <leader>bd :<c-u>up <bar> %bd <bar> e#<cr>

" Emmet trigger key remap
map ,, <C-y>,

" Auto close quotes and parens
"inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap ` ``<left>

if has("gui_macvim")
  nnoremap <D-j> :tabprevious<CR>
  nnoremap <D-k> :tabnext<CR>

  " Switch to specific tab numbers with Command-number
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>

  " Command-9 goes to the last tab
  noremap <D-9> :tablast<CR>
endif

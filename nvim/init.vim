" Maps 'ç' to save
map çç :w<CR>

" Exit terminal mode
tnoremap <Esc> <leader>q
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set clipboard=unnamedplus
syntax on
filetype plugin indent on
set nocompatible
let mapleader = '\'
set ruler
" Hybrid line numbers
set number relativenumber
set mousemodel=popup
set nocursorline
"" Status bar
set laststatus=2

" Plugins com vim-plug
call plug#begin()

" Lightline
Plug 'itchyny/lightline.vim'

" fugitive
Plug 'tpope/vim-fugitive'

" Rust support
Plug 'rust-lang/rust.vim'

" Rigel theme
Plug 'Rigellute/rigel'

" Syntastic
Plug 'vim-syntastic/syntastic'

" VimWiki
Plug 'vimwiki/vimwiki'

" Vim-lua
Plug 'tbastos/vim-lua'

call plug#end()

" Linewrap with a single command
command! -nargs=* Wrap set wrap linebreak nolist

" Consertando as cores no st
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Vimwiki
let g:vimwiki_list = [{
	\ 'path': '~/vimwiki',
	\ 'template_path': '~/vimwiki/templates/',
	\ 'template_default': 'default',
	\ 'syntax': 'markdown',
	\ 'ext': '.md',
	\ 'path_html': '~/vimwiki/html/',
	\ 'custom_wiki2html': 'vimwiki_markdown',
	\ 'template_ext': '.tpl'}]

map <Leader>wa :VimwikiAll2HTML<CR>
map = `<Plug>VimwikiAddHeaderLevel

" Configurações do netrw
nmap <Leader>= :Lexplore<CR>
let g:netrw_banner = 0
let g:netrw_liststyle = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25

" enable Rigel theme
syntax enable
colorscheme rigel
set t_Co=256
color rigel

" Transparent background
hi Normal guibg=NONE ctermbg=NONE
highlight LineNr ctermfg=NONE ctermbg=NONE

noremap <expr> <silent> <Home> col('.') == match(getline('.'),'\S')+1 ? '0' : '^'
imap <silent> <Home> <C-O><Home>

"So I can move around in insert
inoremap <C-k> <C-o>gk
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <C-o>gj

" Autocomplete brackets, etc.
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

set wrap linebreak nolist
set nofoldenable
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected", "a", "e", "i", "o", "u"]
let g:syntastic_tex_chktex_showmsgs = 0

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
set backspace=indent,eol,start

set gcr=a:blinkon0
set scrolloff=3

let no_buffers_menu=1

set fileformats=unix,dos,mac
set showcmd
set shell=/bin/sh

set nobackup
set noswapfile

set hlsearch
set incsearch
set ignorecase
set smartcase

"" Encoding
set bomb
set ttyfast
set binary
set hidden
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set timeoutlen=250 ttimeoutlen=250
" Tagbar
map <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

"" Open current line on GitHub
noremap ,o :!echo `git url`/blob/`git rev-parse --abbrev-ref HEAD`/%\#L<C-R>=line('.')<CR> \| xargs xdg-open<CR><CR>

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

set cc=80

let g:rigel_lightline = 1
let g:lightline = { 'colorscheme': 'rigel' }
let g:syntastic_enable_racket_racket_checker = 1

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set clipboard=unnamedplus
syntax on
filetype plugin indent on

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

call plug#end()
" Linewrap with a single command
command! -nargs=* Wrap set wrap linebreak nolist


" Consertando as cores no st
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" enable 24bit true color, for Rigel theme
" set termguicolors

" enable Rigel theme
syntax enable
colorscheme rigel

"" color default
"" highlight Constant ctermfg=blue
"" highlight Comment ctermfg=darkgrey
"" highlight jsFuncCall ctermfg=6
noremap <expr> <silent> <Home> col('.') == match(getline('.'),'\S')+1 ? '0' : '^'
imap <silent> <Home> <C-O><Home>
set t_Co=256
color rigel
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-c> :%y+<Return>
nnoremap <C-c> :bp\|bd #<CR>
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
set wrap linebreak nolist
set nofoldenable
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected", "a", "e", "i", "o", "u"]
let g:syntastic_tex_chktex_showmsgs = 0
map <Esc><Esc> :w<CR>

set ruler
set number
set mousemodel=popup
set nocursorline
"" Status bar
set laststatus=2

"" Tabs
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
nnoremap <silent> <S-t> :tabnew<CR>

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
set timeoutlen=10 ttimeoutlen=10
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

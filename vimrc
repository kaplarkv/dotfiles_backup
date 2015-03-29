" Incompatible with vi
set nocompatible

"---------- Plugins ----------"

if filereadable(expand("~/.vim/plugins.vim"))
	source ~/.vim/plugins.vim
endif

"---------- General ----------"

filetype plugin indent on " Filetype detection
syntax on " Syntah highlight
set mouse=a " Use mouse
set mousehide " Hide mouse in insert mode

let mapleader=","

" Clipboard
if has('clipboard')
	if has('unnamedplus')
		set clipboard=unnamed,unnamedplus
	else
		set clipboard=unnamed
	endif
endif

set history=200 " More history(default = 20)

set spelllang=en_us " Spell chech language

set hidden " Change current buffer without saving

set showmode " Show current mode

set cursorline " Highlight current line 

"Ruler
if has('cmdline_info')
	set ruler " Show the ruler
	set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%{fugitive#statusline()}%=%c,%l/%L\ %P
  " set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
	set showcmd " Show partial commands in status line and Selected characters/lines in visual mode
endif

set laststatus=2 " Always show statusline

set relativenumber " Line numbers

set showmatch " Match parentheses

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase
set wrapscan

set scrolloff=3 " Scroll leaves 3 lines

set autoread " Read buffer changes outside of vim

set whichwrap=b,s,h,l,<,>,[,] " Go to next line at end of current

set textwidth=79
set colorcolumn=81

" Turn of swap files
set noswapfile
set nobackup
set nowb

" Persistent undo
if has('persistent_undo')
	silent !mkdir ~/.vim/backups > /dev/null 2>&1
	set undodir=~/.vim/backups
	set undofile
endif

" Command completion
set wildmenu
set wildmode=list:longest,full
set wildignore=*.o,*.obj,*~
set wildignore+=*.png,*.jpg,*.gif

" Invisible characters
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

" Formating
set autoindent
set smartindent

" Disable continuation of comments in new lines
autocmd FileType * setlocal formatoptions-=cro

set smarttab
set shiftwidth=2 " Indent 2 spaces
set softtabstop=2
set tabstop=2
set expandtab " Tab expanded as spaces

" Splits
set splitright
set splitbelow

" Folding
set foldmethod=indent
set foldnestmax=3
set nofoldenable " Do not fold by default

" Disable arrows
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap j gj
nnoremap k gk

"set t_Co=256
colorscheme Mustang

"---------- Plugin and additional settings ----------"

if filereadable(expand("~/.vim/settings.vim"))
	source ~/.vim/settings.vim
endif

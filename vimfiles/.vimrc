" Set this line for Debian based Linux distributions.
runtime! debian.vim

if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype on
  filetype plugin on
  filetype indent off
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set hlsearch		" Enable search highlighting.

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Some global settings.
set tabstop=8
set softtabstop=8
set shiftwidth=8

" Some personal settings.
set ignorecase
set smartcase
set scrolloff=3
set history=1000
"set nu				" Show line numbers along the side.

" Make vim put all same files in same place.
"set backup
"set backupdir=~/.vim/backup
"set directory=~/.vim/tmp

" tab navigation like firefox
nnoremap <C-S-a> :tabprevious<CR>
nnoremap <C-S-z>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-a> <Esc>:tabprevious<CR>i
inoremap <C-A-z>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

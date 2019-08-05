" Make space the leader
let mapleader=" "

filetype plugin on

" load plugins
source $HOME/.config/nvim/plugins.vim

" Hides buffers instead of closing them
set hidden

" Insert spaces when TAB is pressed.
set expandtab

" Change number of spaces that a <Tab> counts for during editing ops
set softtabstop=2

" Indentation amount for < and > commands.
set shiftwidth=2

" Add highlight to the current line and customize it
set cursorline
highlight CursorLine guibg=#100E23

" ignore case when searching
set ignorecase

" if the search string has an upper case letter in it, the search will be case sensitive
set smartcase

" Automatically re-read file if a change was detected outside of vim
set autoread

" Enable line numbers
set relativenumber number

" Set backups
if has('persistent_undo')
  set undofile
  set undolevels=3000
  set undoreload=10000
endif
" set where swap file and undo/backup files are saved
set backupdir=~/.local/share/nvim/backup// " Don't put backups in current dir
set directory=~/.local/share/nvim/swap// " Don't put swaps in current dir
set backup

" Don't show modes, as the airline already does
set noshowmode

" Always display the status line
set laststatus=2

" Make vim stop automatically adding comments on enter press
set formatoptions-=r " For insert mode
set formatoptions-=o " For when hitting "o" in normal mode

" Both options below should make scrolling faster
set ttyfast
set lazyredraw

" Enable wildmenu
set wildmenu

" Show invisible characters
set list
set listchars=tab:»·,trail:·,nbsp:·

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Always use vertical diffs
set diffopt+=vertical

" interactive find replace preview
set inccommand=nosplit

augroup vimrcEx
  autocmd!

  autocmd BufRead,BufNewFile .babelrc,.eslintrc,.prettierrc set filetype=json

  " notify if file changed outside of vim to avoid multiple versions
  autocmd FocusGained * checktime
augroup END

" UI
try
  colorscheme palenight
catch
  colorscheme slate
endtry
set termguicolors
set background=dark

highlight Normal guibg=#1e1c31
highlight CursorLine guibg=#100E23


" Source local config if available
if filereadable($HOME . '/.vimrc.local')
  source ~/.vimrc.local
endif

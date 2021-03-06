" check whether vim-plug is installed and install it if necessary
let plugpath = $HOME.'/.local/share/nvim/site/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom 'Error downloading vim-plug. Please install it manually.\n'
            exit
        endif
    else
        echom 'vim-plug not installed. Please install it manually or install curl.\n'
        exit
    endif
endif

call plug#begin('~/.local/share/nvim/plugged')

Plug '~/.config/nvim/vscode-snippets'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-eunuch'
Plug 'dhruvasagar/vim-prosession'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
" Plug 'junegunn/goyo.vim'
" Plug 'junegunn/vim-peekaboo'
" Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-rooter'
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'Valloric/MatchTagAlways', { 'for': ['jsx', 'tsx'] }
Plug 'wakatime/vim-wakatime'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
" Plug 'semanser/vim-outdated-plugins'
" Plug 'SirVer/ultisnips'
Plug 'farmergreg/vim-lastplace'
" Plug 'kamykn/spelunker.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'justinmk/vim-sneak'
Plug 'nelstrom/vim-visual-star-search'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'roman/golden-ratio'
Plug 'wellle/targets.vim'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'machakann/vim-sandwich'
Plug 'svermeulen/vim-cutlass'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" Plug 'tpope/vim-vinegar'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-renderer-devicons.vim'

" syntax
" Plug 'leafgarland/typescript-vim'
" Plug 'othree/yajs.vim'
" Plug 'mxw/vim-jsx'
Plug 'MaxMEllon/vim-jsx-pretty'
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'ianks/vim-tsx'
Plug 'pangloss/vim-javascript'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'sheerun/vim-polyglot'

" theme
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep-vim' }

call plug#end()

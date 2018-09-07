set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" features
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'rhysd/github-complete.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" languages and file types
Plug 'elzr/vim-json'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'elmcast/elm-vim'
Plug 'rust-lang/rust.vim'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

" theme
Plug 'arcticicestudio/nord-vim'

call plug#end()

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
map <C-n> :NERDTreeToggle<CR>
" open fzf
map <C-p> :Files<CR>
nmap <C-\> :Buffers<CR>

let g:vim_json_syntax_conceal = 0
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" vcs visualize
let g:signify_vcs_list = [ 'git', 'hg' ]

" language go
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']

" language elm
let g:elm_format_autosave = 1
let g:elm_syntastic_show_warnings = 1

" language rust
let g:rustfmt_autosave = 1
let g:syntastic_rust_checkers = ['cargo']

" prettier
let g:prettier#config#tab_width = 4

filetype on
syntax on

set encoding=utf8
set hlsearch

set tabstop=4
set shiftwidth=4
set expandtab

set autoindent
set smartindent

set showtabline=2
"set mouse=a

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

set exrc
set secure
set laststatus=2

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

colorscheme nord

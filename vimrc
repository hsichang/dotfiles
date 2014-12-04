" ===================
" > VIM Configuration
" ===================

set nocompatible                  " Be iMproved, required
filetype off                      " required

set rtp+=~/.vim/bundle/Vundle.vim " Set the runtime path to include Vundle and initialize

" Plugin configuration via Vundle.
" Keep Plugin commands between vundle#begin/end.
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to " auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
"
call vundle#begin()               " let Vundle manage Vundle, required

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'cakebaker/scss-syntax.vim'

call vundle#end()                  " required

" Syntax and highlighting
filetype plugin indent on         " Turn on file type detection, required.
syntax enable                     " Turn on syntax highlighting.

" Plugins
runtime macros/matchit.vim        " Load the matchit plugin. Use % to toggle through tags

" Tabs and spacing
set backspace=indent,eol,start    " Intuitive backspacing.
set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set expandtab                     " Use spaces instead of tabs

" Searching
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

" UI Config
set title                         " Set the terminal's title

set hidden                        " Handle multiple buffers better.
set number                        " Show line numbers.
set ruler                         " Show cursor position.
set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set visualbell                    " No beeping.
set laststatus=2                  " Show the status line all the time

set scrolloff=5                   " Show 3 lines of context around the cursor.
set wrap                          " Turn on line wrapping.

" Set statusline display
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

" Tab navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Command line interface
set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
set autoread                      " Autoreload files modified outside of vim

" Supress backup creation
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

" File formatting
autocmd BufWritePre * :%s/\s\+$//e    " Remove whitespace from the end of lines and files

" Fix the color scheme here and
" Update the plugins
" Place all above
"
" Or use vividchalk
colorscheme vividchalk

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Uncomment to use Jamis Buck's file opening plugin
"map <Leader>t :FuzzyFinderTextMate<Enter>

" Automatic fold settings for specific files. Uncomment to use.
" autocmd FileType ruby setlocal foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2


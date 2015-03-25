set nocompatible                         "choose no compatibility with legacy vi

"" vim-plug setup
let g:vim_plug_path = expand('~/.vim/vimrc.vim-plug')
if filereadable(vim_plug_path)
    execute 'source' vim_plug_path
endif

"" Syntax settings
syntax enable                      " enable color coding of syntax
filetype plugin indent on          " enable loading filetype and indent settings

" do not auto comment next line
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

"" Colors
set t_Co=256                                 " enable 256 color use for terminal
colorscheme solarized

highlight Normal ctermbg=None                " transparent Background
highlight Comment cterm=standout,bold        " make comments easier to see
highlight ColorColumn ctermbg=235            " colorcolumn color

"" General Display
set encoding=utf-8

set nowrap				           " don't wrap lines
set number                                         " enable line numbers
set showcmd                                        " display incomplete commands
set wildmenu                                       " graphical autocomplete
set lazyredraw                                     " redraw only when needed
set cursorline                                     " highlight current line

set textwidth=80                                   " highlight columns that ...
set colorcolumn=+1                                 " ... extend past textwidth

"" Tabs
set expandtab			   " use spaces not tabs
set softtabstop=4	           " a tab is four spaces
set shiftwidth=4	           " indent is four spaces
set backspace=indent,eol,start     " backspace through everything in insert mode

"" Searching
set hlsearch	           " highlight matches
set incsearch	           " incremental searching
set ignorecase             " searchs are case insensitive ...
set smartcase	           " ... unless they contain at least one capital letter

"" Built in text completion
set omnifunc=syntaxcomplete#Complete              " built in text completion

"" Mappings
inoremap jj <Esc>
inoremap jk <Esc>

noremap :nt :NERDTree
nnoremap <CR> :nohlsearch<CR><CR>         " turn off highlighting with enter key
nnoremap gV `[v`]                         " highlight last inserted

"" Common typos
command WQ wq
command Wq wq
command W w
command Q q
command Tabe tabe

"" Shortcuts for splitting windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

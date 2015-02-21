set nocompatible                         "choose no compatibility with legacy vi
filetype plugin indent on

"" vim-plug setup
let vim_plug_path = expand('~/.vim/vimrc.vim-plug')
if filereadable(vim_plug_path)
    execute 'source' vim_plug_path
endif 

"" Font, colorscheme, and general display
syntax enable                                    " enable color coding of syntax
set encoding=utf-8
set showcmd                                      " display incomplete commands

colorscheme solarized
if has ('gui_running' )
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11
    set guioptions-=T                        " remove toolbar in gui
    set guioptions-=m                        " remove menubar in gui
    set guioptions-=r                        " remove scrollbar in gui
    set background=dark                      " toggle dark background, alt=light
else
    set t_Co=256                             " enable 256 color use for terminal
    highlight Normal guibg=NONE ctermbg=NONE " Transparent Background
endif

" Columns
set textwidth=80                                    " highlight columns that ...
set colorcolumn=+1                                  " ... extend past textwidth
highlight ColorColumn ctermbg=DarkGrey guibg=Black

"" Whitespace
set nowrap				           " don't wrap lines

"" Tabs
"set tabstop = shiftwidth = 4	       " a tab is four spaces
set expandtab			           " use spaces not tabs
set backspace=indent,eol,start     " backspace through everything in insert mode

"" Searching
set hlsearch	           " highlight matches
set incsearch	           " incremental searching
set ignorecase             " searchs are case insensitive ...
set smartcase	           " ... unless they contain at least one capital letter
set number                 " enable line numbers

"" Completion
set omnifunc=syntaxcomplete#Complete

"" Mappings
inoremap jj <Esc>
inoremap jk <Esc>
noremap :nt :NERDTree
nnoremap <CR> :nohls<CR><CR>  

"" Common typos
command WQ wq
command Wq wq
command W w
command Q q
command Tabe tabe

"" Running script in vim window
command R !./%

"" Shortcuts for splitting windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

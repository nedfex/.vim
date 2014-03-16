"" Vundle Setup
set nocompatible                                        " choose no compatibility with legacy vi
filetype off                                            " required for vundle
if filereadable(expand('~/.vim/vimrc.vundle'))
  source ~/.vim/vimrc.vundle
endif
filetype plugin indent on                               " required for vundle

"" Font, colorscheme, and general display
syntax enable                                           " enable color coding of syntax
set encoding=utf-8
set showcmd				                                      " display incomplete commands

colorscheme gruvbox                                     " set colorscheme to gruvbox
if has ('gui_running' )
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11
  set guioptions-=T                                     " remove toolbar in gui
  set guioptions-=m                                     " remove menubar in gui
  set guioptions-=r                                     " remove scrollbar in gui
  set background=dark                                   " toggle dark background, alt=light
else
  set t_Co=256                                          " enable 256 color use for terminal
  hi Normal guibg=NONE ctermbg=NONE                     " Transparent Background
endif

" Columns
set textwidth=100                                       " highlight columns that ...
set colorcolumn=+1                                      " ... extend past textwidth
highlight ColorColumn ctermbg=DarkGrey guibg=Black

"" Whitespace
set nowrap				                " don't wrap lines
set tabstop=4 shiftwidth=4	      " a tab is two spaces
set expandtab			                " use spaces not tabs
set backspace=indent,eol,start    " backspace through everything in insert mode

"" Searching
set hlsearch	                    " highlight matches
set incsearch	                    " incremental searching
set ignorecase                    " searchs are case insensitive ...
set smartcase	                    " ... unless they contain at least one capital letter
set number                        " enable line numbers

"" Completion
set omnifunc=syntaxcomplete#Complete

"" Mappings
inoremap jj <Esc>
inoremap jk <Esc>
command WQ wq
command Wq wq
command W w
command Q q
noremap :nt :NERDTree
nnoremap <CR> :nohls<CR><CR>

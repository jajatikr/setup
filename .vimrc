" General
syntax enable
set laststatus=2
set title                           " change the terminal's title
set number	                        " Show line numbers
set showmatch	                    " Highlight matching brace
set visualbell                      " don't beep
set noerrorbells                    " don't beep

set hlsearch	                    " Highlight all search results
set smartcase	                    " Enable smart-case search
set ignorecase	                    " Always case-insensitive
set incsearch	                    " Searches for strings incrementally

" Indenting:
set autoindent	                    " Auto-indent new lines
set copyindent                      " copy the previous indentation on autoindenting
set shiftwidth=4                    " Number of auto-indent spaces
set smarttab                        " insert tabs on the start of a line according to
                                    " shiftwidth, not tabstop
set expandtab                       " tabs are spaces
set tabstop=4                       " Number of visual spaces per TAB
set softtabstop=4                   " Number of spaces in tab when editing

" Advanced
set ruler                           " Show row and column ruler information
set undolevels=1000                 " Number of undo levels
set backspace=indent,eol,start      " allow backspacing over everything in insert mode

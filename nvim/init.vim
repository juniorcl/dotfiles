"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                             "
"                                               nvim config                                   "
"                                                                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" nvim theme
"""""""""""""
colorscheme chroma

"" enable syntax
""""""""""""""""
syntax on

"" enable numbers
"""""""""""""""""
set number

"" line break
"""""""""""""
set nowrap

"" autosave 'aw'
""""""""""""""""
set autowrite 

"" show ruler
"""""""""""""
set ruler

"" allows to move with the arrows where there's no text
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ve=all

"" ignores lowerscase while searching 'ic'
""""""""""""""""""""""""""""""""""""""""""
set ignorecase

"" enable autoindentation
"""""""""""""""""""""""""
set ai

"" tabs are 4-space size 'ts'
"""""""""""""""""""""""""""""
set tabstop=4

"" tabs are converted to spaces 'et'
""""""""""""""""""""""""""""""""""""
set expandtab

"" when the 'autoindent' do a tab, it's converted to 4-spaços size
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set shiftwidth=4

"" key returns 4 spaces when in indentation
"""""""""""""""""""""""""""""""""""""""""""
set softtabstop=4

"" show file name
"""""""""""""""""
set title

"" use colors that lock better with the black background
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark

"" show the closing of {[( 'sm'
"""""""""""""""""""""""""""""""
set showmatch

"" make smart search 'scs' 
""""""""""""""""""""""""""
set smartcase

"" use magic to search
""""""""""""""""""""""
set magic

"" it does incremental search 'is'
""""""""""""""""""""""""""""""""""
set incsearch

"" brand the result 'hls'
"""""""""""""""""""""""""
set hlsearch

"" to complete with tab like bash (use CTRL+P)
""""""""""""""""""""""""""""""""""""""""""""""
set wildmode=longest,list

"" number of changes that can be undone 'ul'
""""""""""""""""""""""""""""""""""""""""""""
set undolevels=500

"" no swap file
"""""""""""""""
set noswapfile

"" Set .swap's directory
""""""""""""""""""""""""
"set directory=~/.nvim/.swp

"" highlights the current line
""""""""""""""""""""""""""""""
"set cul

" Plugins directory
call plug#begin('~/.local/share/nvim/plugged')

" Plugins list

Plug 'joshdick/onedark.vim' " Theme but terminal
Plug 'scrooloose/nerdtree' " Files explorer
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'  " Theme but airline
Plug 'Yggdroot/indentLine' " Show the indentations levels with line verticals
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-syntax' " General auto-complete font
Plug 'ervandew/supertab' " Allow navegate into deoplete suggest use <TAB>
Plug 'sheerun/vim-polyglot' " Collection of various syntax highlighting plugins 
Plug 'jiangmiao/auto-pairs' " Insert pairs of quotes and parentheses

call plug#end()

" Plugins configurations

" onedark configuration
set termguicolors  " Activate true colors in terminal
" onedark.vim override: Don't set a background color when running in a terminal;
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

if(has("termguicolors"))
    hi LineNr ctermbg=NONE guibg=NONE
endif

colorscheme onedark  " Activate theme onedark
let g:airline_theme = 'onedark'

" nerdtree configuration
let g:NERDTreeChDirMode = 2  " Change actual directory to actual principal node
" Open/close NERDTree with F2
map <F2> :NERDTreeToggle<CR>

" airline configuration
let g:airline#extensions#tabline#enabled = 1  " Show buffers open (like tabs)
let g:airline#extensions#tabline#fnamemod = ':t'  " Show only the file name

" Set font Powerline and Symbols
let g:airline_powerline_fonts = 1

set noshowmode  " No show the mode actual

" indentLine configuration
" No show some type buffers and files
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" Deoplete configuration
" Activate deoplete to init Neovim
let g:deoplete#enable_at_startup = 1

" Close automatic the preview window
augroup deopleteCompleteDoneAu
  autocmd!
  autocmd CompleteDone * silent! pclose!
augroup END

" supertab configuration
" Reverse navegation direction ( up to down)
let g:SuperTabDefaultCompletionType = '<c-n>'

" Personal configurations
set title " Show the file name in the terminal windows
set number " Add line numbers
set showmatch " Show matching

set ignorecase " Case insensitive
set smartcase " No ignore capital letter to do search
syntax on " Syntax highlighting
set spelllang=en.es " Correct words with dictionary in english and spanish

set hlsearch " Highlight search
set incsearch " Incremental search

set expandtab " Converts tabs to white space
set autoindent " Indent a new line the same amount as the line just typed
set softtabstop=4 " See multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=2 " width for autoindents
set tabstop=4 " Number of columns occupied by a tab

set clipboard=unnamedplus " using system clipboard

set ttyfast " Speed up scrolling
set cursorline "Highlight current cursorline
set cursorcolumn " Highlight current cursorcolumn
set nowrap " Do no split the line if this is large

set hidden " Allow change of buffers without save

set mouse=v " Middle-click paste with
set mouse=a " Enable mouse click for nvim

set wildmode=longest,list " Get bash-like tab completions
set cc=160 " Set an 120 column border for good coding style

"Fix cursor replacement after closing nvim
set guicursor=
"Shift + Tab does inverse tab
inoremap <S-Tab> <C-d>

"wrap to next line when end of line is reached
set whichwrap+=<,>,[,]

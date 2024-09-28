:set number
:set encoding=utf-8
:set noswapfile
:set relativenumber
:set tabstop=4
:set softtabstop=4
:set mouse=a
:set nocompatible
:set nobackup

call plug#begin()

" Lean & mean status/tabline for vim that's light as air
Plug 'https://github.com/vim-airline/vim-airline'

" provides mappings to easily delete, change and add such surroundings in pairs
Plug 'https://github.com/tpope/vim-surround'

" comment text with gcc and gc
Plug 'https://github.com/tpope/vim-commentary'

" beautiful icons support
Plug 'https://github.com/ryanoasis/vim-devicons'

" autocompletion tool
Plug 'https://github.com/davidhalter/jedi-vim'

" theme
Plug 'https://github.com/sainnhe/everforest'

" syntax highlighting python
Plug 'https://github.com/vim-python/python-syntax'

" autoident for python
Plug 'https://github.com/Vimjas/vim-python-pep8-indent'

" vim file manager 
Plug 'https://github.com/preservim/nerdtree'

" :Autopep8 to format code
Plug 'https://github.com/tell-k/vim-autopep8'

" color name highlighter
Plug 'https://github.com/ap/vim-css-color'

" multiple cursors support
Plug 'https://github.com/terryma/vim-multiple-cursors'

call plug#end()


:colorscheme everforest

" disable auto popup after dot operator
let g:jedi#popup_on_dot = 0
" disable docstring after typing func/class name
let g:jedi#show_call_signatures = "0"

inoremap jk <esc>
nnoremap ,<space> :nohlsearch<CR>

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

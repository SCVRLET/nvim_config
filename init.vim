:set number
:set encoding=utf-8
:set noswapfile
:set relativenumber
:set tabstop=4
:set softtabstop=4
:set mouse=a
:set nocompatible
:set nobackup
:set expandtab

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

" themes
Plug 'https://github.com/folke/tokyonight.nvim'
Plug 'https://github.com/sainnhe/everforest'
Plug 'https://github.com/nordtheme/vim'
Plug 'https://github.com/dracula/vim'

" syntax highlighting python
Plug 'https://github.com/numirias/semshi', { 'do': ':UpdateRemotePlugins' }

" autoident for python
Plug 'https://github.com/Vimjas/vim-python-pep8-indent'

" vim file manager 
Plug 'https://github.com/preservim/nerdtree'

" :Autopep8 to format code
Plug 'https://github.com/tell-k/vim-autopep8'

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

" Jinja2 syntax file for vim with the ability to detect either HTML or Jinja
Plug 'https://github.com/Glench/Vim-Jinja2-Syntax'

" color name highlighter
Plug 'https://github.com/ap/vim-css-color'

" multiple cursors support
Plug 'https://github.com/terryma/vim-multiple-cursors'

" css syntax support
Plug 'https://github.com/hail2u/vim-css3-syntax'

" HTML5 + inline SVG omnicomplete function, indent and syntax for Vim
Plug 'https://github.com/othree/html5.vim'

" Distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing
Plug 'https://github.com/elzr/vim-json'

" tags closing
Plug 'https://github.com/alvan/vim-closetag'

" telescope and telescope's dependency
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }

call plug#end()

" START CUSTOM EXTENSIONS 

let g:last_session = ''

" load session from path and save session's path 
function! LoadSession(session_file)
    if filereadable(a:session_file)
        execute 'source ' . a:session_file
        let g:last_session = a:session_file
        echo "Session loaded: " . a:session_file
    else
        echo "Session file not found: " . a:session_file
    endif
endfunction

function! AutoSaveSession()
    if filereadable(g:last_session)
        execute 'mksession! ' . g:last_session
        echo "Session saved: " . g:last_session
    endif
endfunction

autocmd VimLeavePre * call AutoSaveSession()

command! -nargs=1 -complete=file LoadSession call LoadSession(<f-args>)

" END CUSOM EXTENSIONS


:colorscheme tokyonight 
:hi Normal guibg=NONE ctermbg=NONE


" disable auto popup after dot operator
let g:jedi#popup_on_dot = 0
" disable docstring after typing func/class name
let g:jedi#show_call_signatures = "0"
" show definition in new tab
let g:jedi#use_tabs_not_buffers = 1


inoremap jk <esc>
nnoremap ,<space> :nohlsearch<CR>

nnoremap <C-t> :NERDTreeToggle<CR>

nnoremap ,ff <cmd>Telescope find_files <cr>
nnoremap ,fg <cmd>Telescope live_grep<cr>

lua require('_telescope')

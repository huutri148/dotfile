syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set guicursor=
set relativenumber
set expandtab 
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch 
set termguicolors
set scrolloff=8
syntax on

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'
Plug 'valloric/youcompleteme'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'mxw/vim-jsx'
Plug 'dense-analysis/ale'
call plug#end()




colorscheme gruvbox
set background=dark




let mapleader=","
" Custom NerdTree
nmap <leader>ne  :NERDTree<cr>
nmap <leader>tg  :NERDTreeToggle<cr>
nmap <leader>to :NERDTreeFocus<cr>

"Custom vim
nmap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30 <cr>
nmap <leader>+ :vertical resize +5 <cr>
nmap <leader>- :vertical resize -5 <cr>

"Custom Prettier
nmap <leader>py  :Prettier<cr>




let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

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
Plug 'ryanoasis/vim-devicons'                                                   
Plug 'vim-airline/vim-airline'                                                  
Plug 'vim-airline/vim-airline-themes'                                           
Plug 'rafi/awesome-vim-colorschemes'                                            
Plug 'sheerun/vim-polyglot'            
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
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
call plug#end()




colorscheme gruvbox
set background=dark
highlight Comment cterm=italic gui=italic        



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


" open vimrc in vertical split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" update changes into current buffer
nnoremap <leader>sv :source $MYVIMRC<cr>  
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}




nnoremap <C-p> :Files <Cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>





" run code
augroup compileandrun
    autocmd!
    autocmd filetype python nnoremap <f5> :w <bar> :!python3 % <cr>
    autocmd filetype cpp nnoremap <f5> :w <bar> !gcc -std=c++11 % <cr> :vnew <bar> :te
    autocmd filetype cpp nnoremap <f6> :vnew <bar> :te "a.exe" <cr>
    autocmd filetype c nnoremap <f5> :w <bar> !make %:r && ./%:r <cr>
augroup END

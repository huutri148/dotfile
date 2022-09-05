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
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'mileszs/ack.vim'
Plug 'ryanoasis/vim-devicons'                                                   
Plug 'vim-airline/vim-airline'                                                  
Plug 'vim-airline/vim-airline-themes'                                           
Plug 'rafi/awesome-vim-colorschemes'                                            
Plug 'sheerun/vim-polyglot'            
Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'xavierd/clang_complete'
Plug 'jiangmiao/auto-pairs'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'alvan/vim-closetag'
Plug 'terryma/vim-multiple-cursors'
Plug 'mxw/vim-jsx'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ap/vim-css-color'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'neoclide/coc-tsserver',{'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-pairs', {'do': 'yarn install --frozen-lockfile'}
Plug 'iamcco/coc-angular', {'do': 'yarn install --frozen-lockfile && yarn build'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}



" Syntax hightlight for .js
Plug 'pangloss/vim-javascript'
" Syntax highlight for .tsx
Plug 'ianks/vim-tsx', { 'for': 'typescript.tsx' }
" Syntax highlight for .ts
Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }
" css3 syntax highlight
Plug 'hail2u/vim-css3-syntax'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'

" commenting text
Plug 'tpope/vim-commentary'

" Smart replace, abbreviations, convert case
Plug 'tpope/vim-abolish'

" Multifile replace
Plug 'wincent/ferret'

" Show list of merge conflicts
Plug 'wincent/vcs-jump'
" Highlink yank for a second
Plug 'machakann/vim-highlightedyank'





"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-telescope/telescope.nvim'
"Plug 'nvim-telescope/telescope-fzf-native.nvim'
call plug#end()

colorscheme gruvbox
set background=dark
highlight Comment cterm=italic gui=italic        

" Move between split screen
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h




let mapleader="\<Space>"
" Custom NerdTree
nmap <leader>ne  :NERDTree<cr>
nmap <leader>tg  :NERDTreeToggle<cr>
nmap <leader>nf :NERDTreeFocus<cr>

"Custom vim
nmap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30 <cr>
nmap <leader>+ :vertical resize +5 <cr>
nmap <leader>- :vertical resize -5 <cr>

"Custom Prettier
nmap <leader>py  :Prettier<cr>

"Coc
nmap <leader>gd <Plug>(coc-definition) 
nmap <leader>gr <Plug>(coc-references) 
nnoremap <C-p> :GFiles<cr>



"Split screen
nmap <leader>s   :split<CR>
nmap <leader>v   :vsplit<CR>
nmap <leader>sx<left>   :leftabove  vsplit<CR>
nmap <leader>sx<right>  :rightbelow vsplit<CR>
nmap <leader>sx<up>     :leftabove  split<CR>
nmap <leader>sx<down>   :rightbelow split<CR>

"Tab
nmap <leader>tn   :tabnew<CR>
nmap <leader>to  :tabonly<CR>
nmap <leader>tc   :tabclose<CR>



" open vimrc in vertical split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" update changes into current buffer
nnoremap <leader>sv :source $MYVIMRC<cr>  
" EMMET 
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

 " path to directory where library can be found
 let g:clang_library_path='/usr/lib/llvm-3.8/lib'
 " or path directly to the library file
 let g:clang_library_path='/usr/lib64/libclang.so.3.8'


let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nmap <Leader>gu <Plug>(VcsJump)

"Plugin FZF
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <C-f> :GFiles<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR> 

"Snippet
let g:UltiSnipsExpandTrigger="<tab>"
" list all snippets for current filetype
let g:UltiSnipsListSnippets="<c-l>"

" Multicursor
" Default highlighting (see help :highlight and help :highlight-link)
highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual



""" Auto close tag
let user_emmet_expandabbr_key = '<c-e>'

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
" run code
augroup compileandrun
    autocmd!
    autocmd filetype python nnoremap <f5> :w <bar> :!python3 % <cr>
    autocmd filetype cpp nnoremap <f5> :w <bar> !gcc -std=c++11 % <cr> :vnew <bar> :te
    autocmd filetype cpp nnoremap <f6> :vnew <bar> :te "a.exe" <cr>
    autocmd filetype c nnoremap <f5> :w <bar> !make %:r && ./%:r <cr>
augroup END




" The silver search
let g:ackprg = 'ag --nogroup --nocolor --column'





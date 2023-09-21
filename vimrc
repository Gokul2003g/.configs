" Load plugin files for different languages
filetype plugin indent on
" Relative numbers to the files | number 
set relativenumber
" Provides basic syntax highlighting
syntax on
" Set tab size to 4
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab autoindent smartindent
" Enable mouse in vim session
set mouse=a
" Highlights the search results
set hlsearch
" Wraps text when it crosses a line 
set wrap
" Used to provide auto complete in the command mode
set wildmenu

" Disable ALE by default
let g:ale_enabled = 0

let mapleader=" "

" Vim plugins
call plug#begin()

Plug 'w0rp/ale'
Plug 'chiel92/vim-autoformat'
Plug 'neoclide/coc.nvim'
Plug 'junegunn/fzf'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'

call plug#end()


" Tab completion for coc.nvim
" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

" Use Tab ans S-Tab to traverse autocompletion
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" Toggle for NERDTree
inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>

" Used for bracket completion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                    	    \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Opens fzf using <c-p> or just FZF | user commands dont start w small letters
nnoremap <silent> <C-p> :FZF<CR>

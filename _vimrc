call plug#begin('~/.vim/plugged')

" ファイルツリー
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
" 括弧系のやつ
Plug 'tpope/vim-surround'
" コメントアウト
Plug 'tomtom/tcomment_vim'
" Vue.js
Plug 'posva/vim-vue'
" ペア記号補完
Plug 'cohama/lexima.vim'

call plug#end()

set number
set autoindent
set shiftwidth=2
set tabstop=2
set smartindent
set nowrap
nnoremap <silent><C-f> :NERDTreeToggle<CR>
autocmd FileType vue syntax sync fromstart

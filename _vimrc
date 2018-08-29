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
" 見た目カスタマイズ
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

set number
set autoindent
set shiftwidth=2
set tabstop=2
set expandtab
set smartindent
set nowrap
set list
set listchars=tab:»-,trail:･,nbsp:%,eol:↲
nnoremap <silent><C-f> :NERDTreeToggle<CR>
" vimgrepのカスタマイズ
nnoremap [q :cprev<CR>
nnoremap ]q :cnext<CR>
nnoremap [Q :<C-u>cfirst<CR>
nnoremap ]Q :<C-u>clast<CR>
inoremap <C-l> <Right>
inoremap <C-h> <Left>
autocmd FileType vue syntax sync fromstart

" 見た目
" 行番号薄く
hi LineNr ctermfg=245
" 行番号ハイライト
set cursorline
hi clear CursorLine

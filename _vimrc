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
" airlineの表示項目
" let g:airline_section_a = airline#section#create(['mode', 'crypt'])
" let g:airline_section_b = airline#section#create(['branch'])
" let g:airline_section_c = airline#section#create(['filename'])
" let g:airline_section_x = airline#section#create(['tagbar', 'filetype'])
" let g:airline_section_y = airline#section#create(['fileencoding', 'fileformat'])


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
set cursorline
nnoremap <silent><C-f> :NERDTreeToggle<CR>
" vimgrepのカスタマイズ
nnoremap [q :cprev<CR>
nnoremap ]q :cnext<CR>
nnoremap [Q :<C-u>cfirst<CR>
nnoremap ]Q :<C-u>clast<CR>
autocmd FileType vue syntax sync fromstart
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

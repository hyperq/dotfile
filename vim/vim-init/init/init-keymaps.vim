"======================================================================
" init-keymaps.vim - 按键设置，按你喜欢更改
"======================================================================
nnoremap Q <Nop>

"----------------------------------------------------------------------
" INSERT 模式下使用 EMACS 键位
"----------------------------------------------------------------------
inoremap <c-a> <home>
inoremap <c-e> <end>
inoremap <c-d> <del>
inoremap <c-_> <c-k>


"----------------------------------------------------------------------
" 设置 CTRL+HJKL 移动光标（INSERT 模式偶尔需要移动的方便些）
"----------------------------------------------------------------------
noremap <C-h> <left>
noremap <C-j> <down>
noremap <C-k> <up>
noremap <C-l> <right>
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>


"----------------------------------------------------------------------
" 命令模式的快速移动
"----------------------------------------------------------------------
cnoremap <c-h> <left>
cnoremap <c-j> <down>
cnoremap <c-k> <up>
cnoremap <c-l> <right>
cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-f> <c-d>
cnoremap <c-b> <left>
cnoremap <c-d> <del>
cnoremap <c-_> <c-k>



"----------------------------------------------------------------------
" <leader>+数字键 切换tab
"----------------------------------------------------------------------
noremap <silent><leader>1 1gt<cr>
noremap <silent><leader>2 2gt<cr>
noremap <silent><leader>3 3gt<cr>
noremap <silent><leader>4 4gt<cr>
noremap <silent><leader>5 5gt<cr>
noremap <silent><leader>6 6gt<cr>
noremap <silent><leader>7 7gt<cr>
noremap <silent><leader>8 8gt<cr>
noremap <silent><leader>9 9gt<cr>
noremap <silent><leader>0 10gt<cr>




" window navigate {{
  nnoremap <leader>l <c-w>l
  nnoremap <leader>h <c-w>h
  nnoremap <leader>j <c-w>j
  nnoremap <leader>k <c-w>k
" }}

noremap <silent><S-h> 5h
noremap <silent><S-j> 5j
noremap <silent><S-k> 5k
noremap <silent><S-l> 5l

noremap <leader><cr> <esc>:noh<cr>

nnoremap x "_x
nnoremap X "_X
nnoremap d "_d
nnoremap dd "_dd
nnoremap D "_D
vnoremap d "_d
vnoremap dd "_dd

nnoremap <leader>x ""x
nnoremap <leader>X ""X
nnoremap <leader>d ""d
nnoremap <leader>dd ""dd
nnoremap <leader>D ""D
vnoremap <leader>d ""d
vnoremap <leader>dd ""dd

" 块移动
nmap <C-S-j> mz:m+<cr>`z
nmap <C-S-k> mz:m-2<cr>`z
vmap <C-S-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <C-S-k> :m'<-2<cr>`>my`<mzgv`yo`z 

nmap <C-S-down> mz:m+<cr>`z
nmap <C-S-up> mz:m-2<cr>`z
vmap <C-S-down> :m'>+<cr>`<my`>mzgv`yo`z
vmap <C-S-up> :m'<-2<cr>`>my`<mzgv`yo`z
" 重复行
nmap <c-s-d> <esc>yyp
" 重复代码
vmap <c-s-d> mzyP`z


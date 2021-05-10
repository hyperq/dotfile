"======================================================================
" 按键设置
"======================================================================
" 设置leader
let mapleader=" "
"----------------------------------------------------------------------
" 基本设置
"----------------------------------------------------------------------
" 退出保存设置
noremap Q :wq!<CR>
noremap <C-q> :qwa!<CR>

" 保存
noremap S :w<CR>

" 撤销操作
noremap <silent> U :redo<cr>

" 任何时候打开配置文件
" noremap <LEADER>rc :e ~/.config/nvim/init.vim<CR>

"----------------------------------------------------------------------
" 代码块
"----------------------------------------------------------------------
" 重复
nmap <c-s-d> <esc>yyp
vmap <c-s-d> mzyP`z

" 上下移动代码块
nmap <C-S-j> mz:m+<cr>`z
nmap <C-S-k> mz:m-2<cr>`z
vmap <C-S-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <C-S-k> :m'<-2<cr>`>my`<mzgv`yo`z 

nmap <C-S-down> mz:m+<cr>`z
nmap <C-S-up> mz:m-2<cr>`z
vmap <C-S-down> :m'>+<cr>`<my`>mzgv`yo`z
vmap <C-S-up> :m'<-2<cr>`>my`<mzgv`yo`z

"----------------------------------------------------------------------
" 移动
"----------------------------------------------------------------------
" 快速移动
noremap <silent> J 5j
noremap <silent> K 5k
noremap <silent> W 5w
noremap <silent> E 5e
noremap <C-k> 5<C-y>
noremap <C-j> 5<C-e>

" INSERT 模式下使用 EMACS 键位
inoremap <c-a> <home>
inoremap <c-e> <end>
inoremap <c-d> <del>
inoremap <c-_> <c-k>

" 设置 CTRL+HJKL 移动光标（INSERT 模式偶尔需要移动的方便些）
noremap <C-h> <left>
noremap <C-j> <down>
noremap <C-k> <up>
noremap <C-l> <right>
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>

" 命令模式的快速移动
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

" <leader>+数字键 切换tab
noremap <silent> <leader>1 1gt<cr>
noremap <silent> <leader>2 2gt<cr>
noremap <silent> <leader>3 3gt<cr>
noremap <silent> <leader>4 4gt<cr>
noremap <silent> <leader>5 5gt<cr>
noremap <silent> <leader>6 6gt<cr>
noremap <silent> <leader>7 7gt<cr>
noremap <silent> <leader>8 8gt<cr>
noremap <silent> <leader>9 9gt<cr>
noremap <silent> <leader>0 10gt<cr>

"----------------------------------------------------------------------
" 搜索
"----------------------------------------------------------------------
" 去除搜索高亮
noremap <leader><cr> <esc>:noh<cr>
noremap - N
noremap = n

" 插入模式快速移动插入光标
inoremap <C-a> <ESC>A

"----------------------------------------------------------------------
" 剪切板
"----------------------------------------------------------------------
" 使用系统剪切板
nnoremap x "_x
nnoremap X "_X
nnoremap d "_d
nnoremap dd "_dd
nnoremap D "_D
vnoremap d "_d
vnoremap dd "_dd

"----------------------------------------------------------------------
" 分屏
"----------------------------------------------------------------------
" 使用方向键控制分隔屏幕位置
noremap s <nop>
noremap sj :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap sk :set splitbelow<CR>:split<CR>
noremap sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap sl :set splitright<CR>:vsplit<CR>

" 
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

" 分屏切换
nnoremap <leader>l <c-w>l
nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k

" 创建新的tab
noremap tu :tabe<CR>
" 移动tab
noremap tn :-tabnext<CR>
noremap ti :+tabnext<CR>
noremap tmn :-tabmove<CR>
noremap tmi :+tabmove<CR>

"----------------------------------------------------------------------
" 终端
"----------------------------------------------------------------------
" 打开一个终端
noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>
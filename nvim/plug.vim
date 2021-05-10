"======================================================================
" 插件设置
"======================================================================
call plug#begin('~/.config/nvim/plugged')

"----------------------------------------------------------------------
" 默认插件 
"----------------------------------------------------------------------
" 全文快速移动，<leader><leader>f{char} 即可触发
Plug 'easymotion/vim-easymotion'
" 多行编辑功能
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" 自动括号 双引号
Plug 'Raimondi/delimitMate'
" 对齐
Plug 'godlygeek/tabular'
" markdown 支持
Plug 'plasticboy/vim-markdown'

" Git 支持
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" 记录上次编辑信息  
Plug 'tpope/vim-obsession'

" vista
Plug 'liuchengxu/vista.vim'

" 快速文件搜索
Plug 'junegunn/fzf'

" tree
Plug 'preservim/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" undotree
Plug 'mbbill/undotree'

" theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rakr/vim-one'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'cormacrelf/vim-colors-github'

" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" coc
Plug 'neoclide/coc.nvim' , {'branch':'release'}
" snippets
Plug 'hyperq/vim-snippets'
" 全局查找和替换插件
Plug 'brooth/far.vim'
" 调试

call plug#end()
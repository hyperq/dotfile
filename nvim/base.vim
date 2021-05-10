"======================================================================
" 基本设置
"======================================================================

" 如果发现文件在 Vim 之外修改过而在 Vim 里面没有的话，自动重新读入
set autoread

" 自动把内容写回文件
set autowrite

" 自动缩进
set autoindent

" 影响 <BS>、<Del>、CTRL-W 和 CTRL-U 在插入模式下的工作方式
" 2同 set backspace=indent,eol,start"
set backspace=2

" 指定什么事件不会响铃
set belloff=all

" Vim 使用剪贴板寄存器
set clipboard=unnamed

" 禁用 vi 兼容模式
set nocompatible

" 比较模式的设置选项
set diffopt=vertical

" 显示最后一行
set display=lastline

" 内部工作编码
set encoding=utf-8

" 错误格式
set errorformat+=[%f:%l]\ ->\ %m,[%f:%l]:%m

" 插入模式里: 插入 <Tab> 时使用合适数量的空格
set expandtab

" 文件换行符，默认使用 unix 换行符
set ffs=unix,dos,mac

" 文件默认编码
set fileencoding=utf-8

" 打开文件时自动尝试下面顺序的编码
set fileencodings=utf-8,ucs-bom,gbk,gb18030,big5,euc-jp,latin1

" 允许代码折叠
set foldenable

" 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=j

" 合并两行中文时，不在中间加空格
set formatoptions+=o

" 代码折叠默认使用缩进
set fdm=indent

" 默认打开所有缩进
set foldlevel=99

" :grep  命令使用的程序
set grepprg=rg\ --vimgrep\ $*

" 识别 ":grep" 命令输出的格式
set grepformat=%f:%l:%c:%m

" abandon  放弃时隐藏缓冲区
set hidden

" 命令的历史和最近的搜索模式的历史会被记住
set history=2000

" 高亮搜索内容
set hlsearch

" 搜索时忽略大小写
set ignorecase

" 查找输入时动态增量显示查找结果
set incsearch

" 总是显示状态栏
set laststatus=2

" 延迟绘制（提升性能）
set lazyredraw

" 设置显示制表符等隐藏字符
set list

" 设置分隔符可视
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" 显示括号匹配的时间
set matchtime=2

" 启用鼠标
set mouse=a

" 输入时隐藏鼠标
set mousehide

" 总是显示行号
set number

" 这是一个目录列表
set path+=**

" 选择缺省正规表达式引擎
" 2 NFA 引擎
set regexpengine=2

" 显示光标位置
set ruler

" 光标上下两侧最少保留的屏幕行数
set scrolloff=5

" 改变  :mksession  命令的效果
set sessionoptions+=winsize
set sessionoptions+=resize
set sessionoptions-=blank
set sessionoptions+=localoptions
set sessionoptions+=globals
set sessionoptions+=tabpages
set sessionoptions+=curdir

" 本选项有助于避免文件信息的所有  hit-enter  提示
set shortmess=aFc

" 回绕行放置在开头的字符串
set showbreak=↪ 

" 右下角显示命令
set showcmd

" 显示匹配的括号
set showmatch

" 关闭 在插入、替换和可视模式里，在最后一行提供消息
set noshowmode

" 本选项的值指定何时显示带有标签页标签的行 
" 2 永远会
set showtabline=2

" 是否绘制标号列
set signcolumn=yes

" 智能搜索大小写判断，默认忽略大小写，除非搜索内容包含大写字母
set smartcase

" 如果打开，行首的 <Tab> 根据 'shiftwidth' 插入空白
set smarttab

" 如果后面设置了 expandtab 那么展开 tab 为多少字符
set softtabstop=4

" 水平切割窗口时，默认在右边显示新窗口
set splitright

" 带这些后缀名的文件在通配符能匹配多个文件时使用较低的优先级
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class

" 搜索语法项目的最大列数
set synmaxcol=300

" 禁用交换文件
set noswapfile

" 语法高亮设置
syntax enable 
syntax on 

" 命令行参数或 ":tab all" 命令打开的最大标签页数
set tabpagemax=10

" 文件里的 <Tab> 代表的空格数
set tabstop=2

" 打开功能键超时检测（终端下功能键为一串 ESC 开头的字符串）
set ttimeout

" 功能键超时检测 100 毫秒
set ttimeoutlen=100

" 禁用 undo文件
set noundofile

" 如果过了这么多毫秒数以后还没有任何输入，把交换文件写入磁盘
set updatetime=300

" 修改  :mkview  命令的效果
set viewoptions=cursor,folds,slash,unix

" 关闭使用可视响铃代替呼叫
set novisualbell

" 文件模式的列表
set wildignore=*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib "stuff to ignore when tab completing
set wildignore+=*.so,*.dll,*.swp,*.egg,*.jar,*.class,*.pyc,*.pyo,*.bin,*.dex
set wildignore+=*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz    " MacOSX/Linux
set wildignore+=*DS_Store*,*.ipch
set wildignore+=*.gem
set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**
set wildignore+=*/.nx/**,*.app,*.git,.git
set wildignore+=*.wav,*.mp3,*.ogg,*.pcm
set wildignore+=*.mht,*.suo,*.sdf,*.jnlp
set wildignore+=*.chm,*.epub,*.pdf,*.mobi,*.ttf
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc
set wildignore+=*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps
set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu
set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc
set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android

" 允许下方显示目录
set wildmenu

"置位时对文件名和目录的补全忽略大小写
set wildignorecase

" 设置缩进宽度
set sw=4

" 设置 TAB 宽度
set ts=4

"----------------------------------------------------------------------
" 命令设置
"----------------------------------------------------------------------

" 允许 Vim 自带脚本根据文件类型自动设置缩进等
if has('autocmd')
	filetype plugin indent on
endif

" 有 tmux 何没有的功能键超时（毫秒）
if $TMUX != ''
	set ttimeoutlen=30
elseif &ttimeoutlen > 80 || &ttimeoutlen <= 0
	set ttimeoutlen=80
endif

" 防止tmux下vim的背景色显示异常
if &term =~ '256color' && $TMUX != ''
	set t_ut=
endif

" 打开文件时恢复上一次光标所在位置
autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line("$") |
	\	 exe "normal! g`\"" |
	\ endif

" 定义一个 DiffOrig 命令用于查看文件改动
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
          \ | wincmd p | diffthis
endif

if (empty($TMUX))
  if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" 允许 256 色
set t_Co=256
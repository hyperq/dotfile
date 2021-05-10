" 自动安装plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


if get(s:, 'loaded', 0) != 0
	finish
else
	let s:loaded = 1
endif

" 取得本文件所在的目录
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" 定义一个命令用来加载文件
command! -nargs=1 LoadScript exec 'so '.s:home.'/'.'<args>'

" 将 vim-init 目录加入 runtimepath
exec 'set rtp+='.s:home

" 将 ~/.vim 目录加入 runtimepath (有时候 vim 不会自动帮你加入）
set rtp+=~/.vim


" 基本设置
LoadScript base.vim

" 加载按键设置
LoadScript keymap.vim

" 插件
LoadScript plug.vim

" 插件配置
LoadScript plug_config.vim

" coc_config
LoadScript coc_config.vim

" run
LoadScript run.vim

" statusline
LoadScript statusline.vim

"  自动载入设置
autocmd BufWritePost $MYVIMRC source $MYVIMRC
if !has('nvim')
  set notagbsearch
endif


let g:airline_theme = 'one'
let g:one_allow_italics = 1
colorscheme one
set background=dark
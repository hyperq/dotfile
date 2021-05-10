"----------------------------------------------------------------------
" vim-go
"----------------------------------------------------------------------
let g:go_auto_type_info = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_extra_types = 1
let g:go_doc_keywordprg_enabled = 0

"----------------------------------------------------------------------
" theme
"----------------------------------------------------------------------
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_powerline_fonts = 0
let g:airline_exclude_preview = 1
let g:airline_section_b = '%n'
let g:airline#extensions#branch#enabled = 0
let g:airline#extensions#syntastic#enabled = 0
let g:airline#extensions#fugitiveline#enabled = 0
let g:airline#extensions#csv#enabled = 0
let g:airline#extensions#vimagit#enabled = 0
let g:github_colors_soft = 1

"----------------------------------------------------------------------
" Vista
"----------------------------------------------------------------------
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

noremap <LEADER>v :Vista!!<CR>
noremap <c-t> :silent! Vista finder coc<CR>
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'coc'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }

"----------------------------------------------------------------------
" git
"----------------------------------------------------------------------
set statusline+=%{FugitiveStatusline()}
let g:gitgutter_map_keys = 0
let g:gitgutter_preview_win_floating = 1

function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}
autocmd BufWritePost * GitGutter
nnoremap H :GitGutterPreviewHunk<CR>
nnoremap <LEADER>g- :GitGutterPrevHunk<CR>
nnoremap <LEADER>g= :GitGutterNextHunk<CR>

"----------------------------------------------------------------------
" tree
"----------------------------------------------------------------------
" 进入的时候打开
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" 隐藏 []
let g:NERDTreeGitStatusConcealBrackets = 1 
let g:nerdtree_tabs_open_on_console_startup=1
let g:NERDTreeMouseMode=3
let g:nerdtree_tabs_focus_on_files = 1
map <Leader>n <plug>NERDTreeTabsToggle<CR> 
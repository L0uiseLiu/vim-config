let g:netrw_browse_split = 4  " 在左侧打开
let g:netrw_altv = 1
let g:netrw_liststyle = 3     " 树形显示
let g:netrw_winsize = 25      " 窗口宽度 25%


nnoremap <leader>cd :Lexplore<CR>:call search(expand("%:t"))<CR>

let g:netrw_banner = 0

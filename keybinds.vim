let mapleader = " "
nnoremap <leader>cd :Ex<CR>
inoremap jk <Esc>
inoremap kj <Esc>
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<Tab>"
nnoremap <leader><leader> :so<CR>

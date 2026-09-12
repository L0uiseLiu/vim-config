let mapleader = " "
source ~/.vim/netrw.vim
inoremap jk <Esc>
inoremap kj <Esc>
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<Tab>"
nnoremap <leader><leader> :so<CR>

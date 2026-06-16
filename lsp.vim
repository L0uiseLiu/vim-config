" Enable diagnostics highlighting
let lspOpts = #{autoHighlightDiags: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)

let lspServers = [
    \ #{
    \   name: 'solargraph',
    \   filetype: ['ruby'],
    \   path: 'solargraph',
    \   args: ['stdio']
    \ },
    \  #{
    \   name: 'typescript-language-server',
    \   filetype: ['javascript', 'typescript', 'javascriptreact', 'typescriptreact'],
    \   path: 'typescript-language-server',
    \   args: ['--stdio']
    \ }, #{
    \   name: 'html-languageserver',
    \   filetype: ['html', 'htmldjango'],
    \   path: 'vscode-html-language-server',
    \   args: ['--stdio']
    \ }, #{
    \   name: 'css-languageserver',
    \   filetype: ['css', 'scss', 'less'],
    \   path: 'vscode-css-language-server', 
    \   args: ['--stdio']
    \ }, #{
    \   name: 'json-languageserver',
    \   filetype: ['json', 'jsonc'],
    \   path: 'vscode-json-language-server',  
    \   args: ['--stdio']
    \ }]

autocmd User LspSetup call LspAddServer(lspServers)

" Key mappings
nnoremap gd :LspGotoDefinition<CR>
nnoremap gr :LspShowReferences<CR>
nnoremap K  :LspHover<CR>
nnoremap gl :LspDiag current<CR>
nnoremap <leader>nd :LspDiag next \| LspDiag current<CR>
nnoremap <leader>pd :LspDiag prev \| LspDiag current<CR>

inoremap <silent><expr> <C-f> pumvisible() ? "\<C-n>" : "\<C-x>\<C-u>"

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set completeopt=menuone,noinsert,noselect

autocmd FileType javascript,typescript,html,css,json setlocal omnifunc=lsp#complete

" Custom diagnostic sign characters
autocmd User LspSetup call LspOptionsSet(#{
    \   diagSignErrorText: '✘',
    \   diagSignWarningText: '▲',
    \   diagSignInfoText: '»',
    \   diagSignHintText: '⚑',
    \ })

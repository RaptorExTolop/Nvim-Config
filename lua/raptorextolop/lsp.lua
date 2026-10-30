vim.lsp.enable("lua_ls")
vim.lsp.enable("gdscript")
vim.lsp.enable("ts_ls")
vim.lsp.enable("gopls")
vim.lsp.enable("html")
-- vim.lsp.enable("ast_grep")
vim.lsp.enable('pyright')
vim.lsp.enable('ols')
vim.lsp.enable('zls')
vim.lsp.enable('omnisharp')
vim.lsp.config('clangd', {
    init_options = {
        fallbackFlags = { '-std=c23' },
    },
})
vim.lsp.enable('texlab')

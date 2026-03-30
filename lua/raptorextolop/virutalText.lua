local show_warnings = false

-- set initial state explicitly
vim.diagnostic.config({
    virtual_text = {
        prefix = "●",
        spacing = 8,
        severity = { min = vim.diagnostic.severity.ERROR },
    },
    signs = true,
    underline = true,
    severity_sort = true,
})

vim.keymap.set("n", "<leader>sw", function()
    show_warnings = not show_warnings
    vim.diagnostic.config({
        virtual_text = {
            prefix = "●",
            spacing = 8,
            severity = show_warnings and { min = vim.diagnostic.severity.WARN }
                or { min = vim.diagnostic.severity.ERROR },
        },
    })
    vim.notify(show_warnings and "Warnings enabled" or "Warnings hidden")
end, { desc = "Toggle warning virtual text" })

local builtin = require('telescope.builtin')
vim.keymap.set('n', "<leader>ff", builtin.find_files, {})
vim.keymap.set('n', "<leader>gf", builtin.git_files, {})
vim.keymap.set('n', "<leader>ps", function() 
	builtin.grep_string({ search = vim.fn.input("Grep < ") });
end)

-- vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols,  { desc = "Find Document Symbols"  })
-- vim.keymap.set("n", "<leader>fS", builtin.lsp_workspace_symbols, { desc = "Find Workspace Symbols" })

-- functions in document
vim.keymap.set("n", "<leader>sf", function()
    builtin.lsp_document_symbols({
        symbols = { "Function" },
    })
end, { desc = "Find functions" })

-- functions in workspace
vim.keymap.set("n", "<leader>sF", function()
    builtin.lsp_workspace_symbols({
        symbols = { "Function" },
    })
end, { desc = "Find functions" })

-- structs in document 
vim.keymap.set("n", "<leader>ss", function()
    builtin.lsp_document_symbols({
        symbols = { "Struct" },
    })
end, { desc = "Find functions" })

-- structs in workspace
vim.keymap.set("n", "<leader>sS", function()
    builtin.lsp_workspace_symbols({
        symbols = { "Struct" },
    })
end, { desc = "Find functions" })

-- TODO: variables in document, enums in both, and something for all symbols maybe except for variables
--       variables just exist too commonly

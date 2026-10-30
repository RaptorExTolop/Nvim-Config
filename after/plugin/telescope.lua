local builtin = require('telescope.builtin')
vim.keymap.set('n', "<leader>ff", builtin.find_files, {})
vim.keymap.set('n', "<leader>gf", builtin.git_files, {})
vim.keymap.set('n', "<leader>ps", function() 
	builtin.grep_string({ search = vim.fn.input("Grep < ") });
end)

-- vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols,  { desc = "Find Document Symbols"  })
-- vim.keymap.set("n", "<leader>fS", builtin.lsp_workspace_symbols, { desc = "Find Workspace Symbols" })

-- functions in document
vim.keymap.set("n", "<leader>lf", function()
    builtin.lsp_document_symbols({
        symbols = { "Function" },
    })
end, { desc = "Find functions in current document" })

-- functions in workspace
vim.keymap.set("n", "<leader>lF", function()
    builtin.lsp_workspace_symbols({
        symbols = { "Function" },
    })
end, { desc = "Find functions in workspace" })

-- structs in document 
vim.keymap.set("n", "<leader>ls", function()
    builtin.lsp_document_symbols({
        symbols = { "Struct" },
    })
end, { desc = "Find functions in current document" })

-- structs in workspace
vim.keymap.set("n", "<leader>lS", function()
    builtin.lsp_workspace_symbols({
        symbols = { "Struct" },
    })
end, { desc = "Find functions in workspace" })

-- TODO: variables in document, enums in both, and something for all symbols maybe except for variables
--       variables just exist too commonly

-- variables in document
vim.keymap.set("n", "<leader>lv", function()
	builtin.lsp_document_symbols({
		symbol = { "Variables"}
	})
end, { desc = "Find variables in current document"}
)

-- maybe enums?

-- all symbols
vim.keymap.set(
	"n", "<leader>la", 
	builtin.lsp_document_symbols, 
	{ desc = "Find all symbols in current document"}
)

vim.keymap.set(
	"n", "<leader>lA", 
	builtin.lsp_workspace_symbols, 
	{ desc = "Find all symbols in workspace"}
)



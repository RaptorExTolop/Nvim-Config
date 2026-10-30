vim.api.nvim_create_user_command("NextError", function()
    require("trouble").next({
        mode = "diagnostics",
        filter = { severity = vim.diagnostic.severity.ERROR },
        skip_groups = true,
        jump = true,
    })
end, { desc = "Go to next error" })

vim.api.nvim_create_user_command("PreviousError", function()
    require("trouble").prev({
        mode = "diagnostics",
        filter = { severity = vim.diagnostic.severity.ERROR },
        skip_groups = true,
        jump = true,
    })
end, { desc = "Go to next error" })

vim.keymap.set('n', '<leader>ne', function() 
    require("trouble").next({
        mode = "diagnostics",
        filter = { severity = vim.diagnostic.severity.ERROR },
        skip_groups = true,
        jump = true,
    })
end)

vim.keymap.set('n', '<leader>pe', function() 
    require("trouble").prev({
        mode = "diagnostics",
        filter = { severity = vim.diagnostic.severity.ERROR },
        skip_groups = true,
        jump = true,
    })
end)

vim.keymap.set('n', '<leader>ce', function()
    require("trouble").jump({ mode = "diagnostics" })
end, { desc = "Jump to current error" })


vim.keymap.set({"i", "n"}, "<leader>k", function()
  require("lsp_signature").toggle_float_win()
end, { desc = "Toggle signature help" })

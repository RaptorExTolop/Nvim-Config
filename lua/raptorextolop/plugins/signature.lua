-- lua/plugins/lsp_signature.lua
return {
  "ray-x/lsp_signature.nvim",
  event = "InsertEnter",
  opts = {
    bind = true,
    border = "rounded",
    hint_enable = true, -- disables the inline hint text, just shows the float
	floating_window = false,
    auto_close_after = nil, -- keeps it open while typing
    handler_opts = {
      border = "rounded",
    },
  },
}

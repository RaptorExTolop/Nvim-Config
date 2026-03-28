vim.keymap.set('n', '<leader>cw', function ()
	local config = require("Comment.config")
	config.padding = false
	-- vim.notify("changed comment padding")
end)

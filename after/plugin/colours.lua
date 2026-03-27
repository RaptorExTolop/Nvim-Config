function colourMyPencils(colour) 
	colour = colour or "kanagawa-wave"
	vim.cmd.colorscheme(colour)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = "none" })
	vim.api.nvim_set_hl(0, "GitSignsChange", { bg = "none" })
	vim.api.nvim_set_hl(0, "GitSignsDelete", { bg = "none" })
	vim.api.nvim_set_hl(0, "GitSignsAddNr", { bg = "none" })
	vim.api.nvim_set_hl(0, "GitSignsChangeNr", { bg = "none" })
	vim.api.nvim_set_hl(0, "GitSignsDeleteNr", { bg = "none" })
	
end

colourMyPencils()

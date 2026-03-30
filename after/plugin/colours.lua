function colourMyPencils(colour) 
	colour = colour or "kanagawa-wave"
	vim.cmd.colorscheme(colour)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "DiagnosticSignError", { bg = "none", fg = "#c34043"})
	vim.api.nvim_set_hl(0, "DiagnosticSignWarn",  { bg = "none", fg = "#ff9e3b" })
	vim.api.nvim_set_hl(0, "DiagnosticSignInfo",  { bg = "none", fg = "#658594" })
	vim.api.nvim_set_hl(0, "DiagnosticSignHint",  { bg = "none", fg = "#6a9589" })
end

colourMyPencils()

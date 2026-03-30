vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("raptorextolop")

vim.g.have_nerd_font = false

vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true

vim.o.scrolloff = 8

vim.o.breakindent = true

vim.o.undofile = true

vim.o.signcolumn = 'yes'

vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function() vim.hl.on_yank() end,
})

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

vim.opt.smartindent = true

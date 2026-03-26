require('nvim-treesitter').setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site'
}

require('nvim-treesitter').install { 'go', 'cpp', 'c_sharp', 'lua', 'javascript' }

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'javascript', 'go', 'cpp', 'cs', 'lua' },
  callback = function() vim.treesitter.start() end,
})

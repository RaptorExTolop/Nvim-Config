return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "SmiteshP/nvim-navic" },
    config = function()
        local navic = require("nvim-navic")
        require("lualine").setup({
            sections = {
                lualine_c = {
                    { navic.get_location, cond = navic.is_available },
                }
            }
        })
    end
}

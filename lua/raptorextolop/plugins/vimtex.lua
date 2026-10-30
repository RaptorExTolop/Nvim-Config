return {
    "lervag/vimtex",
    lazy = false,

    init = function()
        local is_wsl = vim.fn.has("wsl") == 1

        -- PDF viewer
        if is_wsl then
            vim.g.vimtex_view_method = "general"
            vim.g.vimtex_view_general_viewer =
                vim.fn.expand("~/.local/bin/sumatra-wsl")
            vim.g.vimtex_view_general_options = "@pdf"
        else
            vim.g.vimtex_view_method = "zathura"
        end

        -- Compiler (shared between all systems)
        vim.g.vimtex_compiler_method = "latexmk"
        vim.g.vimtex_compiler_latexmk = {
            out_dir = "build",
        }

        vim.g.vimtex_quickfix_mode = 0
    end,
}

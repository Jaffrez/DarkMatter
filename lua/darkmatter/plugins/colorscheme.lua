return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 100,
        opts = { style = "storm" },
        config = function()
            vim.cmd.colorscheme("tokyonight-storm")
        end,
    }
}
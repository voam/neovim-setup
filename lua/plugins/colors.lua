return {
    {
        'maxmx03/solarized.nvim',
        lazy = true,
        priority = 1000,
        ---@type solarized.config
        opts = { transparency = { enabled = true },
                variant = 'summer'
            },
        config = function(_, opts)
            vim.o.termguicolors = true
            vim.o.background = 'dark'
            require('solarized').setup(opts)
            vim.cmd.colorscheme 'solarized'
        end,
    },

    { "folke/tokyonight.nvim", lazy = false },

    -- Theme 3: Kanagawa (Installed and available)
    { "rebelot/kanagawa.nvim", lazy = true },
}

-- local function enable_transparency()
    --     vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
    -- end
    -- return {
        --   -- the colorscheme should be available when starting Neovim
        --   {
            --     "folke/tokyonight.nvim",
            --     config = function()
                --       -- load the colorscheme here
                --       vim.cmd([[colorscheme tokyonight]])
                --       enable_transparency()
                --     end
                --   },
                -- }

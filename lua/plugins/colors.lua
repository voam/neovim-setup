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

{ "folke/tokyonight.nvim",
        lazy = false,
        opts = { transparency = { enabled = true },
            style = 'storm'
            },
        config = function(_, opts)
            require('tokyonight').setup(opts)
            --vim.cmd.colorscheme 'tokyonight-day'
            vim.cmd.colorscheme 'tokyonight'
        end,
        },

        -- Theme 3: Kanagawa (Installed and available)
        { "rebelot/kanagawa.nvim", lazy = true },
    }


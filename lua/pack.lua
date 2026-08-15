--
-- Ensure packer is protected against missing installation
local status, packer = pcall(require, "packer")
if not status then
    return
end

-- Wrap your use statements inside the startup block
return packer.startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Place the rest of your plugins here:
    -- use 'nvim-treesitter/nvim-treesitter'
    -- use 'neovim/nvim-lspconfig'
     use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release --target install' }

use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
        -- Put your configuration inside this block so it only runs 
        -- AFTER Packer successfully loads the plugin.
        require('nvim-treesitter.configs').setup({
            ensure_installed = { "lua", "vim", "help", "query" }, 
            highlight = { enable = true },
        })
    end
}

end)
-- vim.pack.add({
--    {src = 'https://github.com/nvim-tree/nvim-web-devicons' }
-- })

-- vim.opt.clipboard = "unnamedplus"



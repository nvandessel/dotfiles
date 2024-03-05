local o = require("custom.configs.overrides")

local plugins = {
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
        }
    },
    {
        "zbirenbaum/copilot.lua",
        lazy = false,
        opts = function ()
            return require "custom.configs.copilot"
        end,
        config = function (_, opts)
            require("copilot").setup(opts)
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
    },
    {
        "neovim/nvim-lspconfig",
        config = function ()
            require("plugins.configs.lspconfig")
            require("custom.configs.lspconfig")
        end
    },
    {
        "tpope/vim-fugitive",
        event = "VeryLazy",
        cmd = {"Git"},
    },
    {
        "nvim-tree/nvim-tree.lua",
        opts = o.nvimtree,
    },
}

return plugins;

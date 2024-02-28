local plugins = {
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
    },
    {
        "williamboman/mason.nvim",
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
}

return plugins;

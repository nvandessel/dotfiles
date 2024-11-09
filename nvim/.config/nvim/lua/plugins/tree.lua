local o = require("configs.overrides")

return {
    {
        "nvim-tree/nvim-tree.lua",
        opts = o.nvimtree,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = o.treesitter,
    },
}

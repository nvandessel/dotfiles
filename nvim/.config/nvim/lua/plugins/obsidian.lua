local o = require("configs.overrides")

return {
    {
        "epwalsh/obsidian.nvim",
        dependencies = {
            {
                "nvim-lua/plenary.nvim",
                "hrsh7th/nvim-cmp",
            },
        },
        keys = {
            {
                "<leader>ot",
                "<cmd>ObsidianToday<cr>",
                desc = "Go to today's daily note",
            },
            {
                "<leader>rf",
                "<cmd>ObsidianRename<cr>",
                desc = "Rename current file",
            },
        },
        opts = o.obsidian,
    },
}

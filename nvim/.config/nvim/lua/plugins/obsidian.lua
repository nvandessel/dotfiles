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
                "<leader>or",
                "<cmd>ObsidianRename<cr>",
                desc = "Rename current file",
            },
            {
                "<leader>os",
                "<cmd>ObsidianSearch<cr>",
                desc = "Search notes",
            },
            {
                "<leader>oi",
                "<cmd>ObsidianTemplate<cr>",
                desc = "Insert template",
            },
        },
        opts = o.obsidian,
    },
}

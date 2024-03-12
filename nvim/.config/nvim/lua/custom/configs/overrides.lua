local M = {}

M.nvimtree = {
    git = {
        enable = true,
    },

    renderer = {
        highlight_git = true,
        icons = {
            show = {
                -- git = true,
            },
        },
    },
}

M.treesitter = {
    ensure_installed = {
        "bash",
        "c_sharp",
        "dockerfile",
        "javascript",
        "json",
        "make",
        "regex",
        "rust",
        "sql",
        "tmux",
        "toml",
        "typescript",
        "xml",
        "yaml",
    },
    highlight = {
        enable = true,
    },
}

return M

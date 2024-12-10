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
        "markdown",
        "dockerfile",
        "javascript",
        "json",
        "make",
        "regex",
        "rust",
        "sql",
        "toml",
        "typescript",
        "xml",
        "yaml",
        "zig"
    },
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    }
}

return M

local M = {}

M.disabled = {
    ["<S-K>"] = "",
}

M.general = {
    n = {
        -- Tmux navigation
        ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
        ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
        ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
        ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },

        -- Keep cursor centered when scrolling
        ["<C-d>"] = { "<C-d>zz", opts = {} },
        ["<C-u>"] = { "<C-u>zz", opts = {} },
        ["n"] = { "nzzzv", opts = {} },
        ["N"] = { "Nzzzv", opts = {} },

        -- Fugitive
        ["<leader>gs"] = { "<cmd>Git<CR>", opts = {} },
    },
    v = {
        ["J"] = { ":m '>+1<CR>gv=gv", opts = { noremap = true, silent = true } },
        ["K"] = { ":m '<-2<CR>gv=gv", opts = { noremap = true, silent = true } },
    },
    x = {
        ["<leader>p"] = { [["_dP]], opts = {} },
    }
}

return M;

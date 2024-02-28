local M = {}

M.disabled = {
    ["<S-K>"] = "",
}

M.general = {
    n = {
        ["<C-h>"] = { "<cmd> TmuxNavigatorLeft<CR>", "window left" },
        ["<C-l>"] = { "<cmd> TmuxNavigatorRight<CR>", "window right" },
        ["<C-j>"] = { "<cmd> TmuxNavigatorDown<CR>", "window down" },
        ["<C-k>"] = { "<cmd> TmuxNavigatorUp<CR>", "window up" },
        ["<C-d>"] = { "<C-d>zz", opts = {} },
        ["<C-u>"] = { "<C-u>zz", opts = {} },
        ["n"] = { "nzzzv", opts = {} },
        ["N"] = { "Nzzzv", opts = {} },
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

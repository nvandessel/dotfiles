local M = {}

M.general = {
    n = {
        ["<C-h>"] = { "<cmd> TmuxNavigatorLeft<CR>", "window left" },
        ["<C-l>"] = { "<cmd> TmuxNavigatorRight<CR>", "window right" },
        ["<C-j>"] = { "<cmd> TmuxNavigatorDown<CR>", "window down" },
        ["<C-k>"] = { "<cmd> TmuxNavigatorUp<CR>", "window up" },
    }
}

return M;

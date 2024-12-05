require "nvchad.mappings"

local map = vim.keymap.set

-- Tmux navigation
map("n", "<C-h>","<cmd> TmuxNavigateLeft<CR>", {desc = "window left"})
map("n", "<C-l>","<cmd> TmuxNavigateRight<CR>", {desc = "window right"})
map("n", "<C-j>","<cmd> TmuxNavigateDown<CR>", {desc = "window down"})
map("n", "<C-k>","<cmd> TmuxNavigateUp<CR>", {desc = "window up"})

-- Keep cursor centered when scrolling
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Fugitive
map("n", "<leader>gs", "<cmd>Git<CR>")

-- Move Selection
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")


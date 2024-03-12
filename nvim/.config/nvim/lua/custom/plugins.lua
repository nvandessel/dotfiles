local o = require("custom.configs.overrides")

local plugins = {

    -- Navigation
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
        }
    },

    -- Lsp
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
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function ()
            vim.g.rustfmt_autosave = 1
        end
    },

    -- Git
    {
        "tpope/vim-fugitive",
        event = "VeryLazy",
        cmd = {"Git"},
    },

    -- File management
    {
        "nvim-tree/nvim-tree.lua",
        opts = o.nvimtree,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = o.treesitter,
    },

    -- AI
    {
        "zbirenbaum/copilot.lua",
        lazy = false,
        opts = function ()
            return require "custom.configs.copilot"
        end,
        config = function (_, opts)
            require("copilot").setup(opts)
        end
    },
    {
      "nomnivore/ollama.nvim",
      branch = "chat",
      dependencies = {
        "nvim-lua/plenary.nvim",
      },

      -- All the user commands added by the plugin
      cmd = { "Ollama", "OllamaModel", "OllamaServe", "OllamaServeStop", "OllamaChat", "OllamaChatClose" },


      keys = {
        -- Sample keybind for prompt menu. Note that the <c-u> is important for selections to work properly.
        {
          "<leader>oo",
          ":<c-u>lua require('ollama').prompt()<cr>",
          desc = "ollama prompt",
          mode = { "n", "v" },
        },

        -- Sample keybind for direct prompting. Note that the <c-u> is important for selections to work properly.
        {
          "<leader>oG",
          ":<c-u>lua require('ollama').prompt('Generate_Code')<cr>",
          desc = "ollama Generate Code",
          mode = { "n", "v" },
        },
      },

      ---@type Ollama.Config
      opts = {
        -- your configuration overrides
      }
    },
}

return plugins;

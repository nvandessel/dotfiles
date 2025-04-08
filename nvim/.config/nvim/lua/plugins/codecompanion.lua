-- Choose default model from a list of preferred models. Fall back to first
-- available.
local function preferred_model_picker(preferred)
  return function(self)
    if self == nil then
      -- Debug:render() calls Adapter.schema.model.default() but doesn't pass
      -- in `self`. Just return an empty string in this case.
      return ''
    end

    local choices = self.schema.model.choices(self)

    for _, best in ipairs(preferred) do
      for _, choice in ipairs(choices) do
        if choice:find(best, 1, true) then
          return choice
        end
      end
    end

    return choices[1]
  end
end

return {
    {
        "olimorris/codecompanion.nvim",
        dependencies = {
            {
                "nvim-lua/plenary.nvim",
                "nvim-treesitter/nvim-treesitter",
            },
        },
        cmd = { "CodeCompanionChat", "CodeCompanionGenerate" },
        opts = {
            strategies = {
                chat = { adapter = "ollama" },
                inline = { adapter = "ollama" },
            },
            adapters = {
                ollama = function()
                    return require("codecompanion.adapters").extend("ollama", {
                        schema = {
                            model = {
                                default = preferred_model_picker(
                                    {
                                        'qwen2.5-coder:14b',
                                        'qwen2.5-coder:7b',
                                        'qwen2.5-coder:3b',
                                        'qwen2.5-coder:1.5b',
                                        'qwen2.5-coder:0.5b',
                                    }
                                ),
                            },
                        },
                    })
                end,
            },
        },
        keys = {
            {
                "<leader>ai",
                "<cmd>CodeCompanionActions<cr>",
                desc = "Launch Code Companion action palette",
            },
            {
                "<leader>ac",
                "<cmd>CodeCompanionChat Toggle<cr>",
                desc = "Toggle the Code Companion chat",
            },
        },
        config = function (_, opts)
            require("codecompanion").setup(opts)
        end,
    }
}


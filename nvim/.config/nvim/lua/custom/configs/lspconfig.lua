require("mason").setup()
require("mason-lspconfig").setup()

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require("lspconfig")

local servers = {
    "lua_ls",
    "rust_analyzer",
    "marksman",
    "dockerls",
    "csharp_ls",
    "yamlls",
    "tsserver",
    "bashls"
}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup({
        on_attach = on_attach,
        capabilities = capabilities,
        single_file_support = true,
    })
end


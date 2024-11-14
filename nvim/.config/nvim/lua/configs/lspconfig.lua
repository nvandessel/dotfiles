local nvlsp = require "nvchad.configs.lspconfig"
local lspconfig = require "lspconfig"

nvlsp.defaults()

local servers = {
    "lua_ls",
    "rust_analyzer",
    "marksman",
    "dockerls",
    "csharp_ls",
    "yamlls",
    "bashls",
    "zls"
}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup({
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
        single_file_support = true,
    })
end


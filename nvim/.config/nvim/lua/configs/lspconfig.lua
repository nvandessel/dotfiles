local config = require "nvchad.configs.lspconfig"

local servers = {
    lua_ls = {},
    rust_analyzer = {},
    marksman = {},
    dockerls = {},
    csharp_ls = {},
    yamlls = {},
    bashls = {},
    zls = {}
}

for name, opts in pairs(servers) do
    opts.on_init = config.on_init
    opts.on_attach = config.on_attach
    opts.capabilities = config.capabilities
    opts.single_file_support = true

    require("lspconfig")[name].setup(opts)
end


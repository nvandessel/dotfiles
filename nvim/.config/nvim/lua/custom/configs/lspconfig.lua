require("mason").setup()
require("mason-lspconfig").setup()

require("lspconfig").lua_ls.setup {}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").marksman.setup {}
require("lspconfig").dockerls.setup {}
require("lspconfig").csharp_ls.setup {}
require("lspconfig").yamlls.setup {}
require("lspconfig").tsserver.setup {}

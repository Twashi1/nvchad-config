require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "kotlin-lsp", "clangd", "pyright" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers

require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "kotlin-lsp", "clangd", "pyright", "golangci-lint-langserver" }
vim.lsp.enable(servers)

local capabilities = require("blink.cmp").get_lsp_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = false

for _, server in ipairs(servers) do
  vim.lsp.config(server, {
    capabilities = capabilities,
  })

  vim.lsp.enable(server)
end

-- read :h vim.lsp.config for changing options of lsp servers

local capabilities = require("blink.cmp").get_lsp_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = false

vim.lsp.config("clangd", {
  capabilities = capabilities,
})

return {
  "saghen/blink.cmp",
  version = "1.*",

  opts = {
    snippets = {
      preset = "none",
    },

    sources = {
      default = {
        "lsp",
        "buffer",
      },
    },

    completion = {
      accept = {
        auto_brackets = false,
      },
    },

    keymap = {
      preset = "none",

      ["<C-n>"] = {
        "select_next",
        "fallback",
      },

      ["<C-p>"] = {
        "select_prev",
        "fallback",
      },

      ["<CR>"] = {
        "accept",
        "fallback",
      },

      ["<C-space>"] = {
        "show",
      },
    },
  },
}

local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black" },
    cpp = { "clang_format" },
    h = { "clang_format" },
    kotlin = { "ktlint" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 5000,
    lsp_fallback = true,
  },

  formatters = {
    clang_format = {
      prepend_args = { "--style=file", "--fallback-style=google" },
    },
  },
}

return options

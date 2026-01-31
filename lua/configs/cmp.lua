local cmp = require "cmp"

cmp.setup {
  snippet = {
    expand = function(_) end,
  },
  mapping = {
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.confirm { select = true }
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<CR>"] = cmp.config.disable,
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
  },
}

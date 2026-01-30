local cmp = require "cmp"

cmp.setup {
  snippet = {
    expand = function(_) end,
  },
  mapping = {
    ["<Tab>"] = cmp.mapping(function(_)
      if cmp.visible() then
        cmp.confirm { select = true }
      else
        cmp.complete()
        cmp.confirm { select = true }
      end
    end, { "i", "s" }),
    ["<CR>"] = cmp.config.disable,
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
  },
}

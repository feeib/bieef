return {
  "hrsh7th/nvim-cmp",          -- сам автокомпліт
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",    -- джерело для LSP
    "hrsh7th/cmp-buffer",      -- автодоповнення з буфера
    "hrsh7th/cmp-path",        -- автодоповнення шляхів
    "L3MON4D3/LuaSnip",        -- snippets
  },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
      }),
    })
  end
}

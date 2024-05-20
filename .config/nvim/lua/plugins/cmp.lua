return {
  {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.completion.copilot-lua-cmp" },
    {
      "hrsh7th/nvim-cmp",
      opts = function(_, opts)
        local cmp = require('cmp')
        opts.mapping['<C-K>'] = cmp.mapping.select_prev_item()
        opts.mapping['<C-J>'] = cmp.mapping.select_next_item()
        opts.mapping['<CR>'] = cmp.mapping.confirm({ select = true })
        opts.mapping['<C-Space>'] = nil
        return opts
      end,
    }
  }
}


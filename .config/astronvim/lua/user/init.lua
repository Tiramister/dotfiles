return {
  plugins = {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.completion.copilot-lua-cmp" },
    {
      "hrsh7th/nvim-cmp",
      opts = function(_, opts)
        local cmp = require('cmp')
        opts.mapping['<C-K>'] = cmp.mapping.select_prev_item()
        opts.mapping['<C-J>'] = cmp.mapping.select_next_item()
        opts.mapping['<CR>'] = cmp.mapping.confirm({ select = true })
        return opts
      end,
    }
  },
  mappings = {
    c = {
      ["%%"] = {
        function()
          if vim.fn.getcmdtype() == ":" then
            return vim.fn.expand("%:h") .. "/"
          else
            return "%%"
          end
        end,
        expr = true
      }
    }
  }
}

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
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
  }
}

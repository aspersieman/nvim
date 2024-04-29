return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    options = {
      separator_stype = "slanted",
      diagnosticts = "nvim_lsp",
      diagnostics_indicator = function(count, level, _, _)
        local icon = level:match "error" and " " or " "
        return " " .. icon .. count
      end,
    },
  },
}

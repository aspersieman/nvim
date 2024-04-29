return {
  "vimwiki/vimwiki",
  init = function()
    vim.g.vimwiki_list = {
      {
        path = "~/Dropbox/configuration/vimwiki/",
        syntax = "markdown",
        ext = ".wiki",
      },
    }
  end,
  keys = { "<leader>ww", "<leader>wt" },
  lazy = false,
}

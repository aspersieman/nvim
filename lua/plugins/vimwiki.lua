return {
  "vimwiki/vimwiki",
  init = function()
    vim.g.vimwiki_list = {
      {
        path = "~/Dropbox/configuration/vimwiki/",
        syntax = "markdown",
        ext = ".wiki",
        custom_wiki2html = "$HOME/bin/customwiki2html.sh",
      },
    }
  end,
  keys = { "<leader>ww", "<leader>wt" },
  lazy = false,
}

return {
  "vimwiki/vimwiki",
  init = function()
    vim.g.vimwiki_list = {
      {
        path = "~/Dropbox/configuration/vimwiki/",
        syntax = "markdown",
        ext = ".md",
        custom_wiki2html = "$HOME/bin/customwiki2html.sh",
      },
    }
    -- https://github.com/vimwiki/vimwiki/issues/1367
    vim.treesitter.language.register("markdown", "vimwiki")
  end,
  keys = { "<leader>ww", "<leader>wt" },
  lazy = false,
}

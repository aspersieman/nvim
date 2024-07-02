return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>gr",
      function()
        require("telescope.builtin").git_branches({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Git branches",
    },
  },
}

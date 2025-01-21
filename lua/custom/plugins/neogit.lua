return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "sindrets/diffview.nvim", -- optional - Diff integration

    -- Only one of these is needed, not both.
    "nvim-telescope/telescope.nvim", -- optional
  },
  config = true,
  keys = {
    {
      "<leader>g",
      desc = "Git",
    },
    {
      "<leader>gdh",
      "<cmd>:DiffviewFileHistory %<cr>",
      desc = "Diff File History",
    },
    {
      "<leader>gdc",
      "<cmd>:DiffviewClose %<cr>",
      desc = "Diff Close",
    },
    {
      "<leader>gn",
      "<cmd>:Neogit<cr>",
      desc = "Neogit Open",
    },
    {
      "<leader>gns",
      "<cmd>:Neogit kind=split<cr>",
      desc = "Neogit Split",
    },
  },
}

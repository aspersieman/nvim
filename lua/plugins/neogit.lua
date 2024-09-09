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
      "<leader>gn",
      desc = "Neogit",
    },
    {
      "<leader>gno",
      "<cmd>:Neogit<cr>",
      desc = "Open",
    },
    {
      "<leader>gns",
      "<cmd>:Neogit kind=split<cr>",
      desc = "Split",
    },
  },
}

return {
  "AckslD/muren.nvim",
  config = true,
  lazy = false,
  event = { "UIEnter User AstroFile" },
  keys = {
    { "<leader>m", "<cmd>MurenToggle<CR>", desc = "Muren search&replace" },
  },
}

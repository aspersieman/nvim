return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function() require("todo-comments").setup {} end,
  opts = {},
  event = "User AstroFile",
  cmd = { "TodoQuickFix" },
  keys = {
    { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "View TODOs" },
  },
}

return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = { "tpope/vim-dadbod", "tpope/vim-dotenv" },
  config = function() end,
  event = { "UIEnter User AstroFile" },
  lazy = false,
  keys = {
    {
      "<leader>D",
      desc = "Dadbod",
    },
    {
      "<leader>Du",
      "<cmd>:DBUI<cr>",
      desc = "UI",
    },
    {
      "<leader>Da",
      "<cmd>:DBUIAddConnection<cr>",
      desc = "Add connection",
    },
  },
}

return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,
    init = function()
      vim.keymap.set("n", "<leader>fB", ":ToggleTerm direction=horizontal <CR>", { desc = "Terminal split [B]ottom" })
    end,
  },
}

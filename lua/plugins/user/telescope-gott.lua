return {
  {
    "sshelll/telescope-gott.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "sshelll/gott.nvim"
    },
    config = function() require("telescope").load_extension "gott" end,
    lazy = false,
  },
}

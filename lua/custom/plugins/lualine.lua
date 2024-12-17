return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', 'yavorski/lualine-macro-recording.nvim' },
  init = function()
    require('lualine').setup(require('lualine').get_config())
  end,
  opts = {
    sections = {
      -- add to section of your choice
      lualine_c = { 'macro_recording', '%S' },
    },
  },
}

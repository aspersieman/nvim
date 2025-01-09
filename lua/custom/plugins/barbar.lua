return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = true
    require('barbar').setup()
  end,
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
  keys = {
    { '[b', '<cmd>BufferPrevious<cr>', desc = 'Prev Buffer' },
    { ']b', '<cmd>BufferNext<cr>', desc = 'Next Buffer' },
    { '[B', '<cmd>BufferMovePrevious<cr>', desc = 'Move buffer prev' },
    { ']B', '<cmd>BufferMoveNext<cr>', desc = 'Move buffer next' },
  },
}

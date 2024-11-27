return {
  'seblj/roslyn.nvim',
  ft = 'cs',
  opts = {
    -- your configuration comes here; leave empty for default settings
  },
  dependencies = {},
  init = function()
    require('roslyn').setup()
  end,
}

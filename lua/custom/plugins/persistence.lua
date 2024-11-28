return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  opts = {
    -- add any custom options here
  },
  keys = {
    {
      '<leader>Sa',
      function()
        require('persistence').load()
      end,
      desc = 'Session load',
      silent = true,
    },
    {
      '<leader>SS',
      function()
        require('persistence').select()
      end,
      desc = 'Session select',
      silent = true,
    },
    {
      '<leader>Sl',
      function()
        require('persistence').load { last = true }
      end,
      desc = 'Session last',
      silent = true,
    },
    {
      '<leader>Sl',
      function()
        require('persistence').stop()
      end,
      desc = 'Session stop',
      silent = true,
    },
  },
}

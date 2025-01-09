return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
        'nvim-tree/nvim-web-devicons',
        'yavorski/lualine-macro-recording.nvim',
        'linrongbin16/lsp-progress.nvim'
},
  init = function()
    require('lualine').setup(require('lualine').get_config())
    require('lsp-progress').setup({})
    --lualine
    vim.api.nvim_create_augroup("lualine_augroup", { clear = true })
    vim.api.nvim_create_autocmd("User", {
      group = "lualine_augroup",
      pattern = "LspProgressStatusUpdated",
      callback = require("lualine").refresh,
    })
  end,
  opts = {
        sections = {
            -- add to section of your choice
            lualine_a = { 'macro_recording', '%S' },
            lualine_c = {
                function()
                    -- invoke `progress` here.
                    return require('lsp-progress').progress()
                end,
            },
        },
    },
}

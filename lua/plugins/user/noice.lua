return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
    config = {
      lsp = {
        signature = { enabled = false },
        hover = { enabled = false },
        message = { enabled = false },
      },
      routes = {
        {
          filter = {
            event = "msg_show",
            kind = "",
            any = {

              { find = "no lines in buffer" },
              -- Edit
              { find = "%d+ less lines" },
              { find = "%d+ fewer lines" },
              { find = "%d+ more lines" },
              { find = "%d+ change;" },
              { find = "%d+ line less;" },
              { find = "%d+ more lines?;" },
              { find = "%d+ fewer lines;?" },
              { find = '".+" %d+L, %d+B' },
              { find = "%d+ lines yanked" },
              { find = "^Hunk %d+ of %d+$" },
              { find = "%d+L, %d+B$" },
              { find = "^[/?].*" }, -- Searching up/down
              { find = "E486: Pattern not found:" }, -- Searching not found
              { find = "%d+ changes?;" }, -- Undoing/redoing
              { find = "%d+ fewer lines" }, -- Deleting multiple lines
              { find = "%d+ more lines" }, -- Undoing deletion of multiple lines
              { find = "%d+ lines " }, -- Performing some other verb on multiple lines
              { find = "Already at newest change" }, -- Redoing
              { find = '"[^"]+" %d+L, %d+B' }, -- Saving

              -- Save
              { find = " bytes written" },

              -- Redo/Undo
              { find = " changes; before #" },
              { find = " changes; after #" },
              { find = "1 change; before #" },
              { find = "1 change; after #" },

              -- Yank
              { find = " lines yanked" },

              -- Move lines
              { find = " lines moved" },
              { find = " lines indented" },

              -- Bulk edit
              { find = " fewer lines" },
              { find = " more lines" },
              { find = "1 more line" },
              { find = "1 line less" },

              -- General messages
              { find = "Already at newest change" }, -- Redoing
              { find = "Already at oldest change" },
            },
          },
          opts = { skip = true },
        },
        {
          filter = {
            event = "msg_show",
            kind = "string[]",
            any = {
              { find = "gott:" },
            },
          },
          opts = { skip = true },
        },
      },
      views = {
        cmdline_popup = {
          position = {
            row = 5,
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
        },
        popupmenu = {
          relative = "editor",
          position = {
            row = 8,
            col = "50%",
          },
          size = {
            width = 60,
            height = 10,
          },
          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
          win_options = {
            winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
          },
        },
      },
    },
  },
}

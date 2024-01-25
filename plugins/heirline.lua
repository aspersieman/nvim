return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    local status = require "astronvim.utils.status"
    local VisualModeLineCount = {
      condition = function() return true end,
      provider = function()
        local icon = " 👁 "
        local isVisualMode = vim.fn.mode():find "[Vv]"
        if not isVisualMode then return icon .. "0 " end
        local starts = vim.fn.line "v"
        local ends = vim.fn.line "."
        local lines = starts <= ends and ends - starts + 1 or starts - ends + 1
        return icon .. tostring(lines) .. " "
      end,
      hl = { fg = "green", bg = "black", bold = true },
    }
    opts.statusline = {
      -- statusline
      hl = { fg = "fg", bg = "bg" },
      status.component.mode { mode_text = { padding = { left = 1, right = 1 } } }, -- add the mode text
      status.component.git_branch(),
      status.component.file_info { filetype = {}, filename = false, file_modified = false },
      status.component.git_diff(),
      status.component.diagnostics(),
      status.component.fill(),
      status.component.cmd_info(),
      status.component.fill(),
      status.component.lsp(),
      status.component.treesitter(),
      VisualModeLineCount,
      status.component.nav(),
    }

    -- return the final configuration table
    return opts
  end,
}

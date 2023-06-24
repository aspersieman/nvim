return {
  "Vonr/align.nvim",
  init = function()
    local opts = { noremap = true, silent = true }
    vim.keymap.set("x", "aa", function() require("align").align_to_char(1, true) end, opts) -- Aligns to 1 character, looking left
    vim.keymap.set("x", "as", function() require("align").align_to_char(2, true, true) end, opts) -- Aligns to 2 characters, looking left and with previews
    vim.keymap.set("x", "aw", function() require("align").align_to_string(false, true, true) end, opts) -- Aligns to a string, looking left and with previews
    vim.keymap.set("x", "ar", function() require("align").align_to_string(true, true, true) end, opts) -- Aligns to a Lua pattern, looking left and with previews
  end,
  lazy = false,
  event = { "UIEnter User AstroFile" },
}

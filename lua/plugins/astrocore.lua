-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "auto", -- sets vim.opt.signcolumn to auto
        wrap = false, -- sets vim.opt.wrap
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      n = {
        ["<Leader>D"] = { name = " DB" },
        ["<Leader>Du"] = { "<cmd>DBUI<CR>", desc = "UI" },
        ["<leader>Da"] = { "<cmd>DBUIAddConnection<CR>", desc = "Add Connection" },
        ["<Leader>H"] = { name = "󱂛 HurlRunner" },
        ["<Leader>HA"] = { "<cmd>HurlRunner<CR>", desc = "Run all" },
        ["<Leader>Ha"] = { "<cmd>HurlRunnerAt<CR>", desc = "Run one" },
        ["<Leader>G"] = { name = "󰛔 Grug Search" },
        ["<Leader>Gs"] = { "<cmd>GrugFar<CR>", desc = "Search and Replace" },
        ["<Leader>W"] = { name = " Wiki" },
        ["<Leader>Ww"] = { "<cmd>VimwikiIndex<CR>", desc = "Index" },
        ["<Leader>Wd"] = { "<cmd>VimwikiMakeDiaryNote<CR>", desc = "Today Note" },
        ["<Leader>Wt"] = { "<cmd>VimwikiMakeTomorrowDiaryNote<CR>", desc = "Tomorrow Note" },
        ["<Leader>Wc"] = { "<cmd>VimwikiToggleListItem<CR>", desc = "Toggle Checkbox" },
        ["<Leader>gn"] = { "<cmd>Neogit<CR>", desc = "Neogit" },

        ["<Leader>ts"] = {
          function()
            local Terminal = require("toggleterm.terminal").Terminal
            local shellCommand = "bash"
            if vim.loop.os_uname().sysname == "Windows_NT" then shellCommand = "powershell" end
            local custom_term = Terminal:new { cmd = shellCommand, hidden = true, direction = "horizontal" }

            custom_term:toggle()
          end,
          desc = "Separate terminal",
        },
      },
      v = {
        ["<Leader>ad"] = {
          function() require("align").align_to_char { preview = true, length = 2 } end,
          desc = "To char",
        },
        ["<Leader>aw"] = {
          function() require("align").align_to_string { preview = true, regex = false } end,
          desc = "To string",
        },
        ["<Leader>ar"] = {
          function() require("align").align_to_string { preview = true, regex = true } end,
          desc = "To regex",
        },
        ["<Leader>a"] = { name = "Align" },
      },
    },
  },
}

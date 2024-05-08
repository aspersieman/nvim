return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "fredrikaverpil/neotest-golang", -- Installation
    },
    config = function()
      local c = { -- Specify configuration
        go_test_args = {
          "-v",
          "-race",
          "-count=1",
          "-timeout=60s",
          "-coverprofile=" .. vim.fn.getcwd() .. "/coverage.out",
        },
      }
      require("neotest").setup {
        adapters = {
          require "neotest-golang"(c), -- Registration
        },
      }
    end,
    keys = {
      { "<leader>U", desc = "Unit tests" },
      { "<leader>Ua", function() require("neotest").run.attach() end, desc = "[t]est [a]ttach" },
      { "<leader>Uf", function() require("neotest").run.run(vim.fn.expand "%") end, desc = "[t]est run [f]ile" },
      { "<leader>UA", function() require("neotest").run.run(vim.uv.cwd()) end, desc = "[t]est [A]ll files" },
      { "<leader>US", function() require("neotest").run.run { suite = true } end, desc = "[t]est [S]uite" },
      { "<leader>Un", function() require("neotest").run.run() end, desc = "[t]est [n]earest" },
      { "<leader>Ul", function() require("neotest").run.run_last() end, desc = "[t]est [l]ast" },
      { "<leader>Us", function() require("neotest").summary.toggle() end, desc = "[t]est [s]ummary" },
      {
        "<leader>Uo",
        function() require("neotest").output.open { enter = true, auto_close = true } end,
        desc = "[t]est [o]utput",
      },
      { "<leader>UO", function() require("neotest").output_panel.toggle() end, desc = "[t]est [O]utput panel" },
      { "<leader>Ut", function() require("neotest").run.stop() end, desc = "[t]est [t]erminate" },
      {
        "<leader>Ud",
        function() require("neotest").run.run { suite = false, strategy = "dap" } end,
        desc = "Debug nearest test",
      },
    },
  },
}

return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "fredrikaverpil/neotest-golang", -- Installation
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
    },
    event = "VeryLazy",
    opts = function(_, opts)
      opts.adapters = opts.adapters or {}
      opts.adapters["neotest-golang"] = {
        args = {
          "-v",
          "-race",
          "-count=1",
          "-timeout=60s",
          "-coverprofile=" .. vim.fn.getcwd() .. "/coverage.out",
        },
      }
    end,
    config = function(_, opts)
      if opts.adapters then
        local adapters = {}
        for name, config in pairs(opts.adapters or {}) do
          if type(name) == "number" then
            if type(config) == "string" then config = require(config) end
            adapters[#adapters + 1] = config
          elseif config ~= false then
            local adapter = require(name)
            if type(config) == "table" and not vim.tbl_isempty(config) then
              local meta = getmetatable(adapter)
              if adapter.setup then
                adapter.setup(config)
              elseif meta and meta.__call then
                adapter(config)
              else
                error("Adapter " .. name .. " does not support setup")
              end
            end
            adapters[#adapters + 1] = adapter
          end
        end
        opts.adapters = adapters
      end

      require("neotest").setup(opts)
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

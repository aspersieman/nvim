return {
  "windwp/nvim-autopairs",
  config = function(plugin, opts)
    require "plugins.configs.nvim-autopairs" (plugin, opts)
    local Rule = require "nvim-autopairs.rule"
    local npairs = require "nvim-autopairs"
    npairs.add_rules {
      Rule("{{", "  }", "vue"):set_end_pair_length(2),
    }
  end,
}

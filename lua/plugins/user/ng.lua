return {
  {
    "joeveiga/ng.nvim",
    keys = {
      { "<Leader>a", desc = "Angular" },
      {
        "<Leader>ac",
        function() require("ng").goto_component_with_template_file() end,
        desc = "Goto component with template file",
      },
      {
        "<Leader>at",
        function() require("ng").goto_template_for_component() end,
        desc = "Goto template for component",
      },
    },
  },
}

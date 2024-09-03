local opts = {}
if vim.fn.has("win32") == 1 then
  -- Remove filewatcher on windows for performance reasons
  opts = {
    filesystem = {
      use_libuv_file_watcher = false,
    },
  }
end
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = opts,
  },
}

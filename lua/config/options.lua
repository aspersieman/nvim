-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
if vim.fn.has("win32") == 1 then
  local powershell_options = {
    shell = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell",
    shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
    shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
    shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
    shellquote = "",
    shellxquote = "",
  }

  for option, value in pairs(powershell_options) do
    vim.opt[option] = value
  end
end

-- Fix inlay hint error messages bug
vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("Hints_vue", { clear = true }),
  desc = "Disable hints for Vue/Typescript",
  pattern = { "*.vue", "*.ts", "*.js" },
  callback = function(ev)
    vim.schedule(function()
      vim.lsp.inlay_hint.enable(false)
      -- vim.lsp.inlay_hint.enable(false, { bufnr = ev.buf })
    end)
  end,
})

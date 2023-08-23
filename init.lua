local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})
-- Format on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
vim.opt.shell = "pwsh.exe"
vim.opt.shellcmdflag = "-nologo -noprofile -ExecutionPolicy RemoteSigned -command"
vim.opt.shellxquote = ""

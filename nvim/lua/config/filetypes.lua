-- Treat .js files as javascriptreact (for JSX support)
vim.filetype.add({
  extension = {
    js = "javascriptreact",
  },
})

-- Tell Treesitter that javascriptreact filetype uses the javascript parser
vim.treesitter.language.register("javascript", "javascriptreact")

-- Ensure Treesitter highlighting starts automatically for javascriptreact buffers
vim.api.nvim_create_autocmd("FileType", {
  pattern = "javascriptreact",
  callback = function()
    vim.treesitter.start()
  end,
})

vim.g.mapleader = " "

vim.keymap.set("n", "[c", "<cmd>:bd<CR>", { desc = "Closes currnet tab" })
vim.keymap.set("n", "<leader>u",
  function()
    require("undotree").open({
      command = "topleft 30vnew"
    })
  end
  , { desc = "Toggles UndoTree" })
vim.keymap.set("n", "-", "<cmd>:lua MiniFiles.open()<CR>", { desc = "Opens Mini Files" })

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = true
})

-- vim.diagnostic.config({
--   virtual_text = false,
--   virtual_lines = false,
--   float = {
--     border = "rounded"
--   },
--   vim.keymap.set("n", "<leader>h", vim.diagnostic.open_float, { desc = "Show diagnostics in float" })
-- })

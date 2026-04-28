local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local g = augroup("user", { clear = true })

-- Highlight on yank
autocmd("TextYankPost", {
  group = g,
  callback = function()
    vim.hl.on_yank({ higroup = "IncSearch", timeout = 300 })
  end,
})


-- Help window left
autocmd("FileType", {
  group = g,
  pattern = "help",
  callback = function()
    vim.cmd("wincmd L")
  end,
})

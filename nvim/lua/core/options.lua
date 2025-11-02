vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt

opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

opt.number = true
opt.relativenumber = true

opt.scrolloff = 5
opt.sidescrolloff = 5

opt.mouse = 'a'
opt.mousemoveevent = true
opt.clipboard:append('unnamedplus')

opt.cursorline = true
opt.colorcolumn = "80"

local opt = vim.opt
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2

opt.title = true
opt.autoindent = true
opt.smartindent = true

opt.ignorecase = true
opt.smartcase = true

opt.hlsearch = true
opt.incsearch = true

opt.swapfile = false
opt.autoread = true
vim.bo.autoread = true

opt.splitbelow = true
opt.splitright = true

opt.list = true
opt.termguicolors = true

-- highlight on yank
vim.api.nvim_create_autocmd(
  'TextYankPost',
  {
    pattern = {"*"},
    callback = function()
      vim.highlight.on_yank({
        higroup = 'IncSearch',
        timeout = 300
      })
    end,
  }
)
-- Ensure restoring cursor style
vim.api.nvim_create_autocmd('VimLeave', {
  callback = function()
    vim.opt.guicursor = "a:hor20" -- "a: {hor20|ver25|block}"
  end,
})
-- vertical split window
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'help',
  callback = function()
    vim.cmd('wincmd L')
  end,
})

local opt = vim.opt

-- 禁用不需要的 provider
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

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

opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4

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

-- 折叠配置
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldenable = true
opt.foldcolumn = "1"
opt.signcolumn = "yes"

opt.pumblend = 10

-- LSP 浮动窗口全局边框
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover,
  { border = "rounded" }
)
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  vim.lsp.handlers.signature_help,
  { border = "rounded" }
)
vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    spacing = 4,
    source = "if_many",
    format = function(diagnostic)
      if not diagnostic then
        return ""
      end
      local src = diagnostic.source or ""
      return src ~= "" and ("[" .. src .. "] " .. diagnostic.message) or diagnostic.message
    end,
  },
  float = {
    border = "rounded",
    style = "minimal",
    source = "always",
    header = "",
    prefix = "",
  },
})

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

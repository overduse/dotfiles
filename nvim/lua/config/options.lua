local o = vim.opt

-- Disable unused providers
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

-- Encoding
o.encoding = "utf-8"
o.fileencoding = "utf-8"

-- Line numbers
o.number = true
o.relativenumber = true

-- Scrolling
o.scrolloff = 5
o.sidescrolloff = 5

-- Mouse & clipboard
o.mouse = "a"
o.clipboard:append("unnamedplus")

-- Visual
o.cursorline = true
o.termguicolors = true
o.signcolumn = "yes"
o.pumblend = 10

-- Indent (PEP 8)
o.expandtab = true
o.tabstop = 4
o.shiftwidth = 4
o.autoindent = true

-- Search
o.ignorecase = true
o.smartcase = true
o.hlsearch = true
o.incsearch = true

-- Files
o.swapfile = false
o.autoread = true
vim.bo.autoread = true

-- Splits
o.splitbelow = true
o.splitright = true

-- Fold
o.foldcolumn = "1"
o.foldlevelstart = 99

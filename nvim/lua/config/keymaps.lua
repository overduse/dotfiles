local map = vim.keymap.set
local ns = { noremap = true, silent = true }

-- Don't overwrite clipboard on delete
map("n", "x", '"_x')

-- Increment/decrement
map("n", "+", "<C-a>")
map("n", "_", "<C-x>")

-- Split windows
map("n", "ss", "<Cmd>split<CR>", ns)
map("n", "sv", "<Cmd>vsplit<CR>", ns)

-- Move between windows
map("n", "sh", "<C-w>h")
map("n", "sk", "<C-w>k")
map("n", "sj", "<C-w>j")
map("n", "sl", "<C-w>l")

-- Resize windows
map("n", "<C-w><left>", "<C-w><")
map("n", "<C-w><right>", "<C-w>>")
map("n", "<C-w><up>", "<C-w>+")
map("n", "<C-w><down>", "<C-w>-")

-- Swap windows
map("n", "<Leader>wh", "<Cmd>wincmd H<CR>", ns)
map("n", "<Leader>wl", "<Cmd>wincmd L<CR>", ns)
map("n", "<Leader>wj", "<Cmd>wincmd J<CR>", ns)
map("n", "<Leader>wk", "<Cmd>wincmd K<CR>", ns)

-- j/k move by visual lines on wrapped text
map("n", "j", [[v:count?'j':'gj']], { expr = true })
map("n", "k", [[v:count?'k':'gk']], { expr = true })

-- Paste without affecting register
map({ "n", "x" }, "<Leader>p", '"0p"')

-- Clear search highlight with Esc
map("n", "<Esc>", "<Cmd>nohl<CR><Esc>", ns)

-- Stay in visual mode on indent
map("v", "<", "<gv", ns)
map("v", ">", ">gv", ns)

-- Move lines in visual mode
map("v", "J", ":m '>+1<CR>gv=gv", ns)
map("v", "K", ":m '<-2<CR>gv=gv", ns)

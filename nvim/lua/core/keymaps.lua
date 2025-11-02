local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- New tab
keymap.set('n', 'te', '<Cmd>tabedit<CR>')
keymap.set('n', '<tab>', '<Cmd>tabnext<CR>', opts)
keymap.set('n', '<s-tab>', '<Cmd>tabprev<CR>', opts)

-- Split window
keymap.set('n', 'ss', '<Cmd>split<CR>', opts)
keymap.set('n', 'sv', '<Cmd>vsplit<CR>', opts)
-- Move window
keymap.set('n', 'sh', '<C-w>h')
keymap.set('n', 'sk', '<C-w>k')
keymap.set('n', 'sj', '<C-w>j')
keymap.set('n', 'sl', '<C-w>l')
-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')
-- Swap windows
keymap.set('n', '<Leader>wh', '<Cmd>wincmd H<CR>', opts)
keymap.set('n', '<Leader>wl', '<Cmd>wincmd L<CR>', opts)
keymap.set('n', '<Leader>wj', '<Cmd>wincmd J<CR>', opts)
keymap.set('n', '<Leader>wk', '<Cmd>wincmd K<CR>', opts)

keymap.set('n', 'j', [[v:count?'j':'gj']], { noremap = true, expr = true })
keymap.set('n', 'k', [[v:count?'k':'gk']], { noremap = true, expr = true })

-- Paste without affecting the registers
keymap.set({ 'n', 'x' }, '<leader>p', '"0p"')

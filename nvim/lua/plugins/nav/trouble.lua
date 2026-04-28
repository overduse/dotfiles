return {
  "folke/trouble.nvim",
  cmd = "Trouble",
  keys = {
    { "<leader>xx", "<Cmd>Trouble diagnostics toggle<CR>", desc = "Diagnostics" },
    { "<leader>xX", "<Cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Buffer diagnostics" },
  },
  opts = {},
}

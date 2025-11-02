return {
  'nvimdev/lspsaga.nvim',
  event = 'LspAttach',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    { "<leader>k", mode = "n","<cmd>Lspsaga hover_doc<cr>", desc = "saga hover doc" },
    { "<leader>ca", mode = {"n", "v"},"<cmd>Lspsaga code_action<cr>", desc = "saga code action" },
    { "gd", mode = "n","<cmd>Lspsaga goto_definition<cr>" , desc = "saga definition" },
    { "gh", mode = "n","<cmd>Lspsaga finder<cr>" , desc = "saga finder" },
    { "[d", mode = "n","<cmd>Lspsaga diagnostic_jump_prev<cr>", desc = "diagnostic prev" },
    { "]d", mode = "n","<cmd>Lspsaga diagnostic_jump_next<cr>", desc = "diagnostic prev" },
    { "<leader>o", mode = "n","<cmd>Lspsaga outline<cr>", desc = "outline tree" },
    { "<leader>e", mode = "n","<cmd>Lspsaga rename ++project<cr>", desc = "rename" },
  },
  config = function ()
    require('lspsaga').setup {
      ui = {
        border = 'rounded',
      },
      lightbulb = {
        enable = false,
      },
    }
  end,
}



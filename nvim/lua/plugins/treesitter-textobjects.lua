return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  lazy = false,
  opts = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
    move = {
      enable = true,
      set_jumps = true,
      keymaps = {
        ["]m"] = "@function.outer",
        ["[m"] = "@function.outer",
        ["]c"] = "@class.outer",
        ["[c"] = "@class.outer",
      },
    },
  },
}

return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    triggers = {
      { "<leader>", mode = "n" },
      { "<leader>", mode = "v" },
    },
    win = {
      border = "single",
      padding = { 1, 2 },
    },
    spec = {
      { "<leader>p", hidden = true },
      { "<leader>c", group = "+Code" },
      { "<leader>f", group = "+Find" },
      { "<leader>g", group = "+Go&Git" },
      { "<leader>w", group = "+Window" },
      { "<leader>n", group = "+Noice" },
      { "<leader>r", group = "+Rename" },
      { "<leader>x", group = "+Trouble" },
    },
  },
}

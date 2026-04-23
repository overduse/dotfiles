return {
  "folke/persistence.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      "buffers",
      "curdir",
      "tabpages",
      "winsize",
      "help",
      "ftdetect",
      "verbose",
    },
  },
  keys = {
    {
      "<leader>qs",
      function()
        require("persistence").load()
      end,
      desc = "Restore last session",
    },
    {
      "<leader>ql",
      function()
        require("persistence").load({ last = true })
      end,
      desc = "Restore last session",
    },
  },
}

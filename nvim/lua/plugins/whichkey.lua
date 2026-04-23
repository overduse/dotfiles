return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    win = {
      border = "shadow",
      padding = { 1, 2 },
    },
    spec = {
      -- General
      { "<leader>", group = "+General" },
      { "<leader>te", desc = "New tab" },
      { "<leader>wh", desc = "Swap window left" },
      { "<leader>wl", desc = "Swap window right" },
      { "<leader>wj", desc = "Swap window down" },
      { "<leader>wk", desc = "Swap window up" },
      -- LSP
      { "<leader>c", group = "+LSP" },
      { "<leader>ca", desc = "Code action" },
      { "<leader>cs", desc = "Document symbols" },
      { "<leader>cS", desc = "Workspace symbols" },
      { "<leader>rn", desc = "Rename" },
      -- Fzf
      { "<leader>f", group = "+Fzf" },
      { "<leader>ff", desc = "Find files" },
      { "<leader>fg", desc = "Grep" },
      { "<leader>fb", desc = "Find buffers" },
      { "<leader>fr", desc = "Recent files" },
      { "<leader>fh", desc = "Help tags" },
      { "<leader>fd", desc = "Workspace diagnostics" },
      { "<leader>t", desc = "Search todo comments" },
      -- Git
      { "<leader>a", group = "+Aerial" },
      { "<leader>ao", desc = "Toggle symbols outline" },
      { "<leader>a[", desc = "Previous symbol" },
      { "<leader>a]", desc = "Next symbol" },
      { "<leader>a{", desc = "Previous outer symbol" },
      { "<leader>a}", desc = "Next outer symbol" },
      -- Git
      { "<leader>g", group = "+Git" },
      { "<leader>gs", desc = "Git status" },
      { "<leader>gc", desc = "Git commits" },
      { "<leader>gb", desc = "Git branches" },
      { "<leader>gd", desc = "Git diff" },
      { "<leader>gl", desc = "Workspace diagnostics" },
      -- Noice
      { "<leader>n", group = "+Noice" },
      { "<leader>nl", desc = "Last message" },
      { "<leader>nh", desc = "History" },
      { "<leader>nd", desc = "Disable" },
    },
  },
}

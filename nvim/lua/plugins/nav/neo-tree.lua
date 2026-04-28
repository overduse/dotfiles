return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  cmd = "Neotree",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<leader>e", "<Cmd>Neotree toggle<CR>", desc = "Toggle file tree" },
  },
  opts = {
    close_if_last_window = true,
    window = { width = 30 },
    filesystem = {
      filtered_items = { hide_dotfiles = false },
    },
    window_mappings = {
      ["l"] = "open",
      ["h"] = "navigate_up",
    },
  },
}

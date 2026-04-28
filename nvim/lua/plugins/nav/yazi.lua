return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>y", function() require("yazi").yazi() end, desc = "Open yazi" },
  },
  opts = {
    floating_window_scaling_factor = 0.95,
    yazi_floating_window_winblend = 20,
    yazi_floating_window_border = "rounded",
    change_neovim_cwd_on_close = false,
  },
}

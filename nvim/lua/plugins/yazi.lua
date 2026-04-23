return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    {
      "<leader>y",
      function()
        require("yazi").yazi()
      end,
      desc = "Open yazi file manager",
    },
  },
  opts = {
    floating_window_scaling_factor = 0.95,
    yazi_floating_window_winblend = 20,
    yazi_floating_window_border = "rounded",
    -- yazi 关闭时会改变 neovim 的 cwd，导致 fzf-lua 的 get_root() 失效
    change_neovim_cwd_on_close = false,
  },
}

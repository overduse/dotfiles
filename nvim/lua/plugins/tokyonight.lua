return {
  "folke/tokyonight.nvim",
  priority = 1000,
  opts = {
    style = "moon",
    light_style = "day",
    transparent = false, terminal_colors = true,
    styles = { comments = { italic = true }, keywords = { italic = true },
      functions = {},
      variables = {},
      sidebars = "dark",
      floats = "dark",
    },
    day_brightness = 0.3,
    dim_inactive = false,
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd("colorscheme tokyonight")
  end,
}

return {
  "folke/tokyonight.nvim",
  priority = 1000,
  dependencies = {
    "nvim-lualine/lualine.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    style = "night",
    light_style = "moon",
    transparent = true,
    terminal_colors = true,
    styles = {
      comments = { italic = true },
      keywords = { italic = true },
      functions = {},
      variables = {},
      sidebars = "dark",
      floats = "dark",
    },
    day_brightness = 0.3,
    dim_inactive = false,
    lualine_bold = false,
  },
  config = function (_, opts)
    require("tokyonight").setup(opts)
    vim.cmd("colorscheme tokyonight")
    require('lualine').setup {
        options = {
          theme = 'auto',
        },
      }
  end
}

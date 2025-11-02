return {
  {
    "mason-org/mason.nvim",
    dependencies = {
      -- 'neovim/nvim-lspconfig',
      'mason-org/mason-lspconfig.nvim', },
    event = "VeryLazy",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      automatic_enable = {
        'lua_ls',
        'vim_ls',
        'pyright',
        'clangd',
      }

    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  }
}

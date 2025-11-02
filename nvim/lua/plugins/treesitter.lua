return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',
  opts = {
    ensure_installed = {
      'c', 'cpp', 'lua', 'vim',
      'vimdoc', 'query', 'python',
      'markdown', 'markdown_inline',
    },

    sync_install = false,
    auto_install = true,
    indent = { enable = true },

    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  }
}

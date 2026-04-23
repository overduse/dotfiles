return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  main = "nvim-treesitter",
  opts = {
    ensure_installed = {
      -- 核心
      "lua",
      "vim",
      "vimdoc",
      "query",
      -- Python + C/C++ + CUDA
      "python",
      "c",
      "cpp",
      "cuda-cpp",
      -- 常用配置语言
      "bash",
      "json",
      "yaml",
      "toml",
      "markdown",
      "markdown_inline",
      "diff",
      "gitignore",
      "gitcommit",
    },
    sync_install = false,
    auto_install = true,
    ignore_install = {},

    -- 语法高亮
    highlight = {
      enable = true,
      disable = {},
      additional_vim_regex_highlighting = false,
    },

    -- 实验性缩进
    indent = {
      enable = true,
    },

    -- 增量选择
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
  },
}

return {
  "folke/snacks.nvim",
  event = "VeryLazy",
  opts = {
    -- 通知系统已迁移到 nvim-notify
    notifier = {
      enabled = false,
    },

    -- 增强 vim.ui.input / vim.ui.select
    input = {
      enabled = true,
    },

    -- 高亮同一作用域的变量引用
    scope = {
      enabled = true,
    },

    -- 高亮光标下的单词
    words = {
      enabled = true,
    },

    -- 大文件处理（自动降级语法高亮）
    bigfile = {
      enabled = true,
    },

    -- 文件缓存（快速访问已打开的文件）
    quickfile = {
      enabled = true,
    },

    -- 平滑滚动
    scroll = {
      enabled = false,
    },
  },

  keys = {
    -- 清除所有通知（snacks scope/words/bigfile/quickfile 无需按键）
    {
      "<leader>un",
      function()
        Snacks.notifier.hide()
      end,
      desc = "Dismiss All Notifications",
    },
  },
}

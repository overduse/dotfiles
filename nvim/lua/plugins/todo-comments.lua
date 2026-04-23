return {
  "folke/todo-comments.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    {
      "<leader>t",
      "<cmd>TodoFzfLua<cr>",
      desc = "Search todo comments",
    },
    {
      "]t",
      function()
        require("todo-comments").jump_next()
      end,
      desc = "Next todo comment",
    },
    {
      "[t",
      function()
        require("todo-comments").jump_prev()
      end,
      desc = "Previous todo comment",
    },
  },
}

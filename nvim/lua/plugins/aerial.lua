return {
  "stevearc/aerial.nvim",
  event = "VeryLazy",
  opts = {
    attach_mode = "global",
    backends = { "lsp", "treesitter" },
    layout = {
      max_width = { 40, 0.2 },
      min_width = 20,
      default_direction = "prefer_right",
    },
    icons = {
      Class = "󰠱 ",
      Function = "󰊕 ",
      Method = "󰆧 ",
      Variable = "󰀧 ",
      Constant = "󰏿 ",
      Field = "󰜢 ",
      Interface = "󰅲 ",
      Module = "󰆧 ",
      Property = "󰜢 ",
      Struct = "󰙅 ",
      Enum = "󰕘 ",
      EnumMember = "󰘮 ",
      File = "󰈙 ",
      Namespace = "󰅗 ",
      Package = "󰆦 ",
    },
    filter_kind = false,
    show_line_guides = true,
    nerd_font = "auto",
  },
  keys = {
    {
      "<leader>ao",
      function()
        require("aerial").toggle()
      end,
      desc = "Toggle Aerial (symbols outline)",
    },
    {
      "<leader>a[",
      function()
        require("aerial").prev()
      end,
      desc = "Previous symbol",
    },
    {
      "<leader>a]",
      function()
        require("aerial").next()
      end,
      desc = "Next symbol",
    },
    {
      "<leader>a{",
      function()
        require("aerial").prev_up()
      end,
      desc = "Previous outer symbol",
    },
    {
      "<leader>a}",
      function()
        require("aerial").next_up()
      end,
      desc = "Next outer symbol",
    },
  },
}

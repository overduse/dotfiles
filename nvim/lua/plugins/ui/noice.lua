return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    routes = {
      {
        filter = { event = "notify", find = "No information available" },
        opts = { skip = true },
      },
    },
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["vim.lsp.util.apply_text_edits"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    presets = {
      bottom_search = false,
      command_palette = false,
      long_message_to_split = true,
      inc_rename = false,
      lsp_doc_border = true,
    },
    messages = {
      view_search = "virtualtext",
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    {
      "rcarriga/nvim-notify",
      opts = {
        render = "minimal",
      },
    },
  },
  keys = {
    {
      "<S-Enter>",
      function()
        require("noice").redirect(vim.fn.input "Command: ")
      end,
      mode = "c",
      desc = "Redirect Cmdline",
    },
    {
      "<leader>nh",
      function()
        require("noice").cmd "history"
      end,
      desc = "Noice History",
    },
    {
      "<leader>nd",
      function()
        require("noice").cmd "disable"
      end,
      desc = "Noice Disable",
    },
  },
}

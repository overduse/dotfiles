return {
  "kevinhwang91/nvim-ufo",
  event = "BufReadPost",
  dependencies = {
    "kevinhwang91/promise-async",
  },
  opts = {
    preview = {
      mappings = {
        ["j"] = "j",
        ["k"] = "k",
        ["gJ"] = "gJ",
        ["gK"] = "gK",
        ["<C-u>"] = false,
        ["<C-d>"] = false,
      },
      win_config = {
        border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
        winblend = 15,
        maxheight = 15,
      },
    },
    provider_selector = function(_, filetype, _)
      local override = {
        python = { "treesitter", "indent" },
        lua = { "treesitter", "indent" },
        markdown = { "treesitter" },
      }
      return override[filetype] or { "treesitter", "indent" }
    end,
  },
  keys = {
    { "zR", function() require("ufo").openAllFolds() end, desc = "Open all folds" },
    { "zM", function() require("ufo").closeAllFolds() end, desc = "Close all folds" },
    { "zr", function() require("ufo").openFoldsExceptKinds() end, desc = "Open folds except kinds" },
    { "zm", function() require("ufo").closeFoldsWith() end, desc = "Close folds" },
    { "K", function() require("ufo").peekFoldedLinesUnderCursor() end, desc = "Peek fold preview" },
  },
}

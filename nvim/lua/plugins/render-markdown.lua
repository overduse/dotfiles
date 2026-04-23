return {
  "MeanderingProgrammer/render-markdown.nvim",
  event = { "BufReadPost", "BufNewFile", "BufWritePost" },
  ft = { "markdown" },
  opts = {
    file_types = { "markdown" },
    heading = {
      enabled = true,
      style = "full",
      sign = false,
      highlight = "Title",
      icons = {
        -- Nerd font icons for headings
        " ",
        " ",
        " ",
        " ",
        " ",
        " ",
      },
    },
    dash = {
      highlight = "Delimiter",
    },
    deny_filetypes = {
      "NeogitCommitMessage",
      "NeogitCommitMessageView",
      "NeogitDiffView",
      "qf",
    },
  },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
}

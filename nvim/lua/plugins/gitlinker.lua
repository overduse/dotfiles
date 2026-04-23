return {
  "linrongbin16/gitlinker.nvim",
  event = "VeryLazy",
  opts = {
    action_callback = function(url)
      vim.fn.setreg("+", url)
      vim.notify("URL copied: " .. url, "info", { title = "Gitlinker" })
    end,
    mappings = nil,
  },
}

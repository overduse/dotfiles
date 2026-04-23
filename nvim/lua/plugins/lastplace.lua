return {
  "ethanholz/nvim-lastplace",
  event = "BufReadPost",
  opts = {
    enable_commit_git = true,
    ignore_buftypes = { "quickfix", "nofile", "help" },
    ignore_filetype = { "gitcommit", "gitrebase", "svg", "qf" },
  },
}

return {
  "rainbowhxch/accelerated-jk.nvim",
  event = "BufReadPost",
  opts = {
    acceleration_limit = 10,
    acceleration_table = { 3, 6, 9, 12, 15, 18, 21, 24, 27 },
  },
  keys = {
    { "j", nil, desc = "Accelerated j" },
    { "k", nil, desc = "Accelerated k" },
  },
}

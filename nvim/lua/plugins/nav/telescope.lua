return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      sorting_strategy = "ascending",
      layout_config = {
        horizontal = {
          height = 0.85,
          width = 0.80,
          prompt_position = "bottom",
        },
      },
      border = true,
      color_devicons = true,
    },
    pickers = {
      find_files = {
        find_opts = { "--type", "f", "--color", "never", "--exclude", ".git" },
      },
    },
  },
  config = function(_, opts)
    local telescope = require("telescope")
    telescope.setup(opts)
    pcall(telescope.load_extension, "fzf")
  end,
  keys = {
    -- Files / Grep
    { "<leader>ff", "<Cmd>Telescope find_files<CR>", desc = "Find files" },
    { "<leader>fg", "<Cmd>Telescope live_grep<CR>", desc = "Live grep" },
    { "<leader>fb", "<Cmd>Telescope buffers<CR>", desc = "Buffers" },
    { "<leader>fh", "<Cmd>Telescope help_tags<CR>", desc = "Help tags" },
    { "<leader>fr", "<Cmd>Telescope oldfiles<CR>", desc = "Recent files" },
    -- Git
    { "<leader>gs", "<Cmd>Telescope git_status<CR>", desc = "Git status" },
    { "<leader>gc", "<Cmd>Telescope git_commits<CR>", desc = "Git commits" },
    { "<leader>gb", "<Cmd>Telescope git_branches<CR>", desc = "Git branches" },
    -- Diagnostics
    { "gl", "<Cmd>Telescope diagnostics<CR>", desc = "Workspace diagnostics" },
    { "<leader>fd", "<Cmd>Telescope diagnostics bufnr=0<CR>", desc = "Buffer diagnostics" },
    -- LSP
    { "gd", "<Cmd>Telescope lsp_definitions<CR>", desc = "Definitions" },
    { "gr", "<Cmd>Telescope lsp_references<CR>", desc = "References" },
    { "gi", "<Cmd>Telescope lsp_implementations<CR>", desc = "Implementations" },
    { "<leader>ca", "<Cmd>Telescope lsp_code_actions<CR>", mode = { "n", "x" }, desc = "Code action" },
    { "<leader>cs", "<Cmd>Telescope lsp_document_symbols<CR>", desc = "Document symbols" },
    { "<leader>cS", "<Cmd>Telescope lsp_workspace_symbols<CR>", desc = "Workspace symbols" },
  },
}

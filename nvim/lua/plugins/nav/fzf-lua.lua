local function get_root()
  local bufpath = vim.api.nvim_buf_get_name(0)
  if bufpath == "" then
    return vim.fn.getcwd()
  end
  return vim.fs.root(bufpath, ".git") or vim.fn.getcwd()
end

return {
  "ibhagwan/fzf-lua",
  cmd = { "FzfLua" },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    winopts = {
      height = 0.85,
      width = 0.80,
      row = 0.35,
      col = 0.50,
      border = "rounded",
      backdrop = 60,
      preview = {
        layout = "flex",
      },
    },
    files = {
      prompt = "files> ",
      fd_opts = "--type f --color=never --exclude .git",
      git_icons = true,
    },
    live_grep = {
      rg_opts = "--color=never --column --hidden --no-heading --glob '!.git'",
    },
    help_tags = {
      silent = true,
    },
    defaults = {
      fzf_opts = {
        ["--layout"] = "default",
      },
    },
  },
  keys = {
    -- Files / Grep
    { "<leader>ff", "<Cmd>FzfLua files<CR>", desc = "Find files" },
    { "<leader>fg", "<Cmd>FzfLua live_grep<CR>", desc = "Live grep" },
    { "<leader>fb", "<Cmd>FzfLua buffers<CR>", desc = "Buffers" },
    { "<leader>fh", "<Cmd>FzfLua help_tags<CR>", desc = "Help tags" },
    { "<leader>fr", "<Cmd>FzfLua oldfiles<CR>", desc = "Recent files" },
    -- Git
    { "<leader>gs", function() require("fzf-lua").git_status({ cwd = get_root() }) end, desc = "Git status" },
    { "<leader>gc", "<Cmd>FzfLua git_commits<CR>", desc = "Git commits" },
    { "<leader>gb", "<Cmd>FzfLua git_branches<CR>", desc = "Git branches" },
    -- Diagnostics
    { "gl", "<Cmd>FzfLua diagnostics_workspace<CR>", desc = "Workspace diagnostics" },
    { "<leader>fd", "<Cmd>FzfLua diagnostics_document<CR>", desc = "Buffer diagnostics" },
    -- LSP
    { "gd", "<Cmd>FzfLua lsp_definitions<CR>", desc = "Definitions" },
    { "gr", "<Cmd>FzfLua lsp_references<CR>", desc = "References" },
    { "gi", "<Cmd>FzfLua lsp_implementations<CR>", desc = "Implementations" },
    { "<leader>ca", "<Cmd>FzfLua lsp_code_actions<CR>", mode = { "n", "x" }, desc = "Code action" },
    { "<leader>cs", "<Cmd>FzfLua lsp_document_symbols<CR>", desc = "Document symbols" },
    { "<leader>cS", "<Cmd>FzfLua lsp_workspace_symbols<CR>", desc = "Workspace symbols" },
  },
}

return {
  "ibhagwan/fzf-lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  event = "VeryLazy",
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
      fd_opts = "--type f --color=never",
      git_icons = true,
    },
    live_grep = {
      rg_opts = "--color=never --column --hidden --no-heading",
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
  config = function(_, opts)
    local fzf = require("fzf-lua")

    -- 覆盖默认配置
    fzf.setup(opts)

    -- 获取当前 buffer 所在项目的 git root
    local function get_root()
      local bufpath = vim.api.nvim_buf_get_name(0)
      if bufpath == "" then
        return vim.fn.getcwd()
      end
      local root = vim.fs.root(bufpath, ".git")
      return root or vim.fs.root(vim.fn.getcwd(), ".git") or vim.fn.getcwd()
    end

    -- 快捷键
    vim.keymap.set("n", "<leader>ff", function()
      fzf.files({ cwd = get_root() })
    end, { desc = "Find files" })

    vim.keymap.set("n", "<leader>fg", function()
      fzf.live_grep({ cwd = get_root() })
    end, { desc = "Grep" })

    vim.keymap.set("n", "<leader>fb", function()
      fzf.buffers()
    end, { desc = "Find buffers" })

    vim.keymap.set("n", "<leader>fh", function()
      fzf.help_tags()
    end, { desc = "Help tags" })

    vim.keymap.set("n", "<leader>fr", function()
      fzf.oldfiles()
    end, { desc = "Recent files" })

    vim.keymap.set("n", "<leader>gs", function()
      fzf.git_status({ cwd = get_root() })
    end, { desc = "Git status" })

    vim.keymap.set("n", "<leader>t", function()
      fzf.live_grep({
        cwd = get_root(),
        search = "",
        rg_opts = "--color=never --column --hidden --no-heading",
        prompt = "todo> ",
        fzf_opts = {
          "--query", "(//|#|--|<!--)\\s*(TODO|FIXME|FIX|HACK|XXX|NOTE|WARN)",
          "--delimiter", ":",
        },
        exec_empty_query = true,
      })
    end, { desc = "Search todo comments" })

    vim.keymap.set("n", "<leader>gc", function()
      fzf.git_commits()
    end, { desc = "Git commits" })

    vim.keymap.set("n", "<leader>gb", function()
      fzf.git_branches()
    end, { desc = "Git branches" })

    vim.keymap.set("n", "<leader>fd", function()
      fzf.diagnostics({ cwd = get_root() })
    end, { desc = "Workspace diagnostics" })

    -- LSP（浮动窗口）
    vim.keymap.set("n", "gl", fzf.diagnostics_workspace, { desc = "Show diagnostics" })
    vim.keymap.set("n", "gd", fzf.lsp_definitions, { desc = "Go to definition" })
    vim.keymap.set("n", "gr", fzf.lsp_references, { desc = "Show references" })
    vim.keymap.set("n", "gi", fzf.lsp_implementations, { desc = "Go to implementation" })
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
    vim.keymap.set({ "n", "x" }, "<leader>ca", fzf.lsp_code_actions, { desc = "Code action" })
    vim.keymap.set("n", "<leader>cs", fzf.lsp_document_symbols, { desc = "Document symbols" })
    vim.keymap.set("n", "<leader>cS", fzf.lsp_workspace_symbols, { desc = "Workspace symbols" })

    -- Todo user command (供 alpha 按钮调用)
    vim.api.nvim_create_user_command("TodoSearch", function()
      local root = get_root()
      fzf.live_grep({
        cwd = root,
        search = "",
        rg_opts = "--color=never --column --hidden --no-heading",
        prompt = "todo> ",
        fzf_opts = {
          "--query", "(//|#|--|<!--)\\s*(TODO|FIXME|FIX|HACK|XXX|NOTE|WARN)",
          "--delimiter", ":",
        },
        exec_empty_query = true,
      })
    end, {})
  end,
}
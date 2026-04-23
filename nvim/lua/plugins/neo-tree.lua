return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "s1n7ax/nvim-window-picker",
  },
  cmd = "Neotree",
  keys = {
    {
      "<leader>e",
      function()
        local bufpath = vim.api.nvim_buf_get_name(0)
        local root = bufpath ~= "" and vim.fs.root(bufpath, ".git")
          or vim.fs.root(vim.fn.getcwd(), ".git")
          or vim.fn.getcwd()
        require("neo-tree.command").execute({
          source = "filesystem",
          path = root,
          focus = true,
        })
      end,
      desc = "Toggle file explorer at git root",
    },
  },
  opts = {
    sources = { "filesystem", "buffers", "git_status" },
    close_if_last_window = true,
    use_image = "devicons",
    default_component_config = {
      icon = {
        folder_closed = ">",
        folder_open = "v",
        folder_empty = "󰜌",
        default = "▎",
      },
      git_status = {
        symbols = {
          added = "+",
          modified = "~",
          deleted = "-",
          renamed = "➡",
          untracked = "?",
          ignored = "!",
          unstaged = "",
          staged = "",
          conflict = ">",
        },
      },
    },
    document_highlight = false,
    popup_border_style = "rounded",
    window = {
      position = "left",
      width = 40,
      mapping_options = {
        noremap = true,
        nowait = true,
      },
      mappings = {
        ["<space>"] = "toggle_node",
        ["<Esc>"] = "cancel",
        ["<CR>"] = "open",
        ["l"] = "open",
        ["h"] = "close_node",
        ["<Tab>"] = "toggle_node",
      },
    },
    filesystem = {
      bind_to_cwd = false,
      follow_current_file = { enabled = true },
      group_empty_dirs = false,
      use_libuv_file_watcher = true,
      filtered_items = {
        visible = false,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_hidden = false,
        hide_by_name = {
          ".DS_Store",
          "thumbs.db",
          "node_modules",
          ".git",
        },
      },
    },
    buffers = {
      show_ungrouped = true,
      group_empty_dirs = true,
    },
  },
}

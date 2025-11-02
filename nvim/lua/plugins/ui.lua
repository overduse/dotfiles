return {
  -- Bufferline --
  {
    "akinsho/bufferline.nvim",
    event = "BufReadPre",
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
    local bufferline = require("bufferline")
      bufferline.setup {
        options = {
          mode = "buffers",
          hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
          },
          style_preset = bufferline.style_preset.minimal,

          numbers = "both",
          indicator = {
            icon = '▎',
            style = 'icon',
          },
          separator_style = "thick",

          buffer_close_icon = '󰅖',
          modified_icon = '●',
          close_icon = '',
          left_trunc_marker = '',
          right_trunc_marker = '',

          max_name_length = 30,
          max_prefix_length = 30,
          tab_size = 21,
          diagnostics = "nvim_lsp",

          offsets = { { filetype = "neo-tree", text = "", padding = 1} },
          show_buffer_icons = true,
          show_buffer_close_icons = true,
          show_close_icon = true,
          show_tab_indicators = true,
          persist_buffer_sort = true,
          enforce_regular_tabs = true,
          always_show_bufferline = true,

        },
    }
      vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
      vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
    end
  },

  -- Noise --
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
      },
      -- you can enable a present for easier configuration
      presets = {
        bottom_search = false,
        command_palette = false,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },

  -- Notify --
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
      render = "minimal", -- 'minimal', 'default', 'simple', 'compact'
    }
  },

  -- Git aux --
  {
    "lewis6991/gitsigns.nvim",
    config = true,
  },

}

return {
  'saghen/blink.cmp',
  dependencies = {
    'rafamadriz/friendly-snippets'
  },
  version = '1.*',
  opts = {
    keymap = {
      preset = 'default',
      -- ['<C-B>'] = { 'show', 'show_documentation', 'hide_documentation' },
      ["<C-U>"] = { "scroll_documentation_up", "fallback" },
      ["<C-D>"] = { "scroll_documentation_down", "fallback" },
    },

    appearance = {
      nerd_font_variant = 'mono'
    },
    completion = {
      documentation = {
        auto_show = true
      }
    },
    sources = {
      default = {
        'lsp', 'path', 'snippets', 'buffer'
      },
    },
    fuzzy = {
      implementation = "prefer_rust_with_warning"
    }
  },
  opts_extend = { "sources.default" }
}


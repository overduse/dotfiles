# Neovim Configuration

Modern Neovim configuration based on lazy.nvim, with out-of-the-box support for LSP, Treesitter, fuzzy search, enhanced folding, and more.

## Plugins

### Core

| Plugin | Description |
| :--- | :--- |
| `folke/lazy.nvim` | Plugin manager |
| `folke/tokyonight.nvim` | Theme |

### LSP / Diagnostics

| Plugin | Description |
| :--- | :--- |
| `neovim/nvim-lspconfig` | LSP configuration |
| `williamboman/mason.nvim` | LSP server installer |
| `williamboman/mason-lspconfig.nvim` | Bridge between Mason and LSPconfig |
| `folke/trouble.nvim` | Diagnostics list & quick fixes |
| `folke/noice.nvim` | Message / command-line UI |
| `rcarriga/nvim-notify` | Notification system |

### Completion

| Plugin | Description |
| :--- | :--- |
| `saghen/blink.cmp` | Modern completion engine |
| `L3MON4D3/LuaSnip` | Code snippets |
| `rafamadriz/friendly-snippets` | Common code snippets |

### Treesitter

| Plugin | Description |
| :--- | :--- |
| `nvim-treesitter/nvim-treesitter` | Syntax parsing & highlighting |
| `nvim-treesitter/nvim-treesitter-textobjects` | Function / class text objects |
| `nvim-treesitter/nvim-treesitter-context` | Code context header bar |
| `stevearc/aerial.nvim` | Symbol tree sidebar |

### Folding

| Plugin | Description |
| :--- | :--- |
| `kevinhwang91/nvim-ufo` | Modern folding engine |

### File Search

| Plugin | Description |
| :--- | :--- |
| `ibhagwan/fzf-lua` | Fuzzy search |
| `nvim-neo-tree/neo-tree.nvim` | File tree |
| `s1n7ax/nvim-window-picker` | Window picker |
| `mborepo/yazi.vim` | Yazi file manager |

### Git

| Plugin | Description |
| :--- | :--- |
| `lewis6991/gitsigns.nvim` | Git status signs |
| `kdheepak/lazygit.nvim` | LazyGit integration |
| `ruifambo/gitlinker.nvim` | Copy Git permalink |

### Editing Enhancements

| Plugin | Description |
| :--- | :--- |
| `folke/snacks.nvim` | UI enhancements (scope/words/bigfile) |
| `folke/flash.nvim` | Enhanced search & jump |
| `echasnovski/mini.nvim` | Surround text |
| `windwp/nvim-autopairs` | Auto-pair brackets |
| `numToStr/Comment.nvim` | Quick commenting |
| `folke/which-key.nvim` | Keybinding hints |
| `rainbowhxch/accelerated-jk.nvim` | Accelerated j/k navigation |
| `ethanholz/nvim-lastplace` | Resume last edit position |

### Status Bar / UI

| Plugin | Description |
| :--- | :--- |
| `nvim-lualine/lualine.nvim` | Status bar |
| `akinsho/bufferline.nvim` | Tab bar |
| `goolord/alpha-nvim` | Start screen |
| `brenoprata10/nvim-highlight-colors` | Color highlighting |
| `MeanderingProgrammer/render-markdown.nvim` | Markdown rendering |
| `folke/todo-comments.nvim` | TODO highlighting |
| `folke/persistence.nvim` | Session restore |

---

## Keybindings

### General

| Key | Action |
| :--- | :--- |
| `x` | Delete without affecting registers |
| `+` | Increment number |
| `_` | Decrement number |
| `j/k` | Move by screen line (accelerated jk available) |
| `gp` | Paste without overwriting register |
| `<leader>p` | Paste from last yank |

### Windows / Tabs

| Key | Action |
| :--- | :--- |
| `te` | New tab |
| `<tab>` | Next tab |
| `<s-tab>` | Previous tab |
| `ss` | Horizontal split |
| `sv` | Vertical split |
| `sh/sk/sj/sl` | Move to left/up/down/right window |
| `<C-w><direction>` | Resize window |
| `<leader>wh/wl/wj/wk` | Swap window position |

### Files

| Key | Action |
| :--- | :--- |
| `<leader>e` | Toggle file tree (neo-tree) |
| `<leader>ff` | File search |
| `<leader>fg` | Grep (full-text search) |
| `<leader>fb` | Search buffers |
| `<leader>fr` | Recent files |
| `<leader>fh` | Help tags search |

### Git

| Key | Action |
| :--- | :--- |
| `<leader>gs` | Git status (fzf) |
| `<leader>gc` | Git commit log |
| `<leader>gb` | Git branches |
| `<leader>gd` | Git diff |

### LSP

| Key | Action |
| :--- | :--- |
| `gd` | Go to definition (fzf picker) |
| `gr` | Find references |
| `gi` | Find implementations |
| `gl` | Workspace diagnostics |
| `K` | Hover docs |
| `<leader>rn` | Rename |
| `<leader>ca` | Code Action |
| `<leader>cs` | Document symbols |
| `<leader>cS` | Workspace symbols |
| `]d` | Next diagnostic |
| `[d` | Previous diagnostic |

### Trouble (Diagnostics Panel)

| Key | Action |
| :--- | :--- |
| `<leader>xx` | All diagnostics list |
| `<leader>xX` | Current buffer diagnostics |
| `]q` | Next item |
| `[q` | Previous item |

### Aerial (Symbol Tree)

| Key | Action |
| :--- | :--- |
| `<leader>ao` | Toggle symbol tree sidebar |
| `<leader>a]` | Next symbol |
| `<leader>a[` | Previous symbol |
| `<leader>a}` | Parent symbol |
| `<leader>a{` | Child symbol |

### Folding (ufo + native)

| Key | Action |
| :--- | :--- |
| `za` | Toggle current fold |
| `zA` | Recursive toggle |
| `zo` | Open fold |
| `zO` | Recursive open |
| `zc` | Close fold |
| `zC` | Recursive close |
| `zR` | Open all folds |
| `zM` | Close all folds |
| `zr` | Open one level |
| `zm` | Close one level |
| `K` | Preview fold content |

### Search

| Key | Action |
| :--- | :--- |
| `/` | Search (flash.nvim) |
| `s` | Character jump (flash.nvim) |
| `<leader>t` | Search TODO / FIXME comments |

### Noice (Messages)

| Key | Action |
| :--- | :--- |
| `<leader>nh` | Message history |
| `<leader>nd` | Disable Noice |

---

## LSP Servers

Auto-installed LSP servers:

- `pyright` — Python
- `clangd` — C / C++ / CUDA
- `lua_ls` — Lua
- `stylua` — Lua formatter

---

## Configuration

- `init.lua` — Entry point, lazy.nvim bootstrap
- `lua/core/options.lua` — Editor options
- `lua/core/keymaps.lua` — Base keybindings
- `lua/plugins/` — Per-plugin configs (one file per plugin)
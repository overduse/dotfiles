# Neovim Configuration

基于 lazy.nvim 的现代化 Neovim 配置，支持 LSP、Treesitter、模糊搜索、折叠增强等开箱即用的功能。

## 插件列表

### 核心

| 插件 | 说明 |
|------|------|
| `folke/lazy.nvim` | 插件管理器 |
| `folke/tokyonight.nvim` | 主题 |

### LSP / 诊断

| 插件 | 说明 |
|------|------|
| `neovim/nvim-lspconfig` | LSP 配置 |
| `williamboman/mason.nvim` | LSP server 安装器 |
| `williamboman/mason-lspconfig.nvim` | Mason 与 LSPconfig 桥接 |
| `folke/trouble.nvim` | 诊断列表与快速修复 |
| `folke/noice.nvim` | 消息 / 命令行 UI |
| `rcarriga/nvim-notify` | 通知系统 |

### 补全

| 插件 | 说明 |
|------|------|
| `saghen/blink.cmp` | 现代补全引擎 |
| `L3MON4D3/LuaSnip` | 代码片段 |
| `rafamadriz/friendly-snippets` | 通用代码片段 |

### Treesitter

| 插件 | 说明 |
|------|------|
| `nvim-treesitter/nvim-treesitter` | 语法解析与高亮 |
| `nvim-treesitter/nvim-treesitter-textobjects` | 函数 / 类文本对象 |
| `nvim-treesitter/nvim-treesitter-context` | 代码上下文顶栏 |
| `stevearc/aerial.nvim` | 符号树侧边栏 |

### 折叠

| 插件 | 说明 |
|------|------|
| `kevinhwang91/nvim-ufo` | 现代化折叠引擎 |

### 文件搜索

| 插件 | 说明 |
|------|------|
| `ibhagwan/fzf-lua` | 模糊搜索 |
| `nvim-neo-tree/neo-tree.nvim` | 文件树 |
| `s1n7ax/nvim-window-picker` | 窗口选择器 |
| `mborepo/yazi.vim` | Yazi 文件管理器 |

### Git

| 插件 | 说明 |
|------|------|
| `lewis6991/gitsigns.nvim` | Git 状态符号 |
| `kdheepak/lazygit.nvim` | LazyGit 集成 |
| `ruifambo/gitlinker.nvim` | Git permalink 复制 |

### 编辑增强

| 插件 | 说明 |
|------|------|
| `folke/snacks.nvim` | UI 增强（scope / words / bigfile） |
| `folke/flash.nvim` | 搜索跳转增强 |
| `echasnovski/mini.nvim` | 环绕文本 / surround |
| `windwp/nvim-autopairs` | 自动配对括号 |
| `numToStr/Comment.nvim` | 快速注释 |
| `folke/which-key.nvim` | 快捷键提示 |
| `rainbowhxch/accelerated-jk.nvim` | j/k 加速导航 |
| `ethanholz/nvim-lastplace` | 恢复上次编辑位置 |

### 状态栏 / 界面

| 插件 | 说明 |
|------|------|
| `nvim-lualine/lualine.nvim` | 状态栏 |
| `akinsho/bufferline.nvim` | 标签页 |
| `goolord/alpha-nvim` | 启动界面 |
| `brenoprata10/nvim-highlight-colors` | 颜色高亮 |
| `MeanderingProgrammer/render-markdown.nvim` | Markdown 渲染 |
| `folke/todo-comments.nvim` | TODO 高亮 |
| `folke/persistence.nvim` | 会话恢复 |

---

## 快捷键

### 基础

| 快捷键 | 功能 |
|--------|------|
| `x` | 删除不进入寄存器 |
| `+` | 数字递增 |
| `_` | 数字递减 |
| `j` / `k` | 按屏幕行移动（加速 jk 可用） |
| `gp` | 粘贴不覆盖寄存器 |
| `<leader>p` | 从上一次粘贴内容粘贴 |

### 窗口 / 标签

| 快捷键 | 功能 |
|--------|------|
| `te` | 新标签页 |
| `<tab>` | 下一标签页 |
| `<s-tab>` | 上一标签页 |
| `ss` | 水平分割窗口 |
| `sv` | 垂直分割窗口 |
| `sh` / `sk` / `sj` / `sl` | 移动到左 / 上 / 下 / 右窗口 |
| `<C-w><方向>` | 调整窗口大小 |
| `<leader>wh` / `wl` / `wj` / `wk` | 交换窗口位置 |

### 文件

| 快捷键 | 功能 |
|--------|------|
| `<leader>e` | 切换文件树（neo-tree） |
| `<leader>ff` | 文件搜索 |
| `<leader>fg` | Grep 全文搜索 |
| `<leader>fb` | 搜索 Buffer |
| `<leader>fr` | 最近文件 |
| `<leader>fh` | Help 标签搜索 |

### Git

| 快捷键 | 功能 |
|--------|------|
| `<leader>gs` | Git 状态（fzf） |
| `<leader>gc` | Git 提交记录 |
| `<leader>gb` | Git 分支 |
| `<leader>gd` | Git 文件差异 |

### LSP

| 快捷键 | 功能 |
|--------|------|
| `gd` | 跳转到定义（fzf picker） |
| `gr` | 查看引用列表 |
| `gi` | 查看实现 |
| `gl` | 工作区诊断 |
| `K` | Hover 文档 |
| `<leader>rn` | 重命名 |
| `<leader>ca` | Code Action |
| `<leader>cs` | 文档符号 |
| `<leader>cS` | 工作区符号 |
| `]d` | 下一诊断 |
| `[d` | 上一诊断 |

### Trouble（诊断面板）

| 快捷键 | 功能 |
|--------|------|
| `<leader>xx` | 全部诊断列表 |
| `<leader>xX` | 当前 Buffer 诊断 |
| `]q` | 下一项 |
| `[q` | 上一项 |

### Aerial（符号树）

| 快捷键 | 功能 |
|--------|------|
| `<leader>ao` | 切换符号树侧边栏 |
| `<leader>a]` | 下一符号 |
| `<leader>a[` | 上一符号 |
| `<leader>a}` | 上一级符号 |
| `<leader>a{` | 下一级符号 |

### 折叠（ufo + 原生）

| 快捷键 | 功能 |
|--------|------|
| `za` | 切换当前折叠 |
| `zA` | 递归切换 |
| `zo` | 打开折叠 |
| `zO` | 递归打开 |
| `zc` | 关闭折叠 |
| `zC` | 递归关闭 |
| `zR` | 全部展开 |
| `zM` | 全部折叠 |
| `zr` | 展开一层 |
| `zm` | 折叠一层 |
| `K` | 预览折叠内容 |

### 搜索

| 快捷键 | 功能 |
|--------|------|
| `/` | 搜索（flash.nvim） |
| `s` | 字符跳转（flash.nvim） |
| `<leader>t` | 搜索 TODO / FIXME 注释 |

### Noice（消息）

| 快捷键 | 功能 |
|--------|------|
| `<leader>nh` | 消息历史 |
| `<leader>nd` | 禁用 Noice |

---

## LSP Servers

自动安装的 LSP 服务器：

- `pyright` — Python
- `clangd` — C / C++ / CUDA
- `lua_ls` — Lua
- `stylua` — Lua 格式化工具

---

## 配置

- `init.lua` — 入口，lazy.nvim 引导
- `lua/core/options.lua` — 编辑器选项
- `lua/core/keymaps.lua` — 基础快捷键
- `lua/plugins/` — 各插件配置（一个插件一个文件）

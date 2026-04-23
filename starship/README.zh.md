# Starship 配置

个人 [Starship](https://starship.rs) prompt 配置，使用 Catppuccin Mocha 调色板，兼顾效率与美观，兼容所有主流 Shell。

## 主要功能

### 提示符模块

| 模块 | 说明 |
| :--- | :--- |
| `directory` | 当前路径，截断至 3 层，含目录图标替换 |
| `git_branch` | 当前分支名 + 符号 |
| `git_status` | 文件状态：已修改 `*`、已暂存 `+`、未跟踪 `?`、已删除 `-` 等 |
| `git_commit` | 当前 commit 哈希（7 位） |
| `git_state` | 进行中操作：rebase、merge、cherry-pick 等 |
| `git_metrics` | 最近 commit 的增/删行数 |
| `username` | 用户名（仅 SSH 会话显示） |
| `hostname` | 主机名（仅 SSH 会话显示） |
| `jobs` | 后台运行任务数量 |
| `time` | 右侧提示符显示当前时间（HH:MM:SS） |
| `cmd_duration` | 上次命令执行耗时（2 秒以上显示） |
| `status` | 命令失败时显示退出码 |

### 语言与运行时检测

自动检测并显示以下语言/运行时版本：

| 语言 | 符号 | 触发条件 |
| :--- | :--- | :--- |
| Rust |  | 存在 `.rs` 文件 |
| Go |  | 存在 `.go` 文件 |
| Node.js |  | 检测 `package.json`、`.node-version`、`.nvmrc`、`node_modules/` |
| Python |  | 存在 `.py` 文件，支持 conda/virtualenv |
| C |  | 存在 `.c` 文件 |
| Docker |  | 显示当前 Docker context |
| Conda | 󰌒 | Conda 环境 |

### 视觉特性

- **Catppuccin Mocha** 调色板 — 与 Neovim 主题一致
- **右侧提示符**显示当前时间
- **Vim 模式指示符**：❯（普通模式）、❮（插入/替换/可视模式）
- **路径图标**：常用目录替换为符号图标
  - Documents → 󰈙、Downloads → 、Music → 󰝚、Pictures → 、Developer → 󰲋

---

## 安装

### 1. 安装 Starship

```bash
# macOS
brew install starship

# Linux (通过 curl)
curl -sS https://starship.rs/install.sh | sh

# Arch Linux
sudo pacman -S starship
```

### 2. 配置你的 Shell

**zsh** — 添加到 `~/.zshrc`:

```zsh
eval "$(starship init zsh)"
```

**bash** — 添加到 `~/.bashrc`:

```bash
eval "$(starship init bash)"
```

**fish** — 添加到 `~/.config/fish/config.fish`:

```fish
starship init fish | source
```

### 3. 应用配置

将配置文件软链接或复制到 Starship 配置目录：

```bash
# 方式 A：软链接（推荐）
ln -s ~/dotfiles/starship/starship.toml ~/.config/starship.toml

# 方式 B：直接复制
cp ~/dotfiles/starship/starship.toml ~/.config/starship.toml
```

---

## 调色板

使用 [Catppuccin Mocha](https://github.com/catppuccin/catppuccin) 主题色：

```
rosewater  #f5e0dc    flamingo  #f2cdcd    pink      #f5c2e7
mauve      #cba6f7    red      #f38ba8    maroon    #eba0ac
peach      #fab387    yellow   #f9e2af    green     #a6e3a1
teal       #94e2d5    sky      #89dceb    sapphire  #74c7ec
blue       #89b4fa    lavender #b4befe    overlay0  #6c7086
```

---

## starship.toml 结构一览

```
starship.toml
├── format / right_format    # 提示符整体布局
├── palette                  # 调色板引用
├── username / hostname     # SSH 专用用户/主机名显示
├── directory               # 路径显示 + 图标替换
├── git_branch/status/commit/state/metrics
├── c / rust / golang / nodejs / python / conda / docker_context / jobs
├── time / cmd_duration / status / character
└── character               # 提示符符号（Vim 模式）
```

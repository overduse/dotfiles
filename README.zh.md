# Dotfiles

使用 [GNU Stow](https://www.gnu.org/software/stow/) 管理的个人开发环境配置。

## 目录结构

```
dotfiles/
├── zsh/          # zsh + Zim 框架
├── nvim/         # Neovim（LazyVim 风格，现代插件）
├── tmux/         # tmux 配置
├── starship/    # 跨平台终端提示符
├── yazi/         # 终端文件管理器
├── Brewfile      # Homebrew 包清单
└── .stow-local-ignore
```

## 前置依赖

```bash
# macOS
xcode-select --install
brew install git stow
```

## 安装

```bash
# 克隆 dotfiles
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles

# 安装 Homebrew 包
brew bundle install --file=Brewfile

# 通过 Stow 应用符号链接
stow -vt ~ zsh
stow -vt ~/.config tmux nvim
```

## 包说明

| 包 | 目标路径 | 说明 |
|----|----------|------|
| `zsh` | `~` | zsh + Zim 框架 + 别名 |
| `tmux` | `~/.config/` | tmux 3.4+ 及 TPM 插件 |
| `nvim` | `~/.config/` | Neovim 0.10+ 含 LSP、Treesitter、补全 |

## 更新

```bash
# 更新某个包
stow -Rvt ~ zsh

# 同步 Homebrew 包
brew bundle dump --file=Brewfile --force

# 提交更改
cd ~/dotfiles
git add .
git commit -m "描述更改"
```

## Neovim 插件

LSP (pyright, clangd, lua_ls) · Treesitter · Aerial · nvim-ufo · blink.cmp · fzf-lua · neo-tree · noice.nvim · snacks.nvim · trouble.nvim · gitsigns.nvim

## 终端提示符

Starship + Catppuccin Mocha 配色 · conda 环境检测 · git 变更统计 · 后台任务数显示

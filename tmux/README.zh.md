# Tmux Configuration

基于 tmux 3.4+ 的个人配置，集成了 TPM (Tmux Plugin Manager)，聚焦于高效、美观和 Vim 式的操作体验。

## 主要功能

### 分屏与导航

- **Prefix 重映射**：`Ctrl+b` → `Ctrl+a`，更符合人体工程学
- **Vim 式面板导航**：用 `h/j/k/l` 在面板间移动（需按 Prefix）
- **无前缀 Alt 导航**：`Alt + h/j/k/l` 直接切换面板，无需 Prefix
- **面板缩放**：`Prefix + Ctrl+h/j/k/l` 以 5 格为单位调整面板大小
- **窗口切换**：`Alt + 1~9` 直接跳转到对应窗口（窗口编号从 1 开始，无窗口 0）
- **窗口排序**：`Alt + Shift+←/→` 左右交换当前窗口位置

### 视觉体验

- **真彩支持**：配置 `tmux-256color` + True Color (`*:RGB`)
- **美化面板边框**：普通面板黑色边框，活跃面板洋红色边框
- **底部状态栏**：左侧显示图标 + Session 名，右侧显示放大标志 + 日期
- **窗口指示器**：普通窗口显示 `●`，当前窗口根据是否放大显示不同颜色

### 复制与剪贴板

- **Vi 风格复制模式**：`set -g mode-keys vi`，支持 `v`/`C-v`/`y` 等操作
- **tmux-yank** 集成：在复制模式下直接写入系统剪贴板

### 会话持久化

- **tmux-resurrect**：手动保存/恢复 tmux 工作环境
- **tmux-continuum**：自动定时保存，重启后无缝恢复工作区

### 其他功能

- **鼠标模式**：支持鼠标选择面板、调整大小、滚动
- **自动重编号窗口**：删除窗口后其余窗口序号自动整理
- **自动加载路径**：新建分屏时自动进入当前目录 `#{pane_current_path}`
- **快速重载配置**：`Prefix + r` 重新加载 tmux.conf
- **lazygit 弹窗**：`Prefix + g` 在当前路径弹出 lazygit 界面

---

## 快捷键汇总

### 前缀键

| 键 | 功能 |
| :--- | :--- |
| `Ctrl+a` | 新的 Prefix（原 `Ctrl+b`） |

### 窗口与面板操作

| 键 | 功能 |
| :--- | :--- |
| `Prefix + %` | 水平拆分（左右） |
| `Prefix + "` | 垂直拆分（上下） |
| `Prefix + h/j/k/l` | 移动焦点到 左/下/上/右 面板 |
| `Prefix + Ctrl+h/j/k/l` | 将当前面板向左/下/上/右 扩展 5 格 |
| `Alt + h/j/k/l` | **无需前缀** 直接移动焦点 |
| `Alt + 1~9` | **无需前缀** 直接跳转到窗口 1~9 |
| `Alt + Shift+←/→` | 将当前窗口与左/右窗口交换位置 |
| `Prefix + r` | 重载 tmux.conf |

### 复制模式（Vi 风格）

| 键 | 功能 |
| :--- | :--- |
| `Prefix + [` | 进入复制模式 |
| `v` | 进入字符选择 |
| `Ctrl+v` | 进入块选择 |
| `y` | 复制选中内容并退出 |
| `q` | 退出复制模式 |

### 插件快捷键

| 键 | 功能 |
| :--- | :--- |
| `Prefix + g` | 在当前目录弹出 lazygit |
| `Prefix + I` | 安装/更新所有 TPM 插件（首次或新增插件后） |
| `Prefix + O` | 通过 **sessionx** 模糊搜索切换会话 |
| `Prefix + p` | 通过 **floaX** 切换浮动窗口 |
| `Prefix + P` | floaX 浮动窗口菜单 |
| `Prefix + F` | **tmux-fzf** 模糊搜索（会话、窗口等） |

---

## 安装

```bash
# 1. 安装 tmux（如未安装）
brew install tmux        # macOS
sudo apt-get install tmux  # Ubuntu/Debian

# 2. 克隆 TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# 3. 创建配置目录
mkdir -p ~/.config/tmux

# 4. 软链接 tmux.conf
ln -s ~/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf

# 5. 创建 session 根目录
mkdir -p ~/workspace

# 6. 在 tmux 内安装插件
#    按 Prefix + I（大写 I）安装所有插件
```

---

## 插件列表

| 插件 | 说明 |
| :--- | :--- |
| `tmux-plugins/tpm` | Tmux Plugin Manager |
| `sainnhe/tmux-fzf` | 集成 fzf，模糊搜索会话/窗口 |
| `tmux-plugins/tmux-yank` | 复制模式下写入系统剪贴板 |
| `tmux-plugins/tmux-open` | 高亮文件/URL 用默认应用打开 |
| `tmux-plugins/tmux-copycat` | 增强搜索，预置多种模式匹配 |
| `tmux-plugins/tmux-resurrect` | 手动保存/恢复工作环境 |
| `tmux-plugins/tmux-continuum` | 自动定时保存（配合 resurrect） |
| `omerxx/tmux-floax` | 浮动窗口 |
| `omerxx/tmux-sessionx` | 模糊会话管理器，带预览、删除、重命名 |

---

## tmux.conf 结构一览

```
tmux.conf
├── General settings          # 通用设置（重编号、鼠标、命名）
├── Look & Feel              # 视觉配置（终端、边框、状态栏）
├── Keybindings              # 快捷键重映射
├── copy-mode                # Vi 复制模式配置
├── reload                   # 配置重载
└── TPM + Plugins            # 插件列表 + tpm 初始化
```

# Yazi 配置记录

## 文件说明

| 文件 | 用途 |
|------|------|
| `yazi.toml` | 主配置 |
| `keymap.toml` | 快捷键 |
| `theme.toml` | 主题/外观 |
| `init.lua` | 插件初始化 |
| `install.sh` | 一键安装脚本 |

## 配置修改（基于官方 preset）

- `ratio = [2, 3, 4]` — 三栏比例
- `linemode = "mtime"` — 显示修改时间
- `preview.max_width = 1024` / `max_height = 1024`

## 快速安装

```bash
./install.sh
```

## 已安装

### 风格包
```bash
ya pkg add matt-dong-123/gruvbox-material
```
- `theme.toml`: `[flavor] dark = "gruvbox-material"`

### 插件

**smart-enter** — `l` 智能进入目录/打开文件
```bash
ya pkg add yazi-rs/plugins:smart-enter
```
- `keymap.toml`: `prepend_keymap` 中绑定 `l` → `plugin smart-enter`

**smart-paste** — 智能粘贴到悬停目录或当前目录
```bash
ya pkg add yazi-rs/plugins:smart-paste
```
- `keymap.toml`: `p` → `plugin smart-paste`（替换原 `paste`）

**git** — 文件列表显示 Git 状态
```bash
ya pkg add yazi-rs/plugins:git
```
- `init.lua`: `require("git"):setup({ order = 1500 })`
- `yazi.toml`: `[[plugin.prepend_fetchers]]` 注册 git fetcher

## 删除插件

```bash
ya pkg delete yazi-rs/plugins:插件名
```

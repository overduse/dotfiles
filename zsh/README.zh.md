# Zsh 配置

由 [ZimFW](https://zimfw.sh/) 管理的 Zsh 配置文件集。

## 文件说明

- `zprofile.zsh`
  **登录时加载一次**，设置会话级环境变量（如 `$PATH`）。

- `zshrc.zsh`
  **每次新建交互式 shell 时加载**，配置用户环境（提示符、插件、别名、函数、快捷键）。

- `zimrc.zsh`
  ZimFW 配置文件，列出所有要加载的插件和模块。

- `env.zsh`
  所有环境变量的集中定义处（`export KEY=value`）。

- `alias.zsh`
  所有自定义别名。

- `fzf.zsh`
  fzf 独立脚本，确保跨系统快捷键和补全一致。

- `local.zsh`
  本地机器专属配置（不会被 git 跟踪）。

## 安装

运行 `zsh` 目录下的 `install.sh`：

```bash
./install.sh
```

**工作原理：符号链接**

安装脚本**不复制**文件，而是从主目录创建**符号链接**指向仓库内的文件，例如：

```
~/.zshrc    -> ~/dotfiles/zsh/zshrc.zsh
~/.zprofile -> ~/dotfiles/zsh/zprofile.zsh
~/.zimrc    -> ~/dotfiles/zsh/zimrc.zsh
```

---

| 文件 | 说明 |
| :--- | :--- |
| `README.md` | 英文原文 |
| `README.zh.md` | 中文文档 |
| `install.sh` | 符号链接安装脚本 |
| `env.zsh` | 环境变量 |
| `alias.zsh` | 别名 |
| `fzf.zsh` | fzf 配置 |
| `local.zsh` | 本地配置（gitignore） |
| `zprofile.zsh` | 登录 Shell 配置 |
| `zshrc.zsh` | 交互式 Shell 配置 |
| `zimrc.zsh` | ZimFW 配置 |
| `zim/` | ZimFW 框架目录 |

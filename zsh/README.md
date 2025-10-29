# Zsh Configuration

Contains all configuration files for Zsh, managed by [ZimFW](https://zimfw.sh/).

### File Breakdown

-   `zprofile.zsh`
    Loaded **once on login**. Sets session-wide environment variables (e.g., `$PATH` via Homebrew, other variables from `env.zsh`).

-   `zshrc.zsh`
    Loaded for **every new interactive shell**. Configures the user experience (prompt, plugins, aliases, functions, keybindings).

-   `zimrc.zsh`
    The ZimFW configuration file. Lists all plugins and modules to be loaded.

-   `env.zsh`
    Central place for defining all environment variables (`export KEY=value`).

-   `alias.zsh`
    Contains all custom shell aliases.

-   `fzf.zsh`
    The self-contained script from fzf to ensure consistent keybindings and completion across different systems.

### Installation

To deploy this configuration, run the `install.sh` script located in the parent `dotfiles` directory.

```bash
# From the root of the dotfiles repository
./install.sh
```

**How it Works: The Role of Symbolic Links**

The installation script **does not copy** these files. Instead, it creates **symbolic links** (symlinks) from your home directory to the files within this repository.

The script creates a link like this:
`~/.zshrc` -> `~/dotfiles/zsh/zshrc.zsh`
`~/.zprofile` -> `~/dotfiles/zsh/zprofile.zsh`
`~/.zimrc` -> `~/dotfiles/zsh/zimrc.zsh`


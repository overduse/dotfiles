# Yazi Configuration

## Files

| File | Purpose |
|------|---------|
| `yazi.toml` | Main config |
| `keymap.toml` | Keybindings |
| `theme.toml` | Theme/appearance |
| `init.lua` | Plugin init |
| `install.sh` | One-shot installer |

## Config Tweaks (from official preset)

- `ratio = [2, 3, 4]`
- `linemode = "mtime"`
- `preview.max_width = 1024` / `max_height = 1024`

## Quick Install

```bash
./install.sh
```

## Installed

### Flavor
```bash
ya pkg add matt-dong-123/gruvbox-material
```

### Plugins

**smart-enter** — `l` to enter dir or open file
```bash
ya pkg add yazi-rs/plugins:smart-enter
```
- `keymap.toml`: `l` → `plugin smart-enter` in `prepend_keymap`

**smart-paste** — paste into hovered dir or CWD
```bash
ya pkg add yazi-rs/plugins:smart-paste
```
- `keymap.toml`: `p` → `plugin smart-paste`

**git** — show Git status in file list
```bash
ya pkg add yazi-rs/plugins:git
```
- `init.lua`: `require("git"):setup({ order = 1500 })`
- `yazi.toml`: `[[plugin.prepend_fetchers]]` for git

## Remove a plugin

```bash
ya pkg delete yazi-rs/plugins:<name>
```

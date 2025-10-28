require("git"):setup()
require("smart-enter"):setup {
	open_multi = true,
}
require("starship"):setup()
require("mactag"):setup {
    -- Keys used to add or remove tags
    keys = {
        r = "Red",
        o = "Orange",
        y = "Yellow",
        g = "Green",
        b = "Blue",
        p = "Purple",
    },
    -- Colors used to display tags
    colors = {
        Red    = "#ee7b70",
        Orange = "#f5bd5c",
        Yellow = "#fbe764",
        Green  = "#91fc87",
        Blue   = "#5fa3f8",
        Purple = "#cb88f8",
    },
}
require("eza-preview"):setup({
  default_tree = true,
  level = 2,
  follow_symlinks = true,
  dereference = true,
  all = true,
  git_ignore = true,
  git_status = true
})
-- ~/.config/yazi/init.lua
require("relative-motions"):setup({
    show_numbers="relative",
    show_motion = true
})

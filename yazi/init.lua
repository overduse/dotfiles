require("git"):setup()
require("smart-enter"):setup {
	open_multi = true,
}
require("starship"):setup()
require("eza-preview"):setup({
  default_tree = true,
  level = 2,
  follow_symlinks = true,
  dereference = true,
  all = true,
  git_ignore = true,
  git_status = true
})

-- relative-motions: relative line numbers display
require("relative-motions"):setup({
    show_numbers="relative",
    show_motion = true
})

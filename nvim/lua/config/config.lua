
require("lazy").setup({
  spec = {
    { import = "plugins.plenary" },
    { import = "plugins.gruvbox" },
    { import = "plugins.guess_indent" },
    { import = "plugins.nvim_web_devicons" },
    { import = "plugins.gitsigns" },
    { import = "plugins.todo_comments" },
    { import = "plugins.mini" },
    { import = "plugins.telescope" },
    { import = "plugins.telescope_ui_select" },
    { import = "plugins.telescope_fzf_native" },
    { import = "plugins.which_key" },
    { import = "plugins.fidget" },
  },
  checker = { enabled = true },
})


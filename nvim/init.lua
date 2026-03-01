require("options")
require("config.lazy")

require("lazy").setup({
    spec = {
        { 
            import = "plugins.gruvbox" 
        },
    },
  -- install = { colorscheme = { "habamax" } },
    checker = { enabled = true },
})


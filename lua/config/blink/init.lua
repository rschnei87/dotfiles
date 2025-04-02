local blink = require("blink.cmp")

blink.setup({
  sources = {
    default = { "lsp", "path", "ripgrep", "snippets", "buffer" },
    providers = {
      ripgrep = {
        module = "blink-ripgrep",
        name = "Ripgrep",
        async = true,
      },
    },
  },
  fuzzy = { implementation = "rust" },
})

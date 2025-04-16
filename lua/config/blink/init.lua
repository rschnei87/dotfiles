local blink = require("blink.cmp")

blink.setup({
  keymap = {
    preset = "none",
    ["<S-Tab>"] = { "select_prev", "fallback" },
    ["<Tab>"] = { "select_next", "fallback" },
    ["<space>"] = { "select_and_accept", "fallback" },
    ["<Esc>"] = { "hide", "fallback" },
    ["<Up>"] = { "scroll_documentation_up", "fallback" },
    ["<Down>"] = { "scroll_documentation_down", "fallback" },
  },
  sources = {
    default = { "lsp", "path", "ripgrep", "snippets" },--, "snippets", "buffer" },
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

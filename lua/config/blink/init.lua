local blink = require("blink.cmp")

blink.setup({
  keymap = {
    preset = "none",
    ["<S-Tab>"] = { "select_prev", "fallback" },
    ["<Tab>"] = { "select_next", "fallback" },
    ["<C-p>"] = { "select_and_accept", "fallback" },
    ["<Esc>"] = { "hide", "fallback" },
    ["<Up>"] = { "scroll_documentation_up", "fallback" },
    ["<Down>"] = { "scroll_documentation_down", "fallback" },
  },
  sources = {
    default = { "lsp", "path", "ripgrep", "snippets" },
    providers = {
      ripgrep = {
        module = "blink-ripgrep",
        name = "Ripgrep",
        async = true,
      },
    },
  },
  completion = {
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 500,
    }
  },
  fuzzy = { implementation = "rust" },
})

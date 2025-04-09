require("mason").setup()
require("mason-lspconfig").setup({
  automatic_installation = true,
  ensure_installed = {
    "rust_analyzer",
  },
})

local lspconfig = require("lspconfig")

local capabilities = require("blink.cmp").get_lsp_capabilities()

lspconfig.rust_analyzer.setup({
    capabilities = capabilities,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
})


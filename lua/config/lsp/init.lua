require("mason").setup()
require("mason-lspconfig").setup({
  automatic_installation = true,
  ensure_installed = {
    "rust_analyzer",
    "helm_ls",
    "ts_ls",
    "html",
    "angularls",
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

lspconfig.helm_ls.setup({
  capabilities = capabilities,
})

lspconfig.ts_ls.setup({
  capabilities = capabilities,
})

lspconfig.html.setup({
  capabilities = capabilities,
})


lspconfig.angularls.setup({
  capabilities = capabilities,
  filetypes = { "typescript", "html", "typescriptreact", "typescript.tsx", "angular" },
})

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

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
        local bufnr = ev.buf
        local opts = { noremap = true, silent = true, buffer = bufnr }

        vim.api.nvim_set_option_value("omnifunc", "v:lua.vim.lsp.omnifunc", { buf = bufnr })

        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
    end,
})

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

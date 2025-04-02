return {
  -- colorscheme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",
        plugins = {
          auto = true,
        },
      })
      vim.cmd("colorscheme tokyonight")
    end,
  },

  {
    "tonymajestro/smart-scrolloff.nvim",
    opts = {
      scrolloff_percentage = 0.2
    },
  },

  {
    "stevearc/oil.nvim",
    lazy = false,
    config = function()
      require("config.oil")
    end,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "kosayoda/nvim-lightbulb",
      "saghen/blink.cmp",
    },
    config = function()
      require("config.lsp")
    end,
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "LspInfo", "LspInstall", "LspUninstall", "Mason" },
  },
  {
    "saghen/blink.cmp",
    version = "*",
    dependencies = {
      "fang2hou/blink-copilot",
      "rafamadriz/friendly-snippets",
      "mikavilpas/blink-ripgrep.nvim",
    },
    config = function()
      require("config.blink")
    end,
    event = "InsertEnter",
  },
  {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
  },
}

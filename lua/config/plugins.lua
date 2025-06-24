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
        on_highlights = function(highlights, colors)
          highlights.VertSplit = {
            fg = "#362d60"
          }
          highlights.WinSeparator = {
            bold = true,
            fg = "#362d60"
          }
        end,
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
    "saghen/blink.cmp",
    version = "*",
    dependencies = {
      "rafamadriz/friendly-snippets",
      "mikavilpas/blink-ripgrep.nvim",
    },
    config = function()
      require("config.blink")
    end,
    event = "InsertEnter"
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

  "Bekaboo/dropbar.nvim",

  {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    event = "VeryLazy",
    config = function()
      require("config.lualine")
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
    },
    config = function()
      require("config.telescope")
    end,
  },

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("config.toggleterm")
    end,
  },
 
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("config.indent-blankline")
    end,
  },

  {
    "HiPhish/rainbow-delimiters.nvim",
  },

  {
    "towolf/vim-helm",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "RRethy/nvim-treesitter-endwise",
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    build = ":TSUpdate",
    config = function()
      require("config.treesitter")
    end,
    event = "BufReadPost",
  },

  {
    "folke/trouble.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("config.trouble")
    end,
    event = "VeryLazy",
  },

  {
    "rachartier/tiny-inline-diagnostic.nvim",
--    event = "LspAttach",
    priority = 1000,
    config = function()
      require("config.diagnostic")
    end,
  },

  {
    "stevearc/conform.nvim",
    config = function()
      require("config.conform")
    end,
    event = "BufWritePre",
    cmd = "ConformInfo",
  },
}

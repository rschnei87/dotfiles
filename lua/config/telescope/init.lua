require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<C-u>"] = false,
        ["<C-d>"] = false,
      },
    },
    generic_sorter = require("telescope.sorters").get_fzy_sorter,
    file_sorter = require("telescope.sorters").get_fzy_sorter,
    layout_strategy = "horizontal",
    prompt_prefix = "  ",
  },
  extensions = {
    fzf = {},
    ["ui-select"] = {
      require("telescope.themes").get_dropdown({}),
    },
  },
})

require("telescope").load_extension("fzf")
require("telescope").load_extension("ui-select")

vim.keymap.set("n", "<leader>f", function()
  require("telescope.builtin").git_files({ show_untracked = true })
end, { noremap = true, silent = true, desc = "Git browser" })

vim.keymap.set("n", "<leader>a", function()
  require("telescope.builtin").live_grep()
end, { noremap = true, silent = true, desc = "Live grep" })

vim.keymap.set("n", "<leader>r", function()
  require("telescope.builtin").lsp_references()
end, { noremap = true, silent = true, desc = "LSP references" })

vim.keymap.set("n", "<leader>b", function()
  require("telescope.builtin").buffers()
end, { noremap = true, silent = true, desc = "List buffers" })

vim.api.nvim_create_autocmd("User", {
  pattern = "TelescopeFindPre",
  callback = function()
    vim.opt_local.winborder = "none"
    vim.api.nvim_create_autocmd("WinLeave", {
      once = true,
      callback = function()
        vim.opt_local.winborder = "rounded"
      end,
    })
  end,
})

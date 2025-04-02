vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 999

vim.opt.virtualedit = "block"

vim.opt.inccommand = "split"

vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.keymap.set("n", "<Tab>", "<CMD>bn<CR>")
vim.keymap.set("n", "<S-Tab>", "<CMD>bpp<CR>")

vim.keymap.set("n", "<leader>x", "<CMD>bd<CR>", { desc = "Close buffer" })

vim.keymap.set("n", "<leader>vs", "<CMD>vsplit new<CR>",  { noremap = true, desc = "Vertical split" })
vim.keymap.set("n", "<leader>hs", "<CMD>split new<CR>", { noremap = true, desc = "Horizontal split" })

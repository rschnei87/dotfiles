--vim.keymap.set("n", "<Tab>", "<CMD>bn<CR>")
--vim.keymap.set("n", "<S-Tab>", "<CMD>bpp<CR>")

vim.keymap.set("n", "<leader>x", "<CMD>bd<CR>", { desc = "Close buffer" })

vim.keymap.set("n", "<leader>vs", "<CMD>vnew<CR>",  { noremap = true, desc = "Vertical split" })
vim.keymap.set("n", "<leader>hs", "<CMD>new<CR>", { noremap = true, desc = "Horizontal split" })

vim.api.nvim_set_keymap("n", "<C-k>", ":wincmd k<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", ":wincmd j<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-h>", ":wincmd h<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", ":wincmd l<CR>", { silent = true })

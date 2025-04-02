local oil = require("oil")

oil.setup({
  keymaps = {
    ["<CR>"] = { "actions.select" }, --opts = { close = true, tab = true } }, --, opts = { tab = true } },
  },
  view_options = {
    show_hidden = true,
  },
})

-- replace :Explore with Oil
vim.api.nvim_create_user_command("Explore", function(opts)
  vim.cmd("Oil " .. opts.args)
end, { nargs = "?" })

vim.keymap.set("n", "<leader>e", function()
  oil.open(".")
end, { noremap = true , silent = true , desc = "Toggle Oil" })

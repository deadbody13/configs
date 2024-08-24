vim.g.mapleader = " "
vim.keymap.set("n", "<S-l>", "$")
vim.keymap.set("n", "<S-h>", "^")
-- vim.keymap.set("n", "<leader>fe", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>fe", vim.cmd.NvimTreeFocus)
vim.keymap.set("i", "kj", "<Esc><Right>")

-- clipboard
vim.keymap.set("i", "<C-v>", '<Esc>"+P')
vim.keymap.set("v", "<C-c>", '"+y', opts)

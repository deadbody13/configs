vim.g.mapleader = " "
vim.keymap.set("n", "<S-l>", "$")
vim.keymap.set("n", "<S-h>", "^")
-- vim.keymap.set("n", "<leader>fe", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>fe", vim.cmd.NvimTreeFocus)
vim.keymap.set("i", "kj", "<Esc><Right>")

-- clipboard
vim.keymap.set("i", "<C-v>", '<Right><Esc>"+Pi<Right>')
vim.keymap.set("v", "<C-c>", '"+y', opts)

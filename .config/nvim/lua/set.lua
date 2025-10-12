vim.opt.nu = true
vim.opt.relativenumber = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.tabstop = 4
-- vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
-- vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.api.nvim_set_hl(0, "Whitespace", { fg = "#000000" })
vim.api.nvim_set_hl(0, "NonText",    { fg = "#000000" })
vim.api.nvim_set_hl(0, "SpecialKey", { fg = "#000000" })


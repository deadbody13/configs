require("set")
require("remap")
require("config.lazy")
-- colorscheme
vim.cmd([[colorscheme modus_operandi]]) -- modus_operandi, modus_vivendi

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

require("mason").setup()


if vim.g.neovide then
	require("dead.neovide")
end


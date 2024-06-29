require("set")
require("remap")
require("config.lazy")
vim.cmd([[colorscheme modus_operandi]]) -- modus_operandi, modus_vivendi

if vim.g.neovide then
	require("dead.neovide")
end


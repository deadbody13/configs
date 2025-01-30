require("set")
require("remap")
require("config.lazy")
-- colorscheme
vim.cmd([[colorscheme rose-pine]]) -- modus_operandi, modus_vivendi

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set("n", "<space>fb", ":Telescope file_browser<CR>")

require("mason").setup()

if vim.g.neovide then
	require("neovide")
end

local fb_actions = require "telescope".extensions.file_browser.actions
require("telescope").setup {
	defaults = {
		-- Default configuration for telescope goes here:
		-- config_key = value,
		mappings = {
			i = {
				-- map actions.which_key to <C-h> (default: <C-/>)
				-- actions.which_key shows the mappings for your picker,
				-- e.g. git_{create, delete, ...}_branch for the git_branches picker
				["<C-j>"] = "move_selection_next",
				["<C-k>"] = "move_selection_previous",
			}
		}
	},
	extensions = {
		file_browser = {
			-- disables netrw and use telescope-file-browser in its place
			hijack_netrw = true,
			mappings = {
				["i"] = {
					["<C-l>"] = fb_actions.change_cwd,
					["<C-h>"] = fb_actions.goto_parent_dir,
				},
				["n"] = {
				},
			},
		},
	},
}
require("telescope").load_extension "file_browser"

require('lualine').setup({
        options = {
            theme = 'deepwhite',
        },
    })
require('barbar').setup({
        icons = {
            filetype = {
                custom_colors = true,
            },
        },
})

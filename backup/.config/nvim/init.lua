require("set")
require("remap")
require("config.lazy")
-- colorscheme
vim.cmd([[colorscheme modus_operandi]]) -- modus_operandi, modus_vivendi

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
            theme = 'modus-vivendi',
        },
    })
require('barbar').setup({
        icons = {
            filetype = {
                custom_colors = true,
            },
        },
})
require("modus-themes").setup({
	-- Theme comes in two styles `modus_operandi` and `modus_vivendi`
	-- `auto` will automatically set style based on background set with vim.o.background
	style = "modus_operandi",
	variant = "default", -- Theme comes in four variants `default`, `tinted`, `deuteranopia`, and `tritanopia`
	transparent = false, -- Transparent background (as supported by the terminal)
	dim_inactive = false, -- "non-current" windows are dimmed
	hide_inactive_statusline = false, -- Hide statuslines on inactive windows. Works with the standard **StatusLine**, **LuaLine** and **mini.statusline**
	line_nr_column_background = true, -- Distinct background colors in line number column. `false` will disable background color and fallback to Normal background
	sign_column_background = true, -- Distinct background colors in sign column. `false` will disable background color and fallback to Normal background
	styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value for `:help nvim_set_hl`
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
	},

	--- You can override specific color groups to use other groups or a hex color
	--- Function will be called with a ColorScheme table
	--- Refer to `extras/lua/modus_operandi.lua` or `extras/lua/modus_vivendi.lua` for the ColorScheme table
	---@param colors ColorScheme
	on_colors = function(colors) end,

	--- You can override specific highlights to use other groups or a hex color
	--- Function will be called with a Highlights and ColorScheme table
	--- Refer to `extras/lua/modus_operandi.lua` or `extras/lua/modus_vivendi.lua` for the Highlights and ColorScheme table
	---@param highlights Highlights
	---@param colors ColorScheme
	on_highlights = function(highlights, colors) end,
})

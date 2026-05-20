STEAM = "/home/sven/.var/app/com.valvesoftware.Steam/.local/share/Steam/steamapps/common/"

require("bunny"):setup({
	hops = {
		{ key = "R",       path = STEAM .. "Red Dead Redemption 2",    desc = "RDR2 game directory" },
	},
	desc_strategy = "path", -- If desc isn't present, use "path" or "filename", default is "path"
	ephemeral = true, -- Enable ephemeral hops, default is true
	tabs = true, -- Enable tab hops, default is true
	notify = false, -- Notify after hopping, default is false
	fuzzy_cmd = "fzf", -- Fuzzy searching command, default is "fzf"
})

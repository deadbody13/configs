local core = require("core")
require("typst-preview").preview()

local M = {
	settings = {
		exportPdf = "never",
	},
	root_dir = core.file.root_path,
}

return M

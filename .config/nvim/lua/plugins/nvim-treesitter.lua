return {
	"nvim-treesitter/nvim-treesitter", 
	build = ":TSUpdate",
	config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "markdown", "kdl", "typst", "c", "lua", "vim", "vimdoc", "html", "css", "scss", "bash"},
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
}

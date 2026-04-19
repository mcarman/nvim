return {
	"nvim-treesitter/nvim-treesitter",
	version = false,
	build = ":TSUpdate",
	lazy = false,
	main = "nvim-treesitter",
	branch = "main",
	config = function()
		local configs = require("nvim-treesitter")
		configs.setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"yaml",
				"python",
				"rust",
				"tmux",
				"javascript",
				"html",
				"markdown",
				"markdown_inline",
				"dockerfile",
				"bash",
				"toml",
				"json",
				"typst",
			},
			auto_install = true,
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },

			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<Enter>", -- set to `false` to disable one of the mappings
					node_incremental = "<Enter>",
					scope_incremental = false,
					node_decremental = "<Backspace>",
				},
			},
		})
	end,
}

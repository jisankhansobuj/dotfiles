-- OR setup with some options
require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 30,
		relativenumber = true,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = false,
	},

	-- disable window_picker for
	-- explorer to work well with
	-- window splits
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},

	git = {
		ignore = false,
	},
})

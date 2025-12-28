return {
	"folke/snacks.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		dashboard = { enabled = false },
		explorer = { enabled = false },
		indent = {
			enabled = true,
			animate = {
				style = "out",
				duration = {
					step = 50,
				},
			},
		},
		scope = {
			enabled = true,
			char = "a",
		},

	},
}

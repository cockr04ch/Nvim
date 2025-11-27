return { 
	'nvim-mini/mini.animate',
	version = false,
	opts = {
		-- Vertical scroll
		scroll = {
			-- Whether to enable this animation
			enable = false,

			-- Timing of animation (how steps will progress in time)
			--	timing = --<function: implements linear total 250ms animation duration>,

			-- Subscroll generator based on total scroll
			--	subscroll = --<function: implements equal scroll with at most 60 steps>,
		},

	}
}

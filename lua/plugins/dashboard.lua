return {
	'nvimdev/dashboard-nvim',
	event = 'VimEnter',
	cond = vim.fn.argc() == 0, -- Only show dashboard when no arguments passed to Neovim
	dependencies = {
		{'nvim-tree/nvim-web-devicons'},
		{'nvim-telescope/telescope.nvim'} -- Ensure Telescope is loaded first
	},
	opts = function()
		return {
			theme = 'hyper',
			config = {
				week_header = {
					enable = false, -- Desactiva el header por defecto
				},
				header = {
					'░░░░░░░░░░░░░░░░░░░░░▄▀░░▌',
					'░░░░░░░░░░░░░░░░░░░▄▀▐░░░▌',
					'░░░░░░░░░░░░░░░░▄▀▀▒▐▒░░░▌',
					'░░░░░▄▀▀▄░░░▄▄▀▀▒▒▒▒▌▒▒░░▌',
					'░░░░▐▒░░░▀▄▀▒▒▒▒▒▒▒▒▒▒▒▒▒█',
					'░░░░▌▒░░░░▒▀▄▒▒▒▒▒▒▒▒▒▒▒▒▒▀▄',
					'░░░░▐▒░░░░░▒▒▒▒▒▒▒▒▒▌▒▐▒▒▒▒▒▀▄',
					'░░░░▌▀▄░░▒▒▒▒▒▒▒▒▐▒▒▒▌▒▌▒▄▄▒▒▐',
					'░░░▌▌▒▒▀▒▒▒▒▒▒▒▒▒▒▐▒▒▒▒▒█▄█▌▒▒▌',
					'░▄▀▒▐▒▒▒▒▒▒▒▒▒▒▒▄▀█▌▒▒▒▒▒▀▀▒▒▐░░░▄',
					'▀▒▒▒▒▌▒▒▒▒▒▒▒▄▒▐███▌▄▒▒▒▒▒▒▒▄▀▀▀▀',
					'▒▒▒▒▒▐▒▒▒▒▒▄▀▒▒▒▀▀▀▒▒▒▒▄█▀░░▒▌▀▀▄▄',
					'▒▒▒▒▒▒█▒▄▄▀▒▒▒▒▒▒▒▒▒▒▒░░▐▒▀▄▀▄░░░░▀',
					'▒▒▒▒▒▒▒█▒▒▒▒▒▒▒▒▒▄▒▒▒▒▄▀▒▒▒▌░░▀▄',
					'▒▒▒▒▒▒▒▒▀▄▒▒▒▒▒▒▒▒▀▀▀▀▒▒▒▄▀',
				},
				project = {
					enable = true,
					limit = 8,
					icon = '󰏓 ',
					icon_hl = 'DashboardRecentProjectIcon',
					action = function(cwd)
						-- Safely execute Telescope after ensuring it's available
						local ok = pcall(function()
							require('telescope.builtin').find_files({ cwd = cwd })
						end)
						if not ok then
							vim.api.nvim_err_writeln("Telescope not available. Make sure telescope.nvim is properly installed.")
						end
					end,
					label = ' Recent Projects:',
				},
			},
		}
	end,
}

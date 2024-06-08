-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		{
			"ThePrimeagen/harpoon",
			branch = "harpoon2",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"nvim-telescope/telescope.nvim"
			}
		},
		"tpope/vim-fugitive",
		"Hoffs/omnisharp-extended-lsp.nvim",
		{
			'nvim-orgmode/orgmode',
			event = 'VeryLazy',
			ft = { 'org' },
			config = function()
				-- Setup orgmode
				require('orgmode').setup({
					org_agenda_files = '~/.config/org/agenda/*.org',
					org_default_notes_file = '~/.config/org/notes/note.org',
					org_capture_templates = {
						a = {
							description = 'Agenda Item',
							template = '* TODO %?\n %u',
							target = '~/.config/org/agenda/agenda.org',
						}
					}
				})

				-- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
				-- add ~org~ to ignore_install
				-- require('nvim-treesitter.configs').setup({
				--   ensure_installed = 'all',
				--   ignore_install = { 'org' },
				-- })
			end,
		},
		{
			'ldelossa/litee.nvim',
			event = "VeryLazy",
			opts = {
				notify = { enabled = false },
				panel = {
					orientation = "bottom",
					panel_size = 10,
				},
			},
			config = function(_, opts) require('litee.lib').setup(opts) end
		},
		{
			'ldelossa/litee-calltree.nvim',
			dependencies = 'ldelossa/litee.nvim',
			event = "VeryLazy",
			opts = {
				on_open = "panel",
				map_resize_keys = false,
			},
			config = function(_, opts) require('litee.calltree').setup(opts) end
		},
		"stevearc/dressing.nvim",
		{
			"LintaoAmons/bookmarks.nvim",
			tag = "v0.5.3", -- optional, pin the plugin at specific version for stability
			dependencies = {
				{ "nvim-telescope/telescope.nvim" },
				{ "stevearc/dressing.nvim" } -- optional: to have the same UI shown in the GIF
			}
		}
	},
}

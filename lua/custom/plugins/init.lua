-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		{
			"ThePrimeagen/harpoon",
			config = function()
				require("harpoon").setup()
			end
		},
		"tpope/vim-fugitive",
		"Hoffs/omnisharp-extended-lsp.nvim",
		{
			"epwalsh/obsidian.nvim",
			version = "*", -- recommended, use latest release instead of latest commit
			lazy = true,
			ft = "markdown",
			-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
			-- event = {
			--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
			--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
			--   "BufReadPre path/to/my-vault/**.md",
			--   "BufNewFile path/to/my-vault/**.md",
			-- },
			dependencies = {
				"nvim-lua/plenary.nvim",
			},
			opts = {
				workspaces = {
					{
						name = "personal",
						path = "/Obsidian/Campfire/",
					},
					{
						name = "work",
						path = "/Obsidian/Campfire/",
					},
				},
				mappings = {
					["gf"] = {
						action = function()
							return require("obsidian").util.gf_passthrough()
						end,
						opts = { noremap = false, expr = true, buffer = true },
					},
					["<leader>oc"] = {
						action = function()
							return require("obsidian").util.toggle_checkbox()
						end,
						opts = { buffer = true },
					},
					["<leader>os"] = {
						action = function()
							return require("obsidian").util.smart_action()
						end,
						opts = { buffer = true, expr = true },
					}
				},
				new_notes_location = "notes_subdir",
				preferred_link_style = "wiki",
			},
		},
	}
}

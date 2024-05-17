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
		"Hoffs/omnisharp-extended-lsp.nvim",
	},
}

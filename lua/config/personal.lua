local vim = vim; -- To remove warning about global vim

-- Colorscheme
vim.cmd[[colorscheme tokyonight]]
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

--------------
-- Settings --
--------------
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8
-- Indent
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
-- Search Settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
-- Visual Settings
vim.opt.termguicolors = true
vim.opt.signcolumn = "no" -- TODO: Might want to set this back to true and see what it actually does after theming
vim.opt.colorcolumn = "0"
vim.opt.showmatch = true
vim.opt.matchtime = 2
-- Behavior Settings
vim.opt.mouse = "a"
vim.opt.errorbells = false
vim.opt.path:append("**")
-- vim.opt.autochdir = false -- not sure about this setting
vim.opt.clipboard:append("unnamedplus")
vim.opt.encoding = "UTF-8"
--------------


--------------------
------ Keymap ------
--------------------
-- Quick move
vim.keymap.set({"n", "v", "x"}, "J", "5j")
vim.keymap.set({"n", "v", "x"}, "K", "5k")

-- Window Movement
vim.keymap.set('n', '<leader>wh', '<C-w>h')
vim.keymap.set('n', '<leader>wj', '<C-w>j')
vim.keymap.set('n', '<leader>wk', '<C-w>k')
vim.keymap.set('n', '<leader>wl', '<C-w>l')

-- Copilot
vim.keymap.set('n', '<leader>cc', '<cmd>CopilotChatToggle<CR>', { desc = 'Toggle Copilot Chat' })
vim.keymap.set('n', '<leader>cm', '<cmd>CopilotChatModels<CR>', { desc = 'View/select available models' })

-- Telescope
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, { desc = 'Live Grep' })
vim.keymap.set('n', '<leader><leader>', require('telescope.builtin').buffers, { desc = 'Find Buffers' })
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = 'Help Tags' })
vim.keymap.set('n', '<leader>fr', require('telescope.builtin').oldfiles, { desc = 'Recent Files' })
vim.keymap.set('n', '<leader>fc', require('telescope.builtin').commands, { desc = 'Commands' })

-- Helpers
vim.keymap.set('n', '<leader>bc', function()
  vim.fn.setreg('+', vim.fn.bufname('%'))
end, { desc = 'Copy buffer path to clipboard' })

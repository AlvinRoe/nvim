local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>gd', '<cmd>Telescope lsp_definitions<CR>', {})
vim.keymap.set('n', '<leader>gr', '<cmd>Telescope lsp_references<CR>', {})
vim.keymap.set('n', '<leader>gi', '<cmd>Telescope lsp_implementations<CR>', {})
vim.keymap.set('n', '<leader>gt', '<cmd>Telescope lsp_type_definitions<CR>', {})
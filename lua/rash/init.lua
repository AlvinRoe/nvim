--Escape keybindings
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('v', 'v', '<Esc>')
vim.keymap.set('x', 'v', '<Esc>')

--Clibboard copy
vim.keymap.set('n', '<C-c>', ':w !xclip -selection clipboard<CR><CR>')
vim.keymap.set(
	'v',
	'<C-c>',
	'"*y :call system("xclip -selection clipboard", @*)<CR>',
	{ noremap = true, silent = true }
)

--Register yp
vim.keymap.set({ "v", "n" }, "<leader>y", function() vim.cmd('normal! "qy') end)
vim.keymap.set({ "v", "n" }, "<leader>p", function() vim.cmd('normal! "qp') end)

--Harpoon Keybindings
vim.keymap.set("n", "<leader>ha", ":lua require('harpoon.mark').add_file()<CR>")
vim.keymap.set("n", "<leader>hs", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
vim.keymap.set("n", "<leader>hi", ":lua require('harpoon.ui').nav_next()<CR>")
vim.keymap.set("n", "<leader>hu", ":lua require('harpoon.ui').nav_prev()<CR>")
vim.keymap.set("n", "<leader>hh", ":lua require('harpoon.ui').nav_file(1)<CR>")
vim.keymap.set("n", "<leader>hj", ":lua require('harpoon.ui').nav_file(2)<CR>")
vim.keymap.set("n", "<leader>hk", ":lua require('harpoon.ui').nav_file(3)<CR>")
vim.keymap.set("n", "<leader>hl", ":lua require('harpoon.ui').nav_file(4)<CR>")
vim.keymap.set("n", "<leader>h;", ":lua require('harpoon.ui').nav_file(5)<CR>")
vim.keymap.set("n", "<leader>h1", ":lua require('harpoon.ui').nav_file(1)<CR>")
vim.keymap.set("n", "<leader>h2", ":lua require('harpoon.ui').nav_file(2)<CR>")
vim.keymap.set("n", "<leader>h3", ":lua require('harpoon.ui').nav_file(3)<CR>")
vim.keymap.set("n", "<leader>h4", ":lua require('harpoon.ui').nav_file(4)<CR>")
vim.keymap.set("n", "<leader>h5", ":lua require('harpoon.ui').nav_file(5)<CR>")
vim.keymap.set("n", "<leader>h6", ":lua require('harpoon.ui').nav_file(6)<CR>")
vim.keymap.set("n", "<leader>h7", ":lua require('harpoon.ui').nav_file(7)<CR>")
vim.keymap.set("n", "<leader>h8", ":lua require('harpoon.ui').nav_file(8)<CR>")
vim.keymap.set("n", "<leader>h9", ":lua require('harpoon.ui').nav_file(9)<CR>")

--Background transparent
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

--Configurations for vim ie. tab
require('rash.set')

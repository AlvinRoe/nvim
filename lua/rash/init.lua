--Escape keybindings
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set({ 'v', 'x' }, 'v', '<Esc>')

--Clibboard copy
vim.keymap.set('n', '<C-c>', ':w !xclip -selection clipboard<CR><CR>')
vim.keymap.set('n', '<C-y>', ':w !xclip -selection clipboard<CR><CR>')
vim.keymap.set(
	'v',
	'<C-c>',
	'"*y :call system("xclip -selection clipboard", @*)<CR>',
	{ noremap = true, silent = true }
)
vim.keymap.set(
	'v',
	'<C-y>',
	'"*y :call system("xclip -selection clipboard", @*)<CR>',
	{ noremap = true, silent = true }
)

--General, personal keybindings.
vim.keymap.set({ "v", "n" }, "<leader>y", function() vim.cmd('normal! "qy') end)
vim.keymap.set({ "v", "n" }, "<leader>p", function() vim.cmd('normal! "qp') end)
vim.keymap.set({ "v", "n" }, "J", '5j')
vim.keymap.set({ "v", "n" }, "K", '5k')
vim.keymap.set("n", "<leader>x", ":Ex<CR>")
vim.keymap.set("n", "<A-w>", ":w<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>Q", ":wq<CR>")

--Harpoon
require('rash.harpoon') -- Harpoon has a lot going on, so it has it's own script

--Fugitive keybinding
vim.keymap.set("n", "<leader>gd", ":Gdiffsplit<CR>")
vim.keymap.set("n", "<leader>gb", ":Git blame<CR>")
vim.keymap.set("n", "<leader>ga", ":Git add %<CR>")


--Obsidian Keybindings
vim.keymap.set({ 'n', 'v' }, 'gf', function() return require("obsidian").util.gf_passthrough() end)
vim.keymap.set({ 'n', 'v' }, '<leader>oc', function() return require("obsidian").util.toggle_checkbox() end)
vim.keymap.set({ 'n', 'v' }, '<leader>os', function() return require("obsidian").util.smart_action() end)

--Background transparent
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

--Call tree keymap and requires
-- configure the litee.nvim library
require('litee.lib').setup({})
-- configure litee-calltree.nvim
require('litee.calltree').setup({})
vim.keymap.set({ 'n', 'v' }, '<leader>ti', ':lua vim.lsp.buf.incoming_calls()<CR>')
vim.keymap.set({ 'n', 'v' }, '<leader>to', ':lua vim.lsp.buf.outgoing_calls()<CR>')

-- Bookmarks
vim.keymap.set({ "n", "v" }, "mm", "<cmd>BookmarksMark<cr>", { desc = "Mark current line into active BookmarkList." })
vim.keymap.set({ "n", "v" }, "mo", "<cmd>BookmarksGoto<cr>", { desc = "Go to bookmark at current active BookmarkList" })
vim.keymap.set({ "n", "v" }, "ma", "<cmd>BookmarksCommands<cr>", { desc = "Find and trigger a bookmark command." })
vim.keymap.set({ "n", "v" }, "<leader>mg", "<cmd>BookmarksGotoRecent<cr>",
	{ desc = "Go to latest visited/created Bookmark" })

--Configurations for vim ie. tab
require('rash.set')

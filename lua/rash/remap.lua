vim.keymap.set('n', '<leader>pq', vim.cmd.Ex) 
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('n', '<C-c>', ':w !xclip -selection clipboard<CR><CR>',{ noremap = true, silent = true} )
vim.keymap.set('v', '<C-c>', '"*y :call system("xclip -selection clipboard", @*)<CR>',{ noremap = true, silent = true} )

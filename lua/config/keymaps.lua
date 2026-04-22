-- File explorer
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'File explorer' })

-- Move selected text
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Keymaps from kickstart.nvim
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>')

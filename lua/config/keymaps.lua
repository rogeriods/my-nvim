-- Disable warnings about undefined globals (useful for vim global like `vim`)
---@diagnostic disable: undefined-global

-- File explorer
vim.keymap.set('n', '<C-b>', vim.cmd.Ex, { desc = 'File explorer' })
vim.keymap.set('n', '<C-t>', vim.cmd.Tex, { desc = 'File explorer new tab' })

-- Move selected text
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Keymaps from kickstart.nvim
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>')

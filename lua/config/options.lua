-- Disable warnings about undefined globals (useful for vim global like `vim`)
---@diagnostic disable: undefined-global

-- Colorscheme of the month
-- vim.cmd.colorscheme 'habamax'
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
-- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

-- Option from kickstart.nvim
vim.o.number = true
vim.o.mouse = 'a'
vim.o.showmode = false

vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.list = false
vim.o.inccommand = 'split'
vim.o.cursorline = false
vim.o.scrolloff = 10

vim.opt.relativenumber = true
vim.opt.colorcolumn = {'100'}

-- Custom
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

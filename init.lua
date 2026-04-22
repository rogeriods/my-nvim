-- Leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

-- Core config
require 'config.options'
require 'config.keymaps'
require 'config.autocmds'

-- Plugins
require 'plugins'

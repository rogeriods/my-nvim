-- Disable vim global warnings
---@diagnostic disable: undefined-global

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(lazypath) then vim.fn.system {
  'git',
  'clone',
  '--filter=blob:none',
  'https://github.com/folke/lazy.nvim.git',
  lazypath,
} end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  require 'plugins.gitsigns',
  require 'plugins.whichkey',
  require 'plugins.conform_config',
  require 'plugins.telescope',
  require 'plugins.lsp',
  require 'plugins.treesitter',
  require 'plugins.trouble',

  { 'tpope/vim-fugitive' },
  { 'NMAC427/guess-indent.nvim', opts = {} },
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    ---@module 'todo-comments'
    opts = { signs = false },
  },
  {
    'nvim-mini/mini.nvim',
    config = function()
      require('mini.ai').setup { n_lines = 500 }
      require('mini.surround').setup()

      local statusline = require 'mini.statusline'
      statusline.setup { use_icons = vim.g.have_nerd_font }

      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function() return '%2l:%-2v' end
    end,
  },
}

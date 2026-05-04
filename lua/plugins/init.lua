-- Disable warnings about undefined globals (useful for vim global like `vim`)
---@diagnostic disable: undefined-global

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

-- Install lazy.nvim if it's not already present
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    lazypath,
  }
end

-- Add lazy.nvim to runtime path
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  -- Plugin configs split into separate modules (larger configs)
  require 'plugins.conform_config',
  require 'plugins.telescope',
  require 'plugins.lsp',
  require 'plugins.treesitter',
  require 'plugins.trouble',
  require 'plugins.gruber_theme',

  -- Simple plugins (minimal or no configuration)
  { 'tpope/vim-fugitive' },
  { 'NMAC427/guess-indent.nvim', opts = {} },

  { -- Displays available keybindings in a popup as you type
    'folke/which-key.nvim',
    event = 'VimEnter',
    ---@module 'which-key'
    opts = {
      delay = 0,
      icons = { mappings = vim.g.have_nerd_font },
      spec = {
        { '<leader>s', group = '[S]earch', mode = { 'n', 'v' } },
      },
    },
  },

  { -- Git signs in the gutter + hunk management utilities
    'lewis6991/gitsigns.nvim',
    ---@module 'gitsigns'
    opts = {
      signs = {
        add = { text = '+' }, ---@diagnostic disable-line: missing-fields
        change = { text = '~' }, ---@diagnostic disable-line: missing-fields
        delete = { text = '_' }, ---@diagnostic disable-line: missing-fields
        topdelete = { text = '‾' }, ---@diagnostic disable-line: missing-fields
        changedelete = { text = '~' }, ---@diagnostic disable-line: missing-fields
      },
    },
  },

  { -- Some small plugins and statusline
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

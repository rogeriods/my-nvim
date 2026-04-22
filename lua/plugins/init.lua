local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  require('plugins.gitsigns'),
  require('plugins.whichkey'),
  -- require('plugins.telescope'),
  -- require('plugins.lsp'),
  -- require('plugins.treesitter'),
  -- require('plugins.cmp'),

  { 'tpope/vim-fugitive' },
  { 'NMAC427/guess-indent.nvim', opts = {} },
  {
    'nvim-mini/mini.nvim',
    config = function()
      require('mini.ai').setup { n_lines = 500 }
      require('mini.surround').setup()
    end,
  },
})

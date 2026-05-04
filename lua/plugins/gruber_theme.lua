-- Disable warnings about undefined globals (useful for vim global like `vim`)
---@diagnostic disable: undefined-global

return {
  'blazkowolf/gruber-darker.nvim',
  priority = 1000,
  config = function()
    require('gruber-darker').setup {
      bold = true,
      italic = {
        strings = false,
      },
    }

    vim.cmd 'colorscheme gruber-darker'

    -- === BACKGROUND ===
    -- Transparent:
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

    -- OR force pure black instead:
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })

    -- === CURSOR ===
    vim.api.nvim_set_hl(0, 'Cursor', { fg = '#000000', bg = '#ffffff' })
    vim.api.nvim_set_hl(0, 'iCursor', { fg = '#000000', bg = '#ffffff' })
    vim.api.nvim_set_hl(0, 'vCursor', { fg = '#000000', bg = '#ffffff' })

    -- Optional: make cursor more visible in all modes
    vim.opt.guicursor = 'n-v-c:block-Cursor,i-ci-ve:ver25-Cursor,r-cr:hor20-Cursor'
  end,
}

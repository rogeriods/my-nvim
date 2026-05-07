-- Disable warnings about undefined globals (useful for vim global like `vim`)
---@diagnostic disable: undefined-global

return {
  'stevearc/conform.nvim',
  opts = {},
  config = function()
    require('conform').setup {
      format_on_save = {
        timeout_ms = 5000,
        lsp_format = 'fallback',
      },
      formatters_by_ft = {
        -- c = { "clang-format" },
        -- cpp = { "clang-format" },
        lua = { 'stylua' },
        go = { 'gofmt' },
        -- python = { "isort", "black" },
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        rust = { 'rustfmt' },
      },
      formatters = {
        ['clang-format'] = {
          prepend_args = { '-style=file', '-fallback-style=LLVM' },
        },
      },
    }

    vim.keymap.set(
      'n',
      '<leader>f',
      function() require('conform').format { bufnr = 0 } end,
      { desc = 'Format the current file' }
    )
  end,
}

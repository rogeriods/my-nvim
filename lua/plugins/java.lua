return {
  {
    'nvim-java/nvim-java',
    ft = { 'java' },

    dependencies = {
      'nvim-lua/plenary.nvim',
      'neovim/nvim-lspconfig',
      'williamboman/mason.nvim',
      'mfussenegger/nvim-dap',
      'MunifTanjim/nui.nvim',
    },

    config = function()
      require('java').setup {
        -- Java configuration
        jdk = {
          auto_install = false,
        },

        -- Spring Boot support
        spring_boot_tools = {
          enable = true,
        },

        -- Lombok support
        lombok = {
          version = 'nightly',
        },

        -- Java test support
        jdtls = {
          version = 'latest',
        },

        -- DAP / debugging
        dap = {
          hotcodereplace = 'auto',
          config_overrides = {},
        },
      }

      -- Optional useful keymaps
      vim.keymap.set('n', '<leader>jr', '<cmd>JavaRunnerRunMain<CR>', { desc = 'Run Java Main' })

      vim.keymap.set(
        'n',
        '<leader>jt',
        '<cmd>JavaTestRunCurrentClass<CR>',
        { desc = 'Run Java Test Class' }
      )

      vim.keymap.set(
        'n',
        '<leader>jm',
        '<cmd>JavaTestRunCurrentMethod<CR>',
        { desc = 'Run Java Test Method' }
      )

      vim.keymap.set(
        'n',
        '<leader>jb',
        '<cmd>JavaBuildBuildWorkspace<CR>',
        { desc = 'Build Java Workspace' }
      )

      vim.keymap.set('n', '<leader>jd', '<cmd>JavaDapConfig<CR>', { desc = 'Setup Java DAP' })
    end,
  },
}

return {
  {
    'zaldih/themery.nvim',
    opts = {
      themes = { 'tokyonight-night', 'catppuccin-frappe', 'catppuccin-macchiato', 'catppuccin-mocha', 'nordic', 'poimandres' },
    },
  },
  {
    'folke/tokyonight.nvim',
    priority = 1000,
  },
  {
    'kylejreed/poimandres.nvim',
    priority = 1000,
    lazy = false,
    config = function()
      require('poimandres').setup {
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
      }
    end,

    -- optionally set the colorscheme within lazy config
    init = function()
      vim.cmd 'colorscheme poimandres'
    end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    init = function()
      -- vim.cmd.colorscheme 'catppuccin-macchiato'
    end,
  },
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      local palette = require 'nordic.colors'
      require('nordic').setup {
        override = {
          Visual = {
            bg = palette.blue0,
          },
        },
      }
    end,
  },
}

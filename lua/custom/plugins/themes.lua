return {
  {
    'zaldih/themery.nvim',
    opts = {
      themes = { 'tokyonight-night', 'catppuccin-frappe', 'catppuccin-macchiato', 'catppuccin-mocha', 'nordic' },
    },
  },
  {
    'folke/tokyonight.nvim',
    priority = 1000,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'catppuccin-macchiato'
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

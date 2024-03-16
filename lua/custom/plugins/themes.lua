return {
  {
    'zaldih/themery.nvim',
    opts = {
      themes = { 'tokyonight-night', 'catppuccin-frappe', 'catppuccin-macchiato', 'catppuccin-mocha', 'nordic', 'kanagawa', 'poimandres' },
    },
  },
  {
    'kylejreed/poimandres.nvim',
    priority = 1000,
    lazy = true,
    config = function()
      require('poimandres').setup {}
    end,
  },
  {
    'folke/tokyonight.nvim',
    priority = 1000,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
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
            bg = palette.blue,
          },
        },
      }
    end,
    init = function()
      vim.cmd.colorscheme 'nordic'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
  },
}

return {
  {
    'zaldih/themery.nvim',
    opts = {
      themes = { 'tokyonight-night', 'catppuccin-mocha', 'nordic', 'kanagawa', 'poimandres' },
    },
  },
  {
    'kylejreed/poimandres.nvim',
    priority = 1000,
    lazy = false,
    config = function()
      require('poimandres').setup {}
    end,
    init = function()
      vim.cmd.colorscheme 'poimandres'
      vim.cmd.hi 'Comment gui=none'
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
  },
  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
  },
}

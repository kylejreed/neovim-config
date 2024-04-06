return {
  {
    'NvChad/nvterm',
    opts = {
      terminals = {
        type_opts = {
          float = {
            relative = 'editor',
            row = 0.15,
            col = 0.1,
            width = 0.8,
            height = 0.6,
            border = 'single',
          },
          horizontal = { location = 'rightbelow', split_ratio = 0.3 },
          vertical = { location = 'rightbelow', split_ratio = 0.5 },
        },
      },
    },
    config = function(_, opts)
      require('nvterm').setup(opts)

      vim.keymap.set('n', '<C-/>', function()
        require('nvterm.terminal').toggle 'float'
      end)
      vim.keymap.set('t', '<C-/>', function()
        require('nvterm.terminal').toggle 'float'
      end)

      vim.keymap.set('n', '<C-?>', function()
        require('nvterm.terminal').toggle 'horizontal'
      end)
      vim.keymap.set('t', '<C-?>', function()
        require('nvterm.terminal').toggle 'horizontal'
      end)
    end,
  },
}

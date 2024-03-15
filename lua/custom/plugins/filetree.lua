return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = true,
      window = {
        position = 'float',
      },
      buffers = {
        follow_current_file = { enabled = true },
      },
    }

    vim.keymap.set('n', '<C-n>', function()
      require('neo-tree.command').execute { toggle = true, reveal = true, dir = vim.loop.cwd() }
    end, { desc = 'Show diagnostic [E]rror messages' })
  end,
}

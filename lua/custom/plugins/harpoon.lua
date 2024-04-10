return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {},
    config = function(_, opts)
      local harpoon = require 'harpoon'
      harpoon.setup(opts)

      vim.keymap.set('n', '<leader>m', function()
        harpoon:list():add()
      end, { desc = '[A]dd to harpoon list' })
      vim.keymap.set('n', '`', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)
      vim.keymap.set('n', 'mm', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)

      vim.keymap.set('n', 'm1', function()
        harpoon:list():select(1)
      end, { desc = 'Harpoon buffer 1' })
      vim.keymap.set('n', 'm2', function()
        harpoon:list():select(2)
      end, { desc = 'Harpoon buffer 2' })
      vim.keymap.set('n', 'm3', function()
        harpoon:list():select(3)
      end, { desc = 'Harpoon buffer 3' })
      vim.keymap.set('n', 'm4', function()
        harpoon:list():select(4)
      end, { desc = 'Harpoon buffer 4' })

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '<C-P>', function()
        harpoon:list():prev()
      end)
      vim.keymap.set('n', '<C-N>', function()
        harpoon:list():next()
      end)
    end,
  },
}

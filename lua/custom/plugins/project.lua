return {
  {
    'ahmedkhalf/project.nvim',
    opts = {
      base_dirs = { '~/Documents' },
    },
    keys = {
      { '<leader>p', '<Cmd>Telescope projects<CR>', desc = 'Projects' },
    },
    config = function(_, opts)
      require('project_nvim').setup(opts)
      require('telescope').load_extension 'projects'
    end,
  },
}

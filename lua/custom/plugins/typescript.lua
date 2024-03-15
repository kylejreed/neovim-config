return {
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {
      settings = {
        complete_function_calls = true,
        include_completions_with_insert_text = false,
        jsx_close_tag = {
          enable = true,
          filetypes = { 'javascriptreact', 'typescriptreact' },
        },
        tsserver_format_options = {
          semicolons = 'insert',
        },
      },
    },
    config = function(_, opts)
      require('typescript-tools').setup(opts)
    end,
  },
  {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },
}

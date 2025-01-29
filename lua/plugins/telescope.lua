return {
  { 'nvim-telescope/telescope-ui-select.nvim' },
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      defaults = {
        vimgrep_arguments = {
          'rg',
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case',
          '--hidden',
          '--glob',
          '!**/.git/*',
        },
      },
      pickers = {
        find_files = {
          find_command = { 'rg', '--files', '--hidden', '--glob', '!**/.git/*' },
        },
      },
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown {},
        },
      },
    },
    config = function(_, opts)
      local telescope = require 'telescope'

      telescope.setup(opts)
      telescope.load_extension 'ui-select'
    end,
    keys = function()
      local builtin = require 'telescope.builtin'

      return {
        { '<C-p>', builtin.find_files, { desc = 'telescope find files' } },
        { '<leader>fb', builtin.buffers, { desc = 'telescope find buffers' } },
        { '<leader>fg', builtin.live_grep, { desc = 'telescope live grep' } },
        { '<leader><leader>', builtin.oldfiles, { desc = 'telescope old files' } },
      }
    end,
  },
}

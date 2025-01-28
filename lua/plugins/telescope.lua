return {
  { 'nvim-telescope/telescope-ui-select.nvim' },
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = function()
      return require 'configs.telescope'
    end,
    config = function(_, opts)
      local telescope = require('telescope')
      telescope.setup(opts)
      telescope.load_extension('ui-select')

      local builtin = require 'telescope.builtin'
      local map = vim.keymap.set

      map('n', '<C-p>', builtin.find_files, { desc = 'telescope find files' })
      map('n', '<leader>fb', builtin.buffers, { desc = 'telescope find buffers' })
      map('n', '<leader>fg', builtin.live_grep, { desc = 'telescope live grep' })
      map('n', '<leader><leader>', builtin.oldfiles, { desc = 'telescope old files' })
    end
  }
}

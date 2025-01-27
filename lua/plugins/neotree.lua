return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = require 'configs.neotree',
  config = function(_, opts)
    require('neo-tree').setup(opts)

    local map = vim.keymap.set

    map('n', '<C-n>', ':Neotree filesystem reveal left<CR>', { desc = 'Open neotree' })
  end
}

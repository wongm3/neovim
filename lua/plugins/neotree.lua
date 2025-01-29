return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
      },
    },
  },
  keys = {
    {
      '<C-n>',
      function()
        require('neo-tree.command').execute({
          toggle = true,
          reveal = true,
          reveal_force_cwd = true,
        }, { desc = 'Toggle neotree filesystem' })
      end,
    },
  },
}

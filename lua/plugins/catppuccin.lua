return {
  'catppuccin/nvim',
  lazy = false,
  name = 'catppuccin',
  priority = 1000,
  opts = {
    flavour = 'macchiato',
    transparent_background = true,
    integrations = {
      gitsigns = true,
      neotree = true,
      telescope = {
        enabled = false,
      },
      treesitter = true,
    },
  },
  config = function(_, opts)
    require('catppuccin').setup(opts)

    vim.cmd 'colorscheme catppuccin'
  end,
}

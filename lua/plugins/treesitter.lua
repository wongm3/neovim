return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    auto_install = true,
    highlight = { enabled = true },
    indent = { enabled = true },
  },
}

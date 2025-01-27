return {
  {
    'williamboman/mason.nvim',
    opts = require 'configs.lspconfig'.mason
  },
  {
    'williamboman/mason-lspconfig.nvim',
    opts = require 'configs.lspconfig'.mason_lspconfig
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require 'lspconfig'
      local servers = require 'configs.lspconfig'.servers

      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup({})
      end
    end
  }
}

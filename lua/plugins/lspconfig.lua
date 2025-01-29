local servers = { 'lua_ls', 'html', 'ts_ls', 'eslint', 'gopls' }

return {
  {
    'williamboman/mason.nvim',
    opts = {
      ui = {
        icons = {
          package_pending = ' ',
          package_installed = ' ',
          package_uninstalled = ' ',
        },
      },
      max_concurrent_installers = 10,
    },
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = {
      'williamboman/mason.nvim',
    },
    opts = { automatic_installation = true },
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason-lspconfig.nvim',
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
      for _, lsp in ipairs(servers) do
        require('lspconfig')[lsp].setup {
          capabilities = require('cmp_nvim_lsp').default_capabilities(),
        }
      end
    end,
    keys = function()
      return {
        { 'K', vim.lsp.buf.hover, { desc = 'lsp hover' } },
        { '<leader>gd', vim.lsp.buf.definition, { desc = 'lsp definition' } },
        { '<leader>gr', vim.lsp.buf.references, { desc = 'lsp references' } },
        { '<leader>ca', vim.lsp.buf.code_action, { desc = 'lsp code action' } },
      }
    end,
  },
}

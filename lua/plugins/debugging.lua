return {
  'mfussenegger/nvim-dap',
  keys = function()
    local dap = require('dap')

    return {
      { '<Leader>dt', dap.toggle_breakpoint, { desc = 'dap toggle breakpoint' } },
      { '<Leader>dc', dap.continue, { desc = 'dap continue' } }
    }
  end
}

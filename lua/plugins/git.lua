return {
  { 'tpope/vim-fugitive' },
  {
    'lewis6991/gitsigns.nvim',
    lazy = false,
    opts = {
      current_line_blame = true
    },
    keys = {
      { '<leader>gp',  function() require('gitsigns').preview_hunk() end,              { desc = 'preview git hunk' } },
      { '<leader>gtb', function() require('gitsigns').toggle_current_line_blame() end, { desc = 'preview git hunk' } },
    },
  },
}

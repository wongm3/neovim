return {
  {
    'akinsho/bufferline.nvim',
    dependencies = { 'catppuccin/nvim', 'nvim-tree/nvim-web-devicons' },
    opts = function()
      return {
        options = {
          diagnostics = 'nvim_lsp',
          always_show_bufferline = true,
          diagnostics_indicator = function(count, level)
            local icon = level:match 'error' and ' ' or ' '
            return ' ' .. icon .. count
          end,
          offsets = {
            {
              filetype = 'neo-tree',
              text = 'Neo-tree',
              highlight = 'Directory',
              text_align = 'left',
            },
          },
        },
        highlights = require('catppuccin.groups.integrations.bufferline').get(),
      }
    end,
  },
}

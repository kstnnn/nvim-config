return {
  {
    'nvim-mini/mini.nvim',
    config = function()
      require('mini.ai').setup { n_lines = 500 }
      require('mini.surround').setup()

      local statusline = require 'mini.statusline'
      statusline.setup {
        use_icons = vim.g.have_nerd_font,
        content = {
          active = function()
            local mode, mode_hl = statusline.section_mode { trunc_width = 120 }
            local filename = statusline.section_filename { trunc_width = 120 }
            return statusline.combine_groups {
              { hl = mode_hl, strings = { mode } },
              '%<',
              { hl = 'MiniStatuslineFilename', strings = { filename } },
            }
          end,
          inactive = function()
            local filename = statusline.section_filename { trunc_width = 120 }
            return statusline.combine_groups {
              { hl = 'MiniStatuslineFilename', strings = { filename } },
            }
          end,
        },
      }
    end,
  },
}

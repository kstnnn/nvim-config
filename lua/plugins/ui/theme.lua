return {
  {
    'wnkz/monoglow.nvim',
    lazy = false,
    priority = 1000,
    config = function() vim.cmd.colorscheme 'monoglow' end,
  },
  -- {
  --   'bjarneo/aether.nvim',
  --   name = 'aether',
  --   priority = 1000,
  --   opts = {
  --     disable_italics = false,
  --     colors = {
  --       bg = '#222222',
  --       dark_bg = '#1a1a1a',
  --       darker_bg = '#111111',
  --       lighter_bg = '#2d2d2d',
  --
  --       fg = '#ffffff',
  --       dark_fg = '#8b8b8b',
  --       light_fg = '#d0d0d0',
  --       bright_fg = '#ffffff',
  --       muted = '#525252',
  --
  --       red = '#7c7c7c',
  --       yellow = '#a0a0a0',
  --       orange = '#7c7c7c',
  --       green = '#8b8b8b',
  --       cyan = '#868686',
  --       blue = '#686868',
  --       purple = '#747474',
  --       brown = '#a0a0a0',
  --
  --       bright_red = '#9a9a9a',
  --       bright_yellow = '#b9b9b9',
  --       bright_green = '#a8a8a8',
  --       bright_cyan = '#a0a0a0',
  --       bright_blue = '#969696',
  --       bright_purple = '#9d9d9d',
  --
  --       accent = '#8b8b8b',
  --       cursor = '#ffffff',
  --       foreground = '#ffffff',
  --       background = '#222222',
  --       selection = '#3a3a3a',
  --       selection_foreground = '#ffffff',
  --       selection_background = '#525252',
  --     },
  --   },
  --   config = function(_, opts)
  --     require('aether').setup(opts)
  --     vim.cmd.colorscheme 'aether'
  --
  --     require('aether.hotreload').setup()
  --
  --     vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  --     vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  --     vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
  --     vim.api.nvim_set_hl(0, 'LineNr', { bg = 'none' })
  --     vim.api.nvim_set_hl(0, 'CursorLineNr', { bg = 'none' })
  --   end,
  -- },
}

return {
  -- {
  --   'folke/tokyonight.nvim',
  --   priority = 1000,
  --   config = function()
  --     ---@diagnostic disable-next-line: missing-fields
  --     require('tokyonight').setup {
  --       styles = {
  --         comments = { italic = false },
  --       },
  --     }
  --
  --     vim.cmd.colorscheme 'tokyonight-night'
  --   end,
  -- },
  {
    'metalelf0/black-metal-theme-neovim',
    lazy = false,
    priority = 1000,
    config = function()
      require('black-metal').setup {
        theme = 'bathory', --(these are variations pick whatever you like)bathory, burzum, dark-funeral, darkthrone, emperor, gorgoroth, immortal, impaled-nazarene, khold, marduk, mayhem, nile, taake, thyrfing, venom, windir
        variant = 'dark',
      }
      require('black-metal').load()
    end,
  },
}

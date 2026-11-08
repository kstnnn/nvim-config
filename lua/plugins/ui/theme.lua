return {
  {
    'wnkz/monoglow.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      on_colors = function(colors)
        colors.glow = '#fafafa'
        colors.bg = '#000000'
        colors.bg_dark = '#000000'
      end,
    },
    config = function(_, opts)
      require('monoglow').setup(opts)
      vim.cmd.colorscheme 'monoglow'
    end,
  },
}

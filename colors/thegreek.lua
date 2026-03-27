local colors = {
  bg = '#d0d0c8',
  bg_alt = '#a2a87c',
  fg = '#242424',
  comment = '#43432b',

  red = '#db0030',
  orange = '#B95C31',
  yellow = '#d2691e',
  green = '#2e4c3a',
  cyan = '#3B7D74',
  blue = '#576ddb',
  purple = '#7f4eb2',
}

vim.cmd 'highlight clear'
vim.o.background = 'light'
vim.g.colors_name = 'thegreek'

local set = vim.api.nvim_set_hl

-- UI
set(0, 'Normal', { fg = colors.fg, bg = colors.bg })
set(0, 'NormalFloat', { fg = colors.fg, bg = colors.bg_alt })
set(0, 'CursorLine', { bg = colors.bg_alt })
set(0, 'LineNr', { fg = colors.comment })
set(0, 'CursorLineNr', { fg = colors.orange, bold = true })
set(0, 'Visual', { bg = '#a2a87c' })

-- Syntax
set(0, 'Comment', { fg = colors.comment, italic = true })
set(0, 'Constant', { fg = colors.cyan })
set(0, 'String', { fg = colors.orange })
set(0, 'Number', { fg = colors.cyan })
set(0, 'Identifier', { fg = colors.green })
set(0, 'Function', { fg = colors.orange })
set(0, 'Statement', { fg = colors.orange })
set(0, 'Keyword', { fg = colors.orange })
set(0, 'Type', { fg = colors.orange })
set(0, 'Special', { fg = colors.purple })

-- Diagnostics
set(0, 'DiagnosticError', { fg = colors.red })
set(0, 'DiagnosticWarn', { fg = colors.yellow })
set(0, 'DiagnosticInfo', { fg = colors.blue })
set(0, 'DiagnosticHint', { fg = colors.green })

-- Git
set(0, 'DiffAdd', { fg = colors.green })
set(0, 'DiffChange', { fg = colors.yellow })
set(0, 'DiffDelete', { fg = colors.red })

-- Telescope
set(0, 'TelescopeBorder', { fg = colors.comment })
set(0, 'TelescopeSelection', { bg = colors.bg_alt })

-- Popup menu
set(0, 'Pmenu', { bg = colors.bg_alt })
set(0, 'PmenuSel', { fg = colors.bg, bg = colors.orange })

-- WhichKey
set(0, 'WhichKey', { fg = colors.fg, bg = colors.bg_alt })
set(0, 'WhichKeyGroup', { fg = colors.orange, bg = colors.bg_alt, bold = true })
set(0, 'WhichKeyDesc', { fg = colors.fg, bg = colors.bg_alt })
set(0, 'WhichKeySeparator', { fg = colors.comment, bg = colors.bg_alt })
set(0, 'WhichKeyFloat', { bg = colors.bg_alt })
set(0, 'WhichKeyBorder', { fg = colors.comment, bg = colors.bg_alt })

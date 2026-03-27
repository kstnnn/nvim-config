local colors = {
  bg = '#d0d0c8',
  bg_alt = '#a2a87c',
  bg_dark = '#8a8f6a',
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

-- =============================================================================
-- CORE UI
-- =============================================================================
set(0, 'Normal', { fg = colors.fg, bg = colors.bg })
set(0, 'NormalNC', { fg = colors.fg, bg = colors.bg })
set(0, 'NormalFloat', { fg = colors.fg, bg = colors.bg_alt })
set(0, 'FloatBorder', { fg = colors.comment, bg = colors.bg_alt })
set(0, 'FloatTitle', { fg = colors.orange, bg = colors.bg_alt, bold = true })

set(0, 'CursorLine', { bg = colors.bg_alt })
set(0, 'CursorLineNr', { fg = colors.orange, bold = true })
set(0, 'CursorColumn', { bg = colors.bg_alt })

set(0, 'LineNr', { fg = colors.comment })
set(0, 'LineNrAbove', { fg = colors.comment })
set(0, 'LineNrBelow', { fg = colors.comment })

set(0, 'Visual', { bg = colors.bg_alt })
set(0, 'VisualNOS', { bg = colors.bg_alt })

set(0, 'SignColumn', { fg = colors.comment, bg = colors.bg })
set(0, 'ColorColumn', { bg = colors.bg_alt })

set(0, 'Folded', { fg = colors.comment, bg = colors.bg_alt })
set(0, 'FoldColumn', { fg = colors.comment, bg = colors.bg })

set(0, 'MatchParen', { fg = colors.bg, bg = colors.orange, bold = true })

set(0, 'Search', { fg = colors.bg, bg = colors.yellow })
set(0, 'IncSearch', { fg = colors.bg, bg = colors.orange })

set(0, 'Substitute', { fg = colors.bg, bg = colors.green })

set(0, 'Underlined', { underline = true })
set(0, 'Bold', { bold = true })
set(0, 'Italic', { italic = true })

set(0, 'Title', { fg = colors.orange, bold = true })
set(0, 'Directory', { fg = colors.blue, bold = true })

-- =============================================================================
-- SYNTAX HIGHLIGHTING
-- =============================================================================
set(0, 'Comment', { fg = colors.comment, italic = true })
set(0, 'Constant', { fg = colors.cyan })
set(0, 'String', { fg = colors.orange })
set(0, 'Number', { fg = colors.cyan })
set(0, 'Boolean', { fg = colors.cyan })
set(0, 'Float', { fg = colors.cyan })
set(0, 'Identifier', { fg = colors.green })
set(0, 'Function', { fg = colors.orange })
set(0, 'Statement', { fg = colors.orange })
set(0, 'Conditional', { fg = colors.orange })
set(0, 'Repeat', { fg = colors.orange })
set(0, 'Label', { fg = colors.orange })
set(0, 'Operator', { fg = colors.orange })
set(0, 'Keyword', { fg = colors.orange })
set(0, 'Exception', { fg = colors.red })
set(0, 'Type', { fg = colors.orange })
set(0, 'StorageClass', { fg = colors.orange })
set(0, 'Structure', { fg = colors.orange })
set(0, 'Typedef', { fg = colors.orange })
set(0, 'PreProc', { fg = colors.purple })
set(0, 'Include', { fg = colors.purple })
set(0, 'Define', { fg = colors.purple })
set(0, 'Macro', { fg = colors.purple })
set(0, 'PreCondit', { fg = colors.purple })
set(0, 'Special', { fg = colors.purple })
set(0, 'SpecialChar', { fg = colors.purple })
set(0, 'Tag', { fg = colors.green })
set(0, 'Delimiter', { fg = colors.fg })
set(0, 'SpecialComment', { fg = colors.comment, italic = true })
set(0, 'Debug', { fg = colors.red })

-- =============================================================================
-- DIAGNOSTICS
-- =============================================================================
set(0, 'DiagnosticError', { fg = colors.red })
set(0, 'DiagnosticWarn', { fg = colors.yellow })
set(0, 'DiagnosticInfo', { fg = colors.blue })
set(0, 'DiagnosticHint', { fg = colors.green })

set(0, 'DiagnosticVirtualTextError', { fg = colors.red, bg = colors.bg, italic = true })
set(0, 'DiagnosticVirtualTextWarn', { fg = colors.yellow, bg = colors.bg, italic = true })
set(0, 'DiagnosticVirtualTextInfo', { fg = colors.blue, bg = colors.bg, italic = true })
set(0, 'DiagnosticVirtualTextHint', { fg = colors.green, bg = colors.bg, italic = true })

set(0, 'DiagnosticUnderlineError', { sp = colors.red, undercurl = true })
set(0, 'DiagnosticUnderlineWarn', { sp = colors.yellow, undercurl = true })
set(0, 'DiagnosticUnderlineInfo', { sp = colors.blue, undercurl = true })
set(0, 'DiagnosticUnderlineHint', { sp = colors.green, undercurl = true })

set(0, 'DiagnosticSignError', { fg = colors.red })
set(0, 'DiagnosticSignWarn', { fg = colors.yellow })
set(0, 'DiagnosticSignInfo', { fg = colors.blue })
set(0, 'DiagnosticSignHint', { fg = colors.green })

-- =============================================================================
-- LSP & COMPLETION
-- =============================================================================
-- Popup menu (native completion)
set(0, 'Pmenu', { fg = colors.fg, bg = colors.bg_alt })
set(0, 'PmenuSel', { fg = colors.bg, bg = colors.orange, bold = true })
set(0, 'PmenuSbar', { bg = colors.bg_dark })
set(0, 'PmenuThumb', { bg = colors.comment })

-- LSP kind icons
set(0, 'LspKindText', { fg = colors.fg })
set(0, 'LspKindMethod', { fg = colors.blue })
set(0, 'LspKindFunction', { fg = colors.blue })
set(0, 'LspKindConstructor', { fg = colors.blue })
set(0, 'LspKindField', { fg = colors.green })
set(0, 'LspKindVariable', { fg = colors.green })
set(0, 'LspKindClass', { fg = colors.orange })
set(0, 'LspKindInterface', { fg = colors.orange })
set(0, 'LspKindModule', { fg = colors.purple })
set(0, 'LspKindProperty', { fg = colors.green })
set(0, 'LspKindUnit', { fg = colors.cyan })
set(0, 'LspKindValue', { fg = colors.cyan })
set(0, 'LspKindEnum', { fg = colors.orange })
set(0, 'LspKindKeyword', { fg = colors.orange })
set(0, 'LspKindSnippet', { fg = colors.yellow })
set(0, 'LspKindColor', { fg = colors.cyan })
set(0, 'LspKindFile', { fg = colors.fg })
set(0, 'LspKindReference', { fg = colors.purple })
set(0, 'LspKindFolder', { fg = colors.blue })
set(0, 'LspKindEnumMember', { fg = colors.green })
set(0, 'LspKindConstant', { fg = colors.cyan })
set(0, 'LspKindStruct', { fg = colors.orange })
set(0, 'LspKindEvent', { fg = colors.yellow })
set(0, 'LspKindOperator', { fg = colors.orange })
set(0, 'LspKindTypeParameter', { fg = colors.orange })

-- LSP signature help
set(0, 'LspSignatureActiveParameter', { bg = colors.bg_dark, bold = true })

-- =============================================================================
-- TREESITTER
-- =============================================================================
set(0, '@markup', { fg = colors.fg })
set(0, '@markup.strong', { bold = true })
set(0, '@markup.italic', { italic = true })
set(0, '@markup.underline', { underline = true })
set(0, '@markup.strikethrough', { strikethrough = true })
set(0, '@markup.link', { fg = colors.blue, underline = true })
set(0, '@markup.link.label', { fg = colors.blue, underline = true })
set(0, '@markup.link.url', { fg = colors.blue, underline = true })
set(0, '@markup.raw', { fg = colors.cyan })
set(0, '@markup.heading', { fg = colors.orange, bold = true })
set(0, '@markup.list', { fg = colors.orange })
set(0, '@markup.quote', { fg = colors.comment, italic = true })

-- =============================================================================
-- GIT & DIFF
-- =============================================================================
set(0, 'DiffAdd', { fg = colors.green, bg = colors.bg })
set(0, 'DiffChange', { fg = colors.yellow, bg = colors.bg })
set(0, 'DiffDelete', { fg = colors.red, bg = colors.bg })
set(0, 'DiffText', { fg = colors.bg, bg = colors.blue })

set(0, 'GitSignsAdd', { fg = colors.green })
set(0, 'GitSignsChange', { fg = colors.yellow })
set(0, 'GitSignsDelete', { fg = colors.red })

set(0, 'GitSignsAddLn', { bg = colors.bg })
set(0, 'GitSignsChangeLn', { bg = colors.bg })
set(0, 'GitSignsDeleteLn', { bg = colors.bg })

set(0, 'GitSignsAddInline', { fg = colors.green })
set(0, 'GitSignsChangeInline', { fg = colors.yellow })
set(0, 'GitSignsDeleteInline', { fg = colors.red })

-- =============================================================================
-- SNACKS.NVIM
-- =============================================================================
-- Picker
set(0, 'SnacksPickerBorder', { fg = colors.comment, bg = colors.bg_alt })
set(0, 'SnacksPickerTitle', { fg = colors.orange, bg = colors.bg_alt, bold = true })
set(0, 'SnacksPickerNormal', { fg = colors.fg, bg = colors.bg_alt })
set(0, 'SnacksPickerCursorLine', { fg = colors.bg, bg = colors.orange, bold = true })
set(0, 'SnacksPickerCursorLineSign', { fg = colors.bg, bg = colors.orange })
set(0, 'SnacksPickerMatch', { fg = colors.red, bold = true })
set(0, 'SnacksPickerIcon', { fg = colors.fg })
set(0, 'SnacksPickerDir', { fg = colors.cyan, bold = true })
set(0, 'SnacksPickerDirIcon', { fg = colors.cyan, bold = true })
set(0, 'SnacksPickerFile', { fg = colors.fg })
set(0, 'SnacksPickerGitAdd', { fg = colors.green })
set(0, 'SnacksPickerGitChange', { fg = colors.yellow })
set(0, 'SnacksPickerGitDelete', { fg = colors.red })
set(0, 'SnacksPickerSelected', { fg = colors.bg, bg = colors.orange, bold = true })
set(0, 'SnacksPickerSelectedSign', { fg = colors.bg, bg = colors.orange })
set(0, 'SnacksPickerHeader', { fg = colors.orange, bg = colors.bg_alt, bold = true })
set(0, 'SnacksPickerInput', { fg = colors.fg, bg = colors.bg_alt })
set(0, 'SnacksPickerPrompt', { fg = colors.orange, bg = colors.bg_alt })

-- Picker preview
set(0, 'SnacksPickerPreview', { fg = colors.fg, bg = colors.bg_alt })
set(0, 'SnacksPickerPreviewBorder', { fg = colors.comment, bg = colors.bg_alt })

-- Notifier
set(0, 'SnacksNotifierInfo', { fg = colors.blue, bg = colors.bg_alt })
set(0, 'SnacksNotifierWarn', { fg = colors.yellow, bg = colors.bg_alt })
set(0, 'SnacksNotifierError', { fg = colors.red, bg = colors.bg_alt })
set(0, 'SnacksNotifierDebug', { fg = colors.purple, bg = colors.bg_alt })
set(0, 'SnacksNotifierTrace', { fg = colors.comment, bg = colors.bg_alt })

-- Input
set(0, 'SnacksInput', { fg = colors.fg, bg = colors.bg_alt })
set(0, 'SnacksInputBorder', { fg = colors.comment, bg = colors.bg_alt })
set(0, 'SnacksInputTitle', { fg = colors.orange, bg = colors.bg_alt, bold = true })
set(0, 'SnacksInputPrompt', { fg = colors.fg, bg = colors.bg_alt })

-- Dashboard
set(0, 'SnacksDashboardNormal', { fg = colors.fg, bg = colors.bg })
set(0, 'SnacksDashboardTitle', { fg = colors.orange, bold = true })
set(0, 'SnacksDashboardKey', { fg = colors.blue, bold = true })
set(0, 'SnacksDashboardDesc', { fg = colors.fg })
set(0, 'SnacksDashboardFooter', { fg = colors.comment, italic = true })

-- Terminal
set(0, 'SnacksTerminal', { fg = colors.fg, bg = colors.bg })
set(0, 'SnacksTerminalBorder', { fg = colors.comment, bg = colors.bg })

-- Scroll
set(0, 'SnacksScrollBar', { fg = colors.comment, bg = colors.bg })
set(0, 'SnacksScrollBarWin', { fg = colors.bg_alt, bg = colors.bg })

-- Indent
set(0, 'SnacksIndentScope', { fg = colors.comment })
set(0, 'SnacksIndentMarker', { fg = colors.comment })

-- -- =============================================================================
-- -- TELESCOPE (for compatibility)
-- -- =============================================================================
-- set(0, 'TelescopeNormal', { fg = colors.fg, bg = colors.bg_alt })
-- set(0, 'TelescopeBorder', { fg = colors.comment, bg = colors.bg_alt })
-- set(0, 'TelescopeSelection', { bg = colors.bg_dark, bold = true })
-- set(0, 'TelescopeSelectionCaret', { fg = colors.orange, bg = colors.bg_dark })
-- set(0, 'TelescopeMatching', { fg = colors.orange, bold = true })
-- set(0, 'TelescopePromptPrefix', { fg = colors.orange, bg = colors.bg_alt })
-- set(0, 'TelescopePrompt', { fg = colors.fg, bg = colors.bg_alt })
-- set(0, 'TelescopePromptBorder', { fg = colors.comment, bg = colors.bg_alt })
-- set(0, 'TelescopeResults', { fg = colors.fg, bg = colors.bg_alt })
-- set(0, 'TelescopeResultsBorder', { fg = colors.comment, bg = colors.bg_alt })
-- set(0, 'TelescopePreview', { fg = colors.fg, bg = colors.bg_alt })
-- set(0, 'TelescopePreviewBorder', { fg = colors.comment, bg = colors.bg_alt })

-- =============================================================================
-- WHICH-KEY
-- =============================================================================
set(0, 'WhichKey', { fg = colors.fg, bg = colors.bg_alt })
set(0, 'WhichKeyGroup', { fg = colors.orange, bg = colors.bg_alt, bold = true })
set(0, 'WhichKeyDesc', { fg = colors.fg, bg = colors.bg_alt })
set(0, 'WhichKeySeparator', { fg = colors.comment, bg = colors.bg_alt })
set(0, 'WhichKeyFloat', { bg = colors.bg_alt })
set(0, 'WhichKeyBorder', { fg = colors.comment, bg = colors.bg_alt })
set(0, 'WhichKeyNormal', { fg = colors.fg, bg = colors.bg_alt })
set(0, 'WhichKeyTitle', { fg = colors.orange, bg = colors.bg_alt, bold = true })

-- =============================================================================
-- MINI.NVIM
-- =============================================================================
-- Mini Statusline
set(0, 'MiniStatuslineMode', { fg = colors.bg, bg = colors.orange, bold = true })
set(0, 'MiniStatuslineFilename', { fg = colors.comment, bg = colors.bg_alt })

-- Mini Indent
set(0, 'MiniIndentscopeSymbol', { fg = colors.comment })
set(0, 'MiniIndentscopePrefix', { fg = colors.comment })

-- Mini Cursorword
set(0, 'MiniCursorword', { bg = colors.bg_alt })
set(0, 'MiniCursorwordCurrent', { bg = colors.bg_alt })

-- Mini Jump
set(0, 'MiniJump', { fg = colors.bg, bg = colors.orange, bold = true })

-- Mini Jump2d
set(0, 'MiniJump2dSpot', { fg = colors.bg, bg = colors.orange, bold = true })

-- =============================================================================
-- INDENT-BLANKLINE
-- =============================================================================
set(0, 'IblIndent', { fg = colors.comment, nocombine = true })
set(0, 'IblScope', { fg = colors.orange, nocombine = true })
set(0, 'IblWhitespace', { fg = colors.comment, nocombine = true })

-- =============================================================================
-- TODO COMMENTS
-- =============================================================================
set(0, 'TodoBg', { fg = colors.bg, bg = colors.orange, bold = true, italic = true })
set(0, 'TodoFg', { fg = colors.orange, bold = true, italic = true })
set(0, 'TodoWarn', { fg = colors.yellow, bg = colors.bg, bold = true, italic = true })
set(0, 'TodoError', { fg = colors.red, bg = colors.bg, bold = true, italic = true })
set(0, 'TodoDone', { fg = colors.green, bg = colors.bg, bold = true, italic = true })

-- =============================================================================
-- OIL.NVIM
-- =============================================================================
set(0, 'OilDir', { fg = colors.cyan, bold = true })
set(0, 'OilFile', { fg = colors.fg })
set(0, 'OilNormal', { fg = colors.fg, bg = colors.bg })
set(0, 'OilDirIcon', { fg = colors.cyan, bold = true })
set(0, 'OilLinkTarget', { fg = colors.purple })
set(0, 'OilLinkInvalid', { fg = colors.red })
set(0, 'OilPreview', { bg = colors.bg_alt })
set(0, 'OilBorder', { fg = colors.comment })

-- =============================================================================
-- GITSIGNSS
-- =============================================================================
set(0, 'GitSignsAdd', { fg = colors.green })
set(0, 'GitSignsChange', { fg = colors.yellow })
set(0, 'GitSignsDelete', { fg = colors.red })

-- =============================================================================
-- RENDER MARKDOWN
-- =============================================================================
set(0, 'RenderMarkdownOk', { fg = colors.green, bg = colors.bg })
set(0, 'RenderMarkdownTodo', { fg = colors.yellow, bg = colors.bg })
set(0, 'RenderMarkdownWarn', { fg = colors.orange, bg = colors.bg })
set(0, 'RenderMarkdownError', { fg = colors.red, bg = colors.bg })
set(0, 'RenderMarkdownDone', { fg = colors.green, bg = colors.bg })
set(0, 'RenderMarkdownBullet', { fg = colors.orange, bg = colors.bg })
set(0, 'RenderMarkdownQuote', { fg = colors.comment, italic = true, bg = colors.bg })

-- =============================================================================
-- BLINK.CMP
-- =============================================================================
set(0, 'BlinkCmpMenu', { fg = colors.fg, bg = colors.bg_alt })
set(0, 'BlinkCmpMenuBorder', { fg = colors.comment, bg = colors.bg_alt })
set(0, 'BlinkCmpMenuSelection', { fg = colors.bg, bg = colors.orange, bold = true })
set(0, 'BlinkCmpLabel', { fg = colors.fg })
set(0, 'BlinkCmpLabelDeprecated', { fg = colors.comment, strikethrough = true })
set(0, 'BlinkCmpLabelMatch', { fg = colors.orange, bold = true })
set(0, 'BlinkCmpKind', { fg = colors.blue })
set(0, 'BlinkCmpKindText', { fg = colors.fg })
set(0, 'BlinkCmpKindMethod', { fg = colors.blue })
set(0, 'BlinkCmpKindFunction', { fg = colors.blue })
set(0, 'BlinkCmpKindConstructor', { fg = colors.blue })
set(0, 'BlinkCmpKindField', { fg = colors.green })
set(0, 'BlinkCmpKindVariable', { fg = colors.green })
set(0, 'BlinkCmpKindClass', { fg = colors.orange })
set(0, 'BlinkCmpKindInterface', { fg = colors.orange })
set(0, 'BlinkCmpKindModule', { fg = colors.purple })
set(0, 'BlinkCmpKindProperty', { fg = colors.green })
set(0, 'BlinkCmpKindEnum', { fg = colors.orange })
set(0, 'BlinkCmpKindKeyword', { fg = colors.orange })
set(0, 'BlinkCmpKindSnippet', { fg = colors.yellow })
set(0, 'BlinkCmpKindEnumMember', { fg = colors.green })
set(0, 'BlinkCmpKindStruct', { fg = colors.orange })
set(0, 'BlinkCmpKindEvent', { fg = colors.yellow })
set(0, 'BlinkCmpKindOperator', { fg = colors.orange })
set(0, 'BlinkCmpKindTypeParameter', { fg = colors.orange })
set(0, 'BlinkCmpKindConstant', { fg = colors.cyan })
set(0, 'BlinkCmpDocumentation', { fg = colors.fg, bg = colors.bg_alt })
set(0, 'BlinkCmpDocumentationBorder', { fg = colors.comment, bg = colors.bg_alt })
set(0, 'BlinkCmpGhostText', { fg = colors.comment, italic = true })

-- =============================================================================
-- NATIVE LSP
-- =============================================================================
set(0, 'LspReferenceText', { bg = colors.bg_alt })
set(0, 'LspReferenceRead', { bg = colors.bg_alt })
set(0, 'LspReferenceWrite', { bg = colors.bg_alt })

set(0, 'LspCodeLens', { fg = colors.comment, italic = true })
set(0, 'LspCodeLensSeparator', { fg = colors.comment, italic = true })

set(0, 'LspInlayHint', { fg = colors.comment, bg = colors.bg, italic = true })

-- =============================================================================
-- MISCELLANEOUS
-- =============================================================================
set(0, 'SpellBad', { sp = colors.red, undercurl = true })
set(0, 'SpellCap', { sp = colors.blue, undercurl = true })
set(0, 'SpellRare', { sp = colors.purple, undercurl = true })
set(0, 'SpellLocal', { sp = colors.green, undercurl = true })

set(0, 'QuickFixLine', { bg = colors.bg_alt })
set(0, 'QuickFixError', { fg = colors.red, bg = colors.bg_alt })

set(0, 'StatusLine', { fg = colors.fg, bg = colors.bg_alt })
set(0, 'StatusLineNC', { fg = colors.comment, bg = colors.bg_alt })
set(0, 'StatusLineTerm', { fg = colors.fg, bg = colors.bg_alt })
set(0, 'StatusLineTermNC', { fg = colors.comment, bg = colors.bg_alt })

set(0, 'TabLine', { fg = colors.comment, bg = colors.bg_alt })
set(0, 'TabLineFill', { fg = colors.comment, bg = colors.bg_alt })
set(0, 'TabLineSel', { fg = colors.bg, bg = colors.orange, bold = true })

set(0, 'VertSplit', { fg = colors.comment })
set(0, 'WinSeparator', { fg = colors.comment })

set(0, 'WildMenu', { fg = colors.bg, bg = colors.orange })

set(0, 'ModeMsg', { fg = colors.orange, bold = true })
set(0, 'ErrorMsg', { fg = colors.red, bold = true })
set(0, 'WarningMsg', { fg = colors.yellow, bold = true })
set(0, 'MoreMsg', { fg = colors.green, bold = true })

set(0, 'Question', { fg = colors.blue })

set(0, 'MsgArea', { fg = colors.fg })
set(0, 'MsgSeparator', { fg = colors.comment })

set(0, 'SpecialKey', { fg = colors.comment })
set(0, 'NonText', { fg = colors.comment })
set(0, 'Whitespace', { fg = colors.comment })

set(0, 'EndOfBuffer', { fg = colors.bg })

set(0, 'Conceal', { fg = colors.comment })

set(0, 'Ignore', { fg = colors.bg })

set(0, 'Error', { fg = colors.red, bg = colors.bg, bold = true })

set(0, 'Terminal', { fg = colors.fg, bg = colors.bg })

set(0, 'debugPC', { fg = colors.bg, bg = colors.purple })
set(0, 'debugBreakpoint', { fg = colors.bg, bg = colors.red })

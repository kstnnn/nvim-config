local function close_hover_or_clear_search()
  local current_buf = vim.api.nvim_get_current_buf()
  local hover_win = vim.b[current_buf].lsp_floating_preview

  if hover_win and vim.api.nvim_win_is_valid(hover_win) then
    vim.api.nvim_win_close(hover_win, true)
    return
  end

  vim.cmd 'nohlsearch'
end

vim.keymap.set('n', '<Esc>', close_hover_or_clear_search, { desc = 'Close hover or clear search' })

vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { border = 'rounded', source = 'if_many' },
  underline = { severity = { min = vim.diagnostic.severity.WARN } },

  virtual_text = true,
  virtual_lines = false,

  jump = {
    on_jump = function(_, bufnr)
      vim.diagnostic.open_float {
        bufnr = bufnr,
        scope = 'cursor',
        focus = false,
      }
    end,
  },
}

local function show_documentation()
  vim.lsp.buf.hover()
  -- focus_id = vim.lsp.protocol.Methods.textDocument_hover,
  -- close_events = { 'InsertCharPre', 'BufHidden', 'BufLeave' },
  -- }
end

local function hover_scroll_or(key)
  return function()
    local current_buf = vim.api.nvim_get_current_buf()
    local hover_win = vim.b[current_buf].lsp_floating_preview

    if hover_win and vim.api.nvim_win_is_valid(hover_win) then
      local cursor = vim.api.nvim_win_get_cursor(hover_win)
      local line_count = vim.api.nvim_buf_line_count(vim.api.nvim_win_get_buf(hover_win))
      local step = key == 'j' and 1 or -1
      local target_line = math.max(1, math.min(line_count, cursor[1] + step))

      vim.api.nvim_win_set_cursor(hover_win, { target_line, cursor[2] })
      return '<Ignore>'
    end

    return key
  end
end

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>s', show_documentation, { desc = 'Show documentation' })
vim.keymap.set('n', 'j', hover_scroll_or 'j', { desc = 'Scroll hover or move down', expr = true })
vim.keymap.set('n', 'k', hover_scroll_or 'k', { desc = 'Scroll hover or move up', expr = true })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<A-j>', '<cmd>m .+1<CR>==', { desc = 'Move line down' })
vim.keymap.set('n', '<A-k>', '<cmd>m .-2<CR>==', { desc = 'Move line up' })

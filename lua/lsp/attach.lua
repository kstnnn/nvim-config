local M = {}

function M.setup()
  vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('kstn-lsp-attach', { clear = true }),
    callback = function(event)
      local function map(keys, func, desc, mode)
        vim.keymap.set(mode or 'n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
      end

      map('grn', vim.lsp.buf.rename, '[R]e[n]ame')
      map('gra', vim.lsp.buf.code_action, '[G]oto Code [A]ction', { 'n', 'x' })
      map('grD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')

      local client = vim.lsp.get_client_by_id(event.data.client_id)
      if not client then return end

      if client:supports_method('textDocument/documentHighlight', event.buf) then
        local highlight_group = vim.api.nvim_create_augroup('kstn-lsp-highlight', { clear = false })

        vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
          buffer = event.buf,
          group = highlight_group,
          callback = vim.lsp.buf.document_highlight,
        })

        vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
          buffer = event.buf,
          group = highlight_group,
          callback = vim.lsp.buf.clear_references,
        })

        vim.api.nvim_create_autocmd('LspDetach', {
          group = vim.api.nvim_create_augroup('kstn-lsp-detach', { clear = true }),
          callback = function(detach_event)
            vim.lsp.buf.clear_references()
            vim.api.nvim_clear_autocmds { group = 'kstn-lsp-highlight', buffer = detach_event.buf }
          end,
        })
      end

      if client:supports_method('textDocument/inlayHint', event.buf) then
        map(
          '<leader>th',
          function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf }) end,
          '[T]oggle Inlay [H]ints'
        )
      end
    end,
  })
end

return M

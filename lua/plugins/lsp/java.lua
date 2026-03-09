return {
  {
    'nvim-java/nvim-java',
    config = function()
      require('java').setup()
      vim.lsp.enable 'jdtls'

      local function on_attach_jdtls(bufnr)
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Move file with context', buffer = bufnr })

        vim.keymap.set(
          'n',
          '<leader>ci',
          function()
            vim.lsp.buf.code_action {
              context = { only = { 'source.overrideMethods' } },
              apply = true,
            }
          end,
          { desc = 'Override/Implement methods', buffer = bufnr }
        )

        vim.keymap.set(
          'n',
          '<leader>cq',
          function()
            vim.lsp.buf.code_action {
              context = { only = { 'quickassist' } },
              apply = true,
            }
          end,
          { desc = 'Quick Assist', buffer = bufnr }
        )

        vim.keymap.set(
          'n',
          '<leader>co',
          function()
            vim.lsp.buf.code_action {
              context = { only = { 'source.organizeImports' } },
              apply = true,
            }
          end,
          { desc = 'Organize Imports', buffer = bufnr }
        )
      end

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then return end

          if client.name == 'jdtls' then on_attach_jdtls(args.buf) end
        end,
      })
    end,
  },
}

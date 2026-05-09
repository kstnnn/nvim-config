return {
  {
    'nvim-java/nvim-java',
    config = function()
      require('java').setup {
        jdk = {
          auto_install = false,
          version = '25',
        },
      }

      local ok, spring_boot_util = pcall(require, 'spring_boot.util')
      if ok then
        spring_boot_util.execute_command = function(client, command, param, callback)
          local co
          if not callback then
            co = coroutine.running()
            if co then
              callback = function(err, resp)
                coroutine.resume(co, err, resp)
              end
            end
          end

          client:request('workspace/executeCommand', {
            command = command,
            arguments = param,
          }, callback, nil)

          if co then return coroutine.yield() end
        end
      end

      vim.lsp.enable 'jdtls'

      local function on_attach_jdtls(bufnr)
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'actions menu', buffer = bufnr })

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

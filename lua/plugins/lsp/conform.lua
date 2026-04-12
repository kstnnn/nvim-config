return {
  {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>F',
        function() require('conform').format { async = true, lsp_format = 'fallback' } end,
        mode = '',
        desc = '[F]ormat',
      },
    },
    ---@module 'conform'
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        local disable_filetypes = { c = true, cpp = true }
        if disable_filetypes[vim.bo[bufnr].filetype] then
          return nil
        else
          return {
            timeout_ms = 500,
            lsp_format = 'fallback',
          }
        end
      end,
      format_after_save = function(bufnr)
        -- Format after saving for Java files to maintain consistency
        if vim.bo[bufnr].filetype == 'java' then return {
          timeout_ms = 500,
          lsp_format = 'fallback',
        } end
        return nil
      end,
      formatters_by_ft = {
        lua = { 'stylua' },
        java = { 'google-java-format' },
        sql = { 'sqlfluff' },
      },
      format_options = {
        sql = { timeout_ms = 3000 },
      },
      formatters = {
        sqlfluff = {
          prepend_args = {
            '--dialect',
            'postgres',
          },
          require_cwd = false,
        },
      },
    },
  },
}

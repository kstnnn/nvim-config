return {
  {
    'stevearc/oil.nvim',
    opts = {
      default_file_explorer = true,
      columns = { 'icon' },
      constrain_cursor = 'editable',
      watch_for_changes = true,
      keymaps = {
        ['g?'] = { 'actions.show_help', mode = 'n' },
        ['<C-l>'] = 'actions.select',
        ['<C-p>'] = 'actions.preview',
        ['<C-r>'] = 'actions.refresh',
        ['<C-h>'] = { 'actions.parent' },
        ['_'] = { 'actions.open_cwd', mode = 'n' },
        ['`'] = { 'actions.cd', mode = 'n' },
        ['g~'] = { 'actions.cd', opts = { scope = 'tab' }, mode = 'n' },
        ['gs'] = { 'actions.change_sort', mode = 'n' },
        ['gx'] = 'actions.open_external',
        ['.'] = { 'actions.toggle_hidden', mode = 'n' },
        ['g\\'] = { 'actions.toggle_trash', mode = 'n' },
      },
      use_default_keymaps = false,
      view_options = {
        show_hidden = false,
        is_hidden_file = function(name) return name:match '^%.' ~= nil end,
        natural_order = 'fast',
        sort = {
          { 'type', 'asc' },
          { 'name', 'asc' },
        },
      },
      git = {
        add = function() return false end,
        mv = function() return false end,
        rm = function() return false end,
      },
    },
    dependencies = { { 'nvim-mini/mini.icons', opts = {} } },
    lazy = false,
  },
}

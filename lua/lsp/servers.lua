local vue_node_modules = vim.fn.stdpath 'data' .. '/mason/packages/vue-language-server/node_modules'

local vue_plugin = {
  name = '@vue/typescript-plugin',
  location = vue_node_modules .. '/@vue/language-server',
  languages = { 'vue' },
  configNamespace = 'typescript',
}

---@type table<string, vim.lsp.Config>
return {
  hyprls = {},
  rust_analyzer = {},
  vue_ls = {},

  vtsls = {
    filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'vue' },
    settings = {
      typescript = {
        tsserver = {
          pluginPaths = { vue_node_modules },
        },
      },
      vtsls = {
        autoUseWorkspaceTsdk = true,
        tsserver = {
          globalPlugins = {
            vue_plugin,
          },
        },
      },
    },
  },

  yamlls = {
    settings = {
      yaml = {
        schemaStore = {
          enable = false,
          url = '',
        },
        schemas = {
          require('schemastore').yaml.schemas {
            extra = {
              {
                description = 'Liquibase Master Changelog',
                fileMatch = 'db.changelog-master.yaml',
                name = 'liquibase-3.2.json',
                url = 'https://json.schemastore.org/liquibase-3.2.json',
              },
              {
                description = 'Docker Compose',
                fileMatch = {
                  'docker-compose.yaml',
                  'docker-compose.yml',
                  'compose.yaml',
                  'compose.yml',
                  'docker-compose.*.yaml',
                  'docker-compose.*.yml',
                  'compose.*.yaml',
                  'compose.*.yml',
                },
                name = 'compose-spec.json',
                url = 'https://raw.githubusercontent.com/compose-spec/compose-go/master/schema/compose-spec.json',
              },
            },
          },
        },
      },
    },
  },

  lua_ls = {
    on_init = function(client)
      if client.workspace_folders then
        local path = client.workspace_folders[1].name
        local has_luarc = vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc')
        if path ~= vim.fn.stdpath 'config' and has_luarc then return end
      end

      client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
        runtime = {
          version = 'LuaJIT',
          path = { 'lua/?.lua', 'lua/?/init.lua' },
        },
        workspace = {
          checkThirdParty = false,
          library = vim.tbl_extend('force', vim.api.nvim_get_runtime_file('', true), {
            '${3rd}/luv/library',
            '${3rd}/busted/library',
          }),
        },
      })
    end,
    settings = {
      Lua = {},
    },
  },
}

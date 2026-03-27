-- return {
--   {
--     'metalelf0/black-metal-theme-neovim',
--     lazy = false,
--     priority = 1000,
--     config = function()
--       require('black-metal').setup {
--         theme = 'darkthrone', --(these are variations pick whatever you like)bathory, burzum, dark-funeral, darkthrone, emperor, gorgoroth, immortal, impaled-nazarene, khold, marduk, mayhem, nile, taake, thyrfing, venom, windir
--         variant = 'dark',
--       }
--       require('black-metal').load()
--     end,
--   },
-- }
return {
  name = 'thegreek',
  dir = vim.fn.stdpath 'config',
  lazy = false,
  priority = 1000,
  config = function() vim.cmd.colorscheme 'thegreek' end,
}

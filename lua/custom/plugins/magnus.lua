return {
  -- mpja69: Testar min egen plugin
  --          2 alternativ för konfiguration:
  --            1) opts = { ... }                 Som komer anropa plugin.setup( opts )
  --            2) config = function() ... end    Som körs. Och här kan man ex. anropa requre('name').setup() eller sätta keymaps, etc
  -- {
  --   'mpja69/test_plugin',
  --   config = function()
  --     vim.keymap.set('n', '<leader>t', require('magnus').show_todo, { desc = 'Open [T]odos' })
  --   end,
  --
  --   -- Om jag vill anropa setup()
  --   -- opts = { 'Från init.lua' },
  --   --
  --   -- Om jag vill installera den från lokalt
  --   -- {
  --   --   dir = '~/Code/lua/plugins/magnus.nvim',
  --   -- },
  -- },
}

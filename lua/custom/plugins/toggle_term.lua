return {
  'akinsho/toggleterm.nvim',
  version = '*',
  keys = {
    { '<leader>td', '<cmd>ToggleTerm size=4  direction=horizontal<cr>', desc = 'Open horizontal terminal' },
  },
  config = true,
  -- config = function()
  --   require('toggleterm').setup {}
  -- end,
}

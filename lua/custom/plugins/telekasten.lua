return {
  'renerocksai/telekasten.nvim',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require('telekasten').setup {
      home = vim.fn.expand '~/telekasten', -- Put the name of your notes directory here
    }
    -- Document existing key chains
    require('which-key').register {
      ['<leader>z'] = { name = '[Z]ettelkasten', _ = 'which_key_ignore' },
    }

    vim.keymap.set('n', '<leader>zf', require('telekasten').find_notes, { desc = '[Z]ettelkasten - [F]ind notes' })
    vim.keymap.set('n', '<leader>zd', require('telekasten').goto_today, { desc = '[Z]ettelkasten - [D]aily note' })
    vim.keymap.set('n', '<leader>zg', require('telekasten').search_notes, { desc = '[Z]ettelkasten - [G]rep notes' })
    vim.keymap.set('n', '<leader>zn', require('telekasten').new_note, { desc = '[Z]ettelkasten - [N]ew note' })
    vim.keymap.set('n', '<leader>zl', require('telekasten').follow_link, { desc = '[Z]ettelkasten - Follow [L]ink' })
    vim.keymap.set('n', '<leader>zz', ':e ~/telekasten/ToDo.md<cr>', { desc = '[Z]ettelkasten - Open ToDo' })
  end,
}

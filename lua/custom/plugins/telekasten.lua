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

    vim.api.nvim_create_autocmd('BufEnter', {
      pattern = 'ToDo.md',
      desc = 'Toggle ToDo',
      group = vim.api.nvim_create_augroup('mpja69_todo', { clear = true }),
      callback = function(event)
        vim.keymap.set('n', '<leader><cr>', require('telekasten').toggle_todo, { buffer = event.buf, desc = 'Toggle ToDo' })
      end,
    })

    vim.keymap.set('n', '<leader>zf', require('telekasten').find_notes, { desc = '[Z]ettelkasten - [F]ind notes' })
    vim.keymap.set('n', '<leader>zd', require('telekasten').goto_today, { desc = '[Z]ettelkasten - [D]aily note' })
    vim.keymap.set('n', '<leader>zg', require('telekasten').search_notes, { desc = '[Z]ettelkasten - [G]rep notes' })
    vim.keymap.set('n', '<leader>zn', require('telekasten').new_note, { desc = '[Z]ettelkasten - [N]ew note' })
    vim.keymap.set('n', '<leader>zl', require('telekasten').follow_link, { desc = '[Z]ettelkasten - Follow [L]ink' })
    vim.keymap.set('n', '<leader>zz', ':e ~/telekasten/ToDo.md<cr>', { desc = '[Z]ettelkasten - Open ToDo' })
  end,
}

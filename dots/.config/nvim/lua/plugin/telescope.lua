require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<C-b>"] = require('telescope.actions').delete_buffer,
      },
      n = {
        ["<C-d>"] = require('telescope.actions').delete_buffer,
        ["dd"] = require('telescope.actions').delete_buffer,
      },
    },
  },
}

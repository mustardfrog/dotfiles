local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

require('telescope').setup{
defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        ["<C-h>"] = "which_key"
      }
    }
  },
  file_ignore_patterns = { 
      "./node_modules" 
  },
  pickers = {
      --find_files = {
          --theme = "ivy",
      --},
      --live_grep = {
          --theme = "ivy",
      --},
    -- Default configuration for builtin pickers goes here:
  },
  extensions = {
  }
}
--    nnoremap <leader>ff <cmd>Telescope find_files<cr>
--    nnoremap <leader>fg <cmd>Telescope live_grep<cr>
--    nnoremap <leader>fb <cmd>Telescope buffers<cr>
--    nnoremap <leader>fh <cmd>Telescope help_tags<cr>


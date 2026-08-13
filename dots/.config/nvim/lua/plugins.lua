vim.pack.add({
  { src = 'https://github.com/nvim-mini/mini.pick' },
  { src = 'https://github.com/stevearc/oil.nvim' },
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/saghen/blink.cmp' },
  { src = 'https://github.com/j-hui/fidget.nvim' },
  { src = 'https://github.com/williamboman/mason.nvim' },
  { src = 'https://github.com/tpope/vim-fugitive' },
  { src = 'https://github.com/rafamadriz/friendly-snippets' },
  { src = 'https://github.com/nvim-lua/plenary.nvim' },
  { src = 'https://github.com/nvim-telescope/telescope.nvim' },
  { src = 'https://github.com/folke/which-key.nvim' },
  { src = 'https://github.com/ellisonleao/gruvbox.nvim' },
  { src = 'https://github.com/chrisgrieser/nvim-origami' },
  { src = "https://github.com/catgoose/nvim-colorizer.lua" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
})
-- { src = 'https://github.com/rebelot/kanagawa.nvim' },
-- { src = 'https://github.com/gbprod/nord.nvim' },
-- { src = 'https://github.com/folke/tokyonight.nvim' },
-- { src = 'https://github.com/oahlen/iceberg.nvim' },
-- { src = 'https://github.com/vague-theme/vague.nvim' },

require('mini.pick').setup({})
require("oil").setup({})
require("fidget").setup({})
require("mason").setup({})
require("origami").setup({})
vim.o.termguicolors = true
require("colorizer").setup({})
require("nvim-treesitter.config").setup({
  ensure_installed = { "typescript", "css", "javascript", "svelte" },
  highlight = { enable = true },
})
-- require("kanagawa").setup({})

-- require('telescope').setup({
--   defaults = {
--     mappings = {
--       n = {
--         ['<c-g>'] = require('telescope.actions').delete_buffer
--       },
--       i = {
--         ['<c-g>'] = require('telescope.actions').delete_buffer
--       },
--     }
--   }
-- })

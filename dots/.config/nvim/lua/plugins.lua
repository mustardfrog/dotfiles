vim.pack.add({
  -- { src = 'https://github.com/folke/tokyonight.nvim' },
  { src = 'https://github.com/nvim-mini/mini.pick' },
  { src = 'https://github.com/stevearc/oil.nvim' },
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/saghen/blink.cmp' },
  { src = 'https://github.com/j-hui/fidget.nvim' },
  { src = 'https://github.com/williamboman/mason.nvim' },
  { src = 'https://github.com/tpope/vim-fugitive' },
})

require('mini.pick').setup({})
require("oil").setup({})
require("fidget").setup({})
require("mason").setup({})

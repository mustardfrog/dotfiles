vim.pack.add({
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
  { src = 'https://github.com/chrisgrieser/nvim-origami' },
  { src = "https://github.com/catgoose/nvim-colorizer.lua" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { src = "https://github.com/lewis6991/gitsigns.nvim" },
  { src = "https://github.com/savq/melange-nvim" },
  { src = 'https://github.com/ellisonleao/gruvbox.nvim' },
  { src = "https://github.com/gremble0/yellowbeans.nvim" },
  { src = 'https://github.com/nvim-mini/mini.pick' },
})

-- { src = 'https://github.com/rebelot/kanagawa.nvim' },
-- { src = 'https://github.com/gbprod/nord.nvim' },
-- { src = 'https://github.com/folke/tokyonight.nvim' },
-- { src = 'https://github.com/oahlen/iceberg.nvim' },
-- { src = 'https://github.com/vague-theme/vague.nvim' },

require("oil").setup({})
-- mini.pick needed better for code actions
require("mini.pick").setup({})
require("fidget").setup({})
require("mason").setup({})
require("origami").setup({})
require("gitsigns").setup({})

vim.o.termguicolors = true
require("colorizer").setup({})

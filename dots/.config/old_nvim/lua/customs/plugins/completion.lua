return {
  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      -- 'hrsh7th/cmp-path',
      'rafamadriz/friendly-snippets',
    },
    config = function ()
      require("customs.completion")
    end
  }
}


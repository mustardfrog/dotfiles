return {
  {
    {
      'brenoprata10/nvim-highlight-colors',
      config = function()
        require('nvim-highlight-colors').setup {}
      end
    },

    {
      'folke/tokyonight.nvim',
      config = function()
        -- vim.cmd.colorscheme "tokyonight-day"
        -- vim.oobackground = 'light'
        -- vim.api.nvim_set_hl(0, "Normal", { bg = "None", fg = "#ffffff" })
        -- vim.api.nvim_set_hl(0, "NormalNC", { bg = "#282a36" }) -- dracula
        vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
        vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" })
        --[[
    vim.api.nvim_set_hl(0, "VertSplit", { bg = "None" })
    vim.api.nvim_set_hl(0, "Number", { bg = "None" })
      ]] --
        -- vim.g.gruvbox_baby_telescope_theme = 1
      end
    },
  },
  {
    "sainnhe/gruvbox-material",
    config = function()
      -- vim.cmd.colorscheme("gruvbox-material")
      vim.opt.background = "dark"
      vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
      vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
      vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" })
    end,
  },
  {
    'pineapplegiant/spaceduck',
    config = function()
      -- vim.cmd.colorscheme("spaceduck")
    end
  },

  -- {
  -- 'mustardfrog/pinkish_day',
  --   lazy = false,
  --   dependencies = { 'rktjmp/lush.nvim' },
  -- },
  -- {
  --   'projekt0n/github-nvim-theme',
  --   name = 'github-theme',
  --   lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     require('github-theme').setup({
  --       -- ...
  --     })
  --
  --     -- vim.cmd('colorscheme github_dark_colorblind')
  --   end,
  -- },
  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   config = function()
  --     require("rose-pine").setup({
  --       styles = {
  --         transparency = true
  --       },
  --     })
  --     -- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#dddddd" })
  --     -- vim.api.nvim_set_hl(0, "String", { fg = "#4B5320" })
  --   end
  -- },
  {
    "zenbones-theme/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    config = function()
      -- vim.g.zenbones_darken_comments = 45
      vim.cmd.colorscheme('duckbones')
    end
  },
  -- {
  --   "alexxGmZ/e-ink.nvim",
  --   priority = 1000,
  --   config = function()
  --     -- require("e-ink").setup()
  --     -- vim.cmd.colorscheme "e-ink"
  --     -- vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
  --
  --     -- choose light mode or dark mode
  --     -- vim.opt.background = "dark"
  --     vim.opt.background = "light"
  --     --
  --     -- or do
  --     -- :set background=dark
  --     -- :set background=light
  --   end
  -- },
  -- {
  --   "gremble0/yellowbeans.nvim",
  --   priority = 1000, -- Theme should load before most other plugins
  --   config = function()
  --     -- vim.cmd.colorscheme("yellowbeans")
  --   end,
  -- },

  -- {
  --   "savq/melange-nvim",
  --   config = function()
  --     -- vim.cmd.colorscheme("melange")
  --   end,
  -- },

}

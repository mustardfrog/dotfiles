local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- Git related plugins
  --'tpope/vim-fugitive',
  --'tpope/vim-rhubarb',
  {
    'saecki/crates.nvim',
    tag = 'stable',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('crates').setup()
    end,
  },
  'simrat39/rust-tools.nvim',
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
  -- 'scalameta/nvim-metals',
  requires = { "nvim-lua/plenary.nvim" },
  "windwp/nvim-ts-autotag",
  -- 'mfussenegger/nvim-jdtls',
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  -- "zeioth/garbage-day.nvim",
  -- event = "VeryLazy",
  -- opts = {
  --   -- your options here
  -- },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',
      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim',       tag = 'legacy', opts = {} },
      'folke/neodev.nvim',
    },
  },
  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'rafamadriz/friendly-snippets',
    },
  },
  'brenoprata10/nvim-highlight-colors',
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },
  -- 'altermo/nxwm',
  -- "rebelot/kanagawa.nvim",
  -- "rose-pine/neovim",
  'catppuccin/nvim',
  { 'kepano/flexoki-neovim', name = 'flexoki' },
  -- 'navarasu/onedark.nvim',
  -- {
  --   "olimorris/onedarkpro.nvim",
  --   priority = 1000 -- Ensure it loads first
  -- },
  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  -- },
  -- {
  --   "fynnfluegge/monet.nvim",
  --   name = "monet",
  -- },
  -- 'luisiacc/gruvbox-baby',

  -- { "savq/melange-nvim" },
  'folke/tokyonight.nvim',
  -- {
  -- "nyoom-engineering/oxocarbon.nvim",
  --   config = function()
  --   end,
  -- },
  { 'numToStr/Comment.nvim', opts = {} },
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
    },
  },
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },
}, {})

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.hlsearch = false
vim.opt.cmdheight = 2
vim.wo.number = true
vim.opt.relativenumber = true
vim.o.mouse = 'a'
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
-- Sync clipboard between OS and Neovim.
-- vim.o.clipboard = 'unnamedplus'
-- vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.opt.scrolloff = 8
-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 2000
vim.o.completeopt = 'menuone,noselect'
vim.o.termguicolors = true
vim.opt.cursorline = true
vim.opt.showmatch = true
vim.opt.laststatus = 3
vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0
vim.opt.ignorecase = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.foldmethod = "manual"
-- vim.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.wo.signcolumn = 'yes:1'
vim.opt.signcolumn = "no"
-- vim.opt.isfname:append("@-@")
vim.cmd([[
    filetype plugin on
    autocmd BufNewFile,BufRead *.v set ft=v
    autocmd BufNewFile,BufRead *.templ setlocal ft=templ
    " autocmd TermOpen * setlocal nonumber norelativenumber
]])
-- Disable folding in Telescope's result window.
vim.api.nvim_create_autocmd("FileType", { pattern = "TelescopeResults", command = [[setlocal nofoldenable]] })
-- vim.g.codeium_enabled = false
-- vim.opt.colorcolumn = "90"
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et

if vim.g.neovide then
  vim.o.guifont = "Iosevka Comfy Wide:h12"
end

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = "rounded"
  })

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  vim.lsp.handlers.signature_help, {
    border = "rounded"
  })

vim.diagnostic.config {
  float = { border = "rounded" }
}

-- Keybindings
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set({ 'n', 'v' }, "<C-c>", "<ESC>")
vim.keymap.set("i", "<C-L>", "<Del>")
vim.keymap.set("i", "<C-B>", "<Left>")
vim.keymap.set("i", "<C-E>", "<ESC>A")
vim.keymap.set("n", "H", ":bp<CR>")
vim.keymap.set("n", "L", ":bn<CR>")
-- vim.keymap.set("n", "<leader>v", ":Ex<CR>")
vim.keymap.set("n", "<leader>v", ":Neotree toggle position=right<CR>")
vim.keymap.set("n", "<C-j>", ":cnext<CR>zz")
vim.keymap.set("n", "<C-k>", ":cprev<CR>zz")
-- vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true }) -- Remap for dealing with word wrap
-- vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        -- ['<C-u>'] = false,
        -- ['<C-d>'] = false,
      },
    },
    layout_config = {
      vertical = { width = 10.8 },
      preview_width = 60.0,
    },
  },
}

pcall(require('telescope').load_extension, 'fzf')
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader>sb', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('v', '<leader>p', '"+p')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').lsp_references, { desc = '[S]earch [R]eferences' })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>t', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', '<leader>n', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })


require('nvim-highlight-colors').setup {}
local rt = require("rust-tools")
local on_attach = function(_, bufnr)
  local nmap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end
    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
  end

  nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
  nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
  vim.keymap.set("n", "K", rt.hover_actions.hover_actions, { buffer = bufnr })
  vim.keymap.set("n", "<Leader>ca", rt.code_action_group.code_action_group, { buffer = bufnr })
  -- snoremap <silent> <C-d> <cmd>lua require('luasnip').jump(1)<Cr>
  -- snoremap <silent> <C-r> <cmd>lua require('luasnip').jump(-1)<Cr>

  nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
  nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
  nmap('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
  nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
  nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
  nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
  nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
  nmap('<leader>k', vim.lsp.buf.signature_help, 'Signature Documentation')

  nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
  nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
  nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
  nmap('<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, '[W]orkspace [L]ist Folders')
  vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
    vim.lsp.buf.format()
  end, { desc = 'Format current buffer with LSP' })
end

local servers = {
  -- rust_analyzer = {},
  -- ocamllsp = {},
  -- jdtls = {},
  -- volar = {},
  -- clangd = {},
  -- kotlin_language_server = {},
  -- html = { filetypes = { 'html', 'twig', 'hbs'} },
  tailwindcss = {
    filetypes = {
      'templ'
      -- include any other filetypes where you need tailwindcss
    },
    init_options = {
      userLanguages = {
        templ = "html"
      }
    },
  },
  -- htmx_lsp = {
  --   filetypes = {
  --     'templ'
  --     -- include any other filetypes where you need tailwindcss
  --   },
  -- },
  eslint = {
  },

  emmet_language_server = {
    { "astro", "css", "eruby", "html", "htmldjango", "javascriptreact", "less", "pug", "sass", "scss", "svelte", "typescriptreact", "vue", "templ" }
  },
  lua_ls = {
    Lua = {
      workspace = { checkThirdParty = false },
      diagnostics = {
        disable = { "missing-fields" },
      },
      telemetry = { enable = false },
    },
  },
}


local opts = {
  tools = {
    runnables = {
      use_telescope = true,
    },
    inlay_hints = {
      auto = true,
      show_parameter_hints = true,
      parameter_hints_prefix = "",
      other_hints_prefix = "",
    },
  },
  -- all the opts to send to nvim-lspconfig
  -- these override the defaults set by rust-tools.nvim
  -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
  server = {
    -- on_attach is a callback called when the language server attachs to the buffer
    on_attach = on_attach,
    settings = {
      -- to enable rust-analyzer settings visit:
      -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
      ["rust-analyzer"] = {
        -- enable clippy on save
        checkOnSave = {
          command = "clippy",
        },
      },
    },
  },
}


rt.setup({
  opts,
  on_attach = on_attach,
})
-- Setup neovim lua configuration
--
require('neodev').setup()
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
local mason_lspconfig = require 'mason-lspconfig'
mason_lspconfig.setup {
  ensure_installed = vim.tbl_keys(servers),
}
local lspconfig = require('lspconfig')
-- ...
lspconfig.htmx.setup {
  filetypes = {
    "templ"
  },
}
-- local java_config = {
--   cmd = { '/usr/bin/jdtls' },
--   root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
--   capabilities = capabilities,
--   on_attach = on_attach
-- }
--
-- require('jdtls').start_or_attach(java_config)

mason_lspconfig.setup_handlers {
  function(server_name)
    require('lspconfig')[server_name].setup {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = servers[server_name],
      filetypes = (servers[server_name] or {}).filetypes,
    }
  end
}

--
-- vim.api.nvim_set_hl(0, "MyNormal", { bg = "None", fg = "White" })
-- vim.api.nvim_set_hl(0, "MyFloatBorder", { bg = "None", fg = "White" })
-- vim.api.nvim_set_hl(0, "MyCursorLine", { bg = "Red", fg = "Green" })
--
-- vim.api.nvim_set_hl(0, "CmpItemAbbr", { bg = "Red", ctermfg = "White" })
-- vim.api.nvim_set_hl(0, "CmpItemAbbrDefault", { bg = "Red", ctermfg = "White" })
-- vim.api.nvim_set_hl(0, "CmpItemKind", { bg = "None", fg = "#ffffff" })
-- vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { bg = "None", fg = "Red" })
-- vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { bg = "None", fg = "#ffffff" })

local cmp = require 'cmp'
local luasnip = require 'luasnip'
require('luasnip.loaders.from_vscode').lazy_load()
luasnip.config.setup {}

cmp.setup {
  window = {
    completion = cmp.config.window.bordered({
      border = 'rounded',
      scrollbar = false,
      -- winhighlight = "Normal:Pmenu,FloatBorder:MyFloatBorder,CursorLine:Visual,Search:None",
    }),
    documentation = cmp.config.window.bordered()
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert {
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete {},
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_locally_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.locally_jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'path' },
    { name = 'buffer' },
    { name = 'crates' },
  },
}

require('nvim-treesitter.configs').setup {
  autotag = {
    enable = true,
  },
  ensure_installed = { 'c', 'cpp', 'go', 'lua', 'python', 'rust', 'tsx', 'javascript', 'typescript', 'vimdoc', 'vim' },
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true },
  incremental_selection = {
    enable = false,
    keymaps = {
      init_selection = '<Enter>',
      node_incremental = '<Enter>',
      scope_incremental = '<c-s>',
      node_decremental = '<M-space>',
    },
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ['aa'] = '@parameter.outer',
        ['ia'] = '@parameter.inner',
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        [']m'] = '@function.outer',
        [']]'] = '@class.outer',
      },
      goto_next_end = {
        [']M'] = '@function.outer',
        [']['] = '@class.outer',
      },
      goto_previous_start = {
        ['[m'] = '@function.outer',
        ['[['] = '@class.outer',
      },
      goto_previous_end = {
        ['[M'] = '@function.outer',
        ['[]'] = '@class.outer',
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ['<leader>a'] = '@parameter.inner',
      },
      swap_previous = {
        ['<leader>A'] = '@parameter.inner',
      },
    },
  },
}

-- vim.api.nvim_open_win(0, false, { border = "rounded", width = 12, height = 3, relative = 'win', row=3, col=3 })
vim.api.nvim_create_autocmd("BufWritePost", {
  desc = "Save on Format",
  group = vim.api.nvim_create_augroup('format_on_save', { clear = true }),
  -- pattern = { "*.rs", "*.vue", "*.js", "*.ts", "*.ml" },
  pattern = { "*.*" },
  callback = function()
    vim.lsp.buf.format()
  end
})

vim.cmd.colorscheme('flexoki-dark')
-- vim.cmd.background = 'dark'
-- vim.api.nvim_set_hl(0, "Normal", { bg = "None", fg = "#ffffff" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "None", fg = "#ffffff" })
-- vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#ffffff", bg = "None" })
-- vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "None" })
-- vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "None" })
-- vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "None" })
-- vim.api.nvim_set_hl(0, "StatusLine", { bg = "None" })
-- vim.api.nvim_set_hl(0, "Special", { fg = "Nonep })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" })
-- vim.api.nvim_set_hl(0, "LineNr", { bg = "None" })

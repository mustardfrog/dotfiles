require("nvim-treesitter.config").setup({
  ensure_installed = { "typescript", "css", "javascript", "svelte" },
  highlight = { enable = true },
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    'svelte', 'rust',
    'typescript', 'yuck',
    'javascript', 'html',
    'css', 'ron', 'elixir',
    'go', 'react',
    'vue', 'c',
    'cpp', 'odin',
    'zig', 'ocaml',
    'nix'
  },

  callback = function()
    -- syntax highlighting, provided by Neovim
    vim.treesitter.start()
    -- folds, provided by Neovim
    vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    vim.wo.foldmethod = 'expr'
    -- indentation, provided by nvim-treesitter
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})

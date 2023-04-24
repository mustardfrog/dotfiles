  -- Setup nvim-cmp.
  local cmp = require'cmp'
  -- If you want insert `(` after select function or method item
    --local cmp_autopairs = require('nvim-autopairs.completion.cmp')

    -- add a lisp filetype (wrap my-function), FYI: Hardcoded = { "clojure", "clojurescript", "fennel", "janet" }
    --cmp_autopairs.lisp[#cmp_autopairs.lisp+1] = "racket"

  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    mapping = {
      ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
      ['<s-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
      { name = 'nvim_lsp' },
        { name = 'path' },
      { name = 'vsnip' },
      { name = 'buffer', keyword_length = 2 },
    }
  })

    --local capabilities = vim.lsp.protocol.make_client_capabilities()
    --capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
    --
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    local servers  = {"tsserver", "rust_analyzer", "clangd", "pyright", "gopls", "gdscript"}

    for _, server in ipairs(servers) do 

        local on_attach = function(client, bufnr)
          -- Enable completion triggered by <c-x><c-o>
          vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

          -- Mappings.
          -- See `:help vim.lsp.*` for documentation on any of the below functions
          local bufopts = { noremap=true, silent=true, buffer=bufnr }
          vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
          vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
          vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
          vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
          vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
          vim.keymap.set('n', '<leader>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
          end, bufopts)
          vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
          vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
          vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
          vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
          --vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
        end

        require('lspconfig')[server].setup { capabilities = capabilities, on_attach = on_attach}
    end
  
    --require('lspconfig').tsserver.setup{}
        --capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
    --}
  --require('lspconfig').hls.setup{
    --capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    --settings = {
        --haskell = {  formattingProvider = "brittany" ,"--indent=4" }
    --}
--}
    --require'lspconfig'.elixirls.setup{
        -- Unix
        --cmd = { "/home/chaeng/.nix-profile/bin/elixir-ls" };
    --}
  --require('nvim-autopairs').setup{}
  --cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))
    --require('rust-tools').setup({})
  cmp.setup {
  mapping = {
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end
  }
}

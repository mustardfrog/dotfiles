return {
  {
    'neovim/nvim-lspconfig',
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim',          config = true },
      { 'williamboman/mason-lspconfig.nvim' },
      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim',                tag = 'legacy', opts = {} },
      -- {
      --   'folke/neodev.nvim',
      --   config = function()
      --     require('neodev').setup()
      --   end
      -- },
    },
    config = function()
      --   require("customs.lspconfig")

      local on_attach = function(client, bufnr)
        if require("lspconfig").util.root_pattern("deno.json", "deno.jsonc")(vim.fn.getcwd()) then
          if client.name == "tsserver" then
            client.stop()
            return
          end
        end
        local nmap = function(keys, func, desc)
          if desc then
            desc = 'LSP: ' .. desc
          end
          vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
        end

        nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
        nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
        -- vim.keymap.set("n", "K", rt.hover_actions.hover_actions, { buffer = bufnr })
        -- vim.keymap.set("n", "<Leader>ca", rt.code_action_group.code_action_group, { buffer = bufnr })
        -- snoremap <silent> <C-d> <cmd>lua require('luasnip').jump(1)<Cr>
        -- snoremap <silent> <C-r> <cmd>lua require('luasnip').jump(-1)<Cr>

        nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
        nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
        -- nmap('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
        nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
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

      -- local metal = require('metals').bare_config()
      -- metal.on_attach = on_attach

      local servers = {
        -- rust_analyzer = {},
        groovyls = {
          filetypes = { "groovy" },
          settings = {
            groovy = {
              classpath = {
                "/home/chaeng/.sdkman/candidates/groovy/current/lib/",
                "/home/chaeng/.sdkman/candidates/java/current/lib/"
              },
            },
          },
        },
        ocamllsp = {},
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
        -- eslint = {
        -- },

        -- emmet_language_server = {
        --   { "astro", "css", "eruby", "html", "htmldjango", "javascriptreact", "less", "pug", "sass", "scss", "svelte", "typescriptreact", "vue", "templ" }
        -- },
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
            enable = true,
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

      -- rt.setup({
      --   opts,
      --   on_attach = on_attach,
      -- })
      -- Setup neovim lua configuration
      --
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
      local mason_lspconfig = require 'mason-lspconfig'
      mason_lspconfig.setup {
        ensure_installed = vim.tbl_keys(servers),
        automatic_enable = { "denols" }
      }
      local lspconfig = require('lspconfig')
      -- local lspconfig = vim.lsp.config
      lspconfig.tsserver.setup {
        settings = {
          implicitProjectConfiguration = {
            checkJs = true
          },
        },
      }

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
    end,
  }
}

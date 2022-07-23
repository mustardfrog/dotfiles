local nvim_lsp = require'lspconfig'

local opts = {
tools = { -- rust-tools options
    autoSetHints = true,
    hover_with_actions = true,
    inlay_hints = {
        show_parameter_hints = true,
        parameter_hints_prefix = "",
        other_hints_prefix = "",
        parameter_hints_prefix = "<- ",
        other_hints_prefix = "=> ",
        highlight = "Comment",

    },
    runnables = {
        use_telescope = true
    },
    debuggables = {
        use_telescope = true
    },

},

-- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer
    server = {
        -- on_attach is a callback called when the language server attachs to the buffer
        --on_attach = on_attach,
        settings = {
            -- to enable rust-analyzer settings visit:
            -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
            ["rust-analyzer"] = {
                -- enable clippy on save
                  assist = {
                importMergeBehavior = "last",
                importPrefix = "by_self",
              },
              diagnostics = {
                disabled = { "unresolved-import" }
              },
              cargo = {
                  loadOutDirsFromCheck = true
              },
              procMacro = {
                  enable = true
              },
                checkOnSave = {
                    command = "clippy"
                },
            }
        }
    },
}

require('rust-tools').setup(opts)

--" LSP config (the mappings used in the default file don't quite work right)
--nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
--nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
--nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
--nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
--nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
--nnoremap <silent> ga    <cmd>lua vim.lsp.buf.code_action()<CR>
--"autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()
--"nnoremap <silent> <C-K> <cmd>lua vim.lsp.buf.signature_help()<CR>
--nnoremap <silent> g[ <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
--nnoremap <silent> g] <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

--" auto-format
--autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
--autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 100)

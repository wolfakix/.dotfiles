  -- -- Setup nvim-cmp.
  --
local cmp = require'cmp'

cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      end,
    },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          else
            fallback()
          end
        end,
        ["<S-Tab>"] = function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          else
            fallback()
          end
        end,
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp'},
    { name = 'buffer' },
    { name = 'path' },
    { name = 'vsnip' },
  }, {
    { name = 'buffer'},
  })
})

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true
-- require'lspconfig'.cssls.setup {
--   capabilities = capabilities,
-- }
-- require'lspconfig'.tsserver.setup {
--   capabilities = capabilities,
-- }

cmp.setup {
  formatting = {
    format = require("lspkind").cmp_format({with_text = true, menu = ({
        buffer = "[Buffer]",
        nvim_lsp = "[LSP]",
        nvim_lua = "[Lua]",
        latex_symbols = "[Latex]",
      })}),
  },
  experimental = {
    ghost_text = true,
    native_menu = false
  }
}



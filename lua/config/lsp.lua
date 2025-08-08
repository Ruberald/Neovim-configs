-- lua/config/lsp.lua

local on_attach = function(client, bufnr)
  local opts = { buffer = bufnr }
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', 'go', vim.lsp.buf.type_definition, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, opts)
  vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, opts)
  vim.keymap.set({ 'n', 'x' }, '<F3>', function() vim.lsp.buf.format { async = true } end, opts)
  vim.keymap.set('n', '<F4>', vim.lsp.buf.code_action, opts)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('mason').setup()

require('mason-lspconfig').setup({
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
    end,
  }
})

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  float = { border = 'rounded' },
  update_in_insert = false,
  severity_sort = true,
})

local signs = { Error = "✘", Warn = "▲", Hint = "⚑", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end


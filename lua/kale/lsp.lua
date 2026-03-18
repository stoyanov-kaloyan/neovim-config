vim.lsp.config('*', {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
})

--vim.lsp.config('*', {
--  on_attach = function(client, bufnr)
--    vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
--  end,
--})

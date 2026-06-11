local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config('rust_analyzer', {
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    local opts = { noremap = true, silent = true }
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  end,
})

vim.lsp.config('fennel_ls', {
  capabilities = capabilities,
})

vim.lsp.config['ocamllsp'] = {
  cmd = { 'ocamllsp' },
  filetypes = {
    'ocaml',
    'ocaml.interface',
    'ocaml.menhir',
    'ocaml.ocamllex',
    'dune',
    'reason',
  },
  root_markers = {
    { 'dune-project', 'dune-workspace' },
    { '*.opam',       'esy.json',      'package.json' },
    '.git',
  },
}

vim.lsp.enable('fennel_ls')
vim.lsp.enable('ocamllsp')

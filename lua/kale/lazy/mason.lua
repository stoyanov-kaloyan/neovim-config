return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    opts = {
        ensure_installed = { "pyright", "lua_ls", "ts_ls", "rust_analyzer" },
        automati_installation = true,
    }
}
